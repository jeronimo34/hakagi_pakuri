using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hakagi_pakuri
{
    class Program
    {
        
        /// <summary>
        /// https://github.com/syucream/hakagi
        /// ↑の猿真似
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            try
            {
                Console.WriteLine("処理開始");

                string connectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;

                var dao = new DAO(connectionString);

                // スキーマ取得
                Console.WriteLine("スキーマを取得中..." + DateTime.Now.ToString());
                Dictionary<string, List<string>> schemas = dao.FetchSchemas();
                Console.WriteLine("件数："+ schemas.Sum(x => x.Value.Count()));

                // プライマリーキー取得
                Console.WriteLine("プライマリーキーを取得中..." + DateTime.Now.ToString());
                Dictionary<string, List<string>> primaryKeys = dao.FetchPrimaryKeys();
                Console.WriteLine("件数：" + primaryKeys.Sum(x => x.Value.Count()));

                // ルール初期化
                string configFilePath = "./config.json";
                var json = "";
                using (var sr = new StreamReader(configFilePath, System.Text.Encoding.UTF8))
                {
                    json = sr.ReadToEnd();
                }
                Dictionary<string, List<string>> rules = JsonConvert.DeserializeObject<Dictionary<string, List<string>>>(json);

                // 外部キーを推測
                Console.WriteLine("外部キーの推測処理を開始..." + DateTime.Now.ToString());
                List<Constraint> constraints = Guess.GuessConstraints(schemas, primaryKeys, rules);
                Console.WriteLine("件数：" + constraints.Count());

                // Alterクエリ作成
                Console.WriteLine("Alterクエリ作成中..." + DateTime.Now.ToString());
                var alterQuery = Formatter.FormatSql(constraints);

                string outputpath = @"./AddForeignKey.sql";
                File.WriteAllText(outputpath, alterQuery);

                Console.WriteLine(alterQuery);
                Console.WriteLine("処理が正常に完了しました。外部キーを付与するクエリが生成されました。" + DateTime.Now.ToString());
                Console.WriteLine(Path.GetFullPath(outputpath));

            }
            catch (Exception ex) {
                Console.WriteLine("エラーが発生しました。: " + ex.ToString());
            }
            Console.ReadLine();
        }

        public class Constraint
        {
            public string Table { get; set; }
            public string Column { get; set; }
            public string ReferedTable { get; set; }
            public string ReferedColumn { get; set; }
        }

        public class Formatter
        {
            public static string FormatSql(List<Constraint> constraints)
            {
                List<string> queries = new List<string>();

                constraints.ForEach(x =>
                {
                    string s = $"ALTER TABLE {x.Table} ADD CONSTRAINT FK_{x.Table+"_"+x.Column} FOREIGN KEY ({x.Column}) REFERENCES {x.ReferedTable}({x.ReferedColumn});"+Environment.NewLine+"GO";
                    queries.Add(s);
                });

                return string.Join("\n", queries);
            }
        }

        private class DAO
        {
            private DBManager dm;

            public DAO(string connectionString)
            {
                dm = new DBManager(connectionString);
            }

            internal Dictionary<string, List<string>> FetchPrimaryKeys()
            {
                string query = @"
                 select
                    t.name as [Table],
	                c.name as [Column]
                from sys.indexes as i
                    inner join sys.index_columns as ic on i.object_id = ic.object_id and i.index_id = ic.index_id
                    inner join sys.tables as t on t.object_id = i.object_id
                    inner join sys.columns as c on ic.object_id = c.object_id and ic.column_id = c.column_id
	                INNER JOIN sys.key_constraints AS kc ON t.object_id = kc.parent_object_id AND kc.type = 'PK'
                where i.is_primary_key = 1
                order by [Table], [Column]
                ";

                //パラメーター
                var parameters = new Dictionary<string, Object>();
                var dt = dm.ExecuteQueryToDataTable(query, parameters);

                Dictionary<string, List<string>> primaryKeys = new Dictionary<string, List<string>>();

                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        if (primaryKeys.ContainsKey(row["Table"].ToString()))
                        {
                            primaryKeys[row["Table"].ToString()].Add(row["Column"].ToString());
                        }
                        else {
                            primaryKeys[row["Table"].ToString()] = new List<string>();
                            primaryKeys[row["Table"].ToString()].Add(row["Column"].ToString());
                        }
                    }
                }

                return primaryKeys;
            }

            internal Dictionary<string, List<string>> FetchSchemas()
            {
                string query = @"
                SELECT 
                    tbls.name AS [Table]
                    , cols.name AS [Column]
                FROM sys.tables tbls
                INNER JOIN sys.columns cols ON cols.object_id = tbls.object_id
                where tbls.type = 'U'
                ";

                // パラメーター
                var parameters = new Dictionary<string, Object>();
                var dt = dm.ExecuteQueryToDataTable(query, parameters);

                Dictionary<string, List<string>> schemas = new Dictionary<string, List<string>>();

                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        if (schemas.ContainsKey(row["Table"].ToString()))
                        {
                            schemas[row["Table"].ToString()].Add(row["Column"].ToString());
                        }
                        else
                        {
                            schemas[row["Table"].ToString()] = new List<string>();
                            schemas[row["Table"].ToString()].Add(row["Column"].ToString());
                        }
                    }
                }

                return schemas;
            }
        }

        private class Guess
        {
            internal static List<Constraint> GuessConstraints(Dictionary<String, List<String>> schemas, Dictionary<string, List<string>> primaryKeys, Dictionary<string, List<string>> customRules)
            {
                List<Constraint> constraints = new List<Constraint>();

                foreach (KeyValuePair<string, List<string>> schemaKVP in schemas)
                {
                    var tableName = schemaKVP.Key;
                    var columns = schemaKVP.Value;

                    foreach (string columnName in columns)
                    {
                        foreach (KeyValuePair<string, List<string>> pkKVP in primaryKeys)
                        {
                            var pkTable = pkKVP.Key;
                            var pkColumns = pkKVP.Value;

                            if (tableName != pkTable && pkColumns.Count() == 1)
                            {
                                var pkColumnName = pkColumns[0];
                                // 推測
                                if (GuessByTableAndColumn(columnName, tableName, pkColumnName, customRules))
                                {
                                    constraints.Add(new Constraint() { Table = tableName, Column = columnName, ReferedTable = pkTable, ReferedColumn = pkColumnName });
                                }
                            }
                        }
                    }
                }

                return constraints;
            }

            private static bool GuessByTableAndColumn(string columnName, string tableName, string pkColumnName, Dictionary<string, List<string>> customRules)
            {
                // 1
                // columnName = ProductId
                // tableName = Container
                // pkColumnName = ProductId
                if (columnName == pkColumnName) return true;

                // 2
                // columnName = RevOfRcdId
                // tableName = ProductBase
                // pkColumnName = ProductId
                if (columnName == "RevOfRcdId" &&
                    tableName.Contains("Base") &&
                    tableName.Replace("Base","") + "Id" == pkColumnName) return true;

                // 3
                // UserAttribute.ParentId = MfgOrderId
                // UserAttribute.ParentId = ContainerId
                if (customRules.ContainsKey(tableName+"."+columnName) && customRules[tableName + "." + columnName].Contains(pkColumnName)) return true;

                return false;
            }
        }
        
    }
}
