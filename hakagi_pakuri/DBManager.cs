using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
namespace hakagi_pakuri
{
    public class DBManager
    {
        #region public


        /// <summary>
        /// コンストラクタ（DB接続）
        /// <para name="dbServer">DBサーバ名</para>
        /// <para name="DatabaseName">DB名</para>
        /// <para name="dbUser">ユーザ名</para>
        /// <para name="dbPass">パスワード</para>
        /// </summary>
        public DBManager(string connectionString)
        {
            // 接続文字列を生成
            this.connectionString = connectionString;
            /*
            "Data Source = " + hostname
            + ";Initial Catalog = " + dbname
            + ";User ID = " + username
            + ";Password = " + password
            + ";MultipleActiveResultSets=True";*/
        }

        /// <summary>
        /// クエリー実行(OUTPUT項目あり)
        /// <para name="query">SQL文</para>
        /// <para name="paramDict">SQLパラメータ</para>
        /// </summary>
        public SqlDataReader ExecuteQuery(string query, Dictionary<string, Object> paramDict, SqlConnection sqlConnection)
        {
            sqlConnection.Open();
            SqlCommand sqlCom = new SqlCommand
            {
                //クエリー送信先、トランザクションの指定
                Connection = sqlConnection,
                CommandText = query,
            };
            foreach (KeyValuePair<string, Object> item in paramDict)
            {
                sqlCom.Parameters.Add(new SqlParameter(item.Key, item.Value));
            }

            // SQLを実行
            SqlDataReader reader = sqlCom.ExecuteReader();

            return reader;
        }

        public SqlConnection CreateConnection()
        {
            return new SqlConnection(connectionString);
        }

        /// <summary>
        /// クエリー実行(OUTPUT項目あり)非同期実行
        /// <para name="query">SQL文</para>
        /// </summary>
        public DataTable ExecuteQueryToDataTable(string query, Dictionary<string, Object> paramDict)
        {
            //クエリ毎に接続を閉じたほうがいいらしいのでこの形に
            //usingを使用すると処理終了後Disposeしてくれる。
            using (SqlConnection sqlConnection = new SqlConnection(this.connectionString))
            {
                SqlCommand sqlCom = new SqlCommand()
                {
                    //クエリー送信先、トランザクションの指定
                    Connection = sqlConnection,
                    CommandText = query,
                };

                //コネクションを開く
                sqlConnection.Open();

                foreach (KeyValuePair<string, Object> item in paramDict)
                {
                    sqlCom.Parameters.Add(new SqlParameter(item.Key, item.Value));
                }

                SqlDataReader reader = null;
                // SQLを実行
                reader = sqlCom.ExecuteReader();

                DataTable dt = new DataTable();
                dt.Load(reader);

                //リーダーを閉じる
                if (reader != null) reader.Close();

                return dt;
            }
        }

        /// <summary>
        /// クエリー実行(OUTPUT項目なし)
        /// <para name="query">SQL文</para>
        /// <para name="paramDict">SQLパラメータ</para>
        /// </summary>
        public void ExecuteNonQuery(string query, Dictionary<string, Object> paramDict)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                SqlCommand sqlCom = new SqlCommand
                {
                    Connection = sqlConnection,
                    CommandText = query,
                };
                //コネクションを開く
                sqlConnection.Open();

                foreach (KeyValuePair<string, Object> item in paramDict)
                {
                    sqlCom.Parameters.Add(new SqlParameter(item.Key, item.Value));
                }

                // SQLを実行
                sqlCom.ExecuteNonQuery();
            }
        }

        readonly static DateTime MIN_SQL_DATETIME = DateTime.Parse("1/1/1753 12:00:00 AM");
        readonly static DateTime MAX_SQL_DATETIME = DateTime.Parse("12/31/9999 11:59:59 PM");

        public static DateTime ClampDateTime(DateTime dateTime)
        {
            //x = (x < a) ? a : ((x > b) ? b : x);
            return dateTime < MIN_SQL_DATETIME ? MIN_SQL_DATETIME : ((dateTime > MAX_SQL_DATETIME) ? MAX_SQL_DATETIME : dateTime);
        }

        #endregion

        #region private
        private readonly string connectionString;
        #endregion
    }
}
