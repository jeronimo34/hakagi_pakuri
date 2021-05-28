
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;

namespace hakagi_pakuri
{
    public class EntityHelper
    {
        public static T GetEntity<T>(XmlNode xmlNode) where T : new()
        {
            T entity = new T();
            foreach (PropertyInfo item in entity.GetType().GetProperties())
            {
                if (xmlNode.Attributes[item.Name] != null && !string.IsNullOrEmpty(xmlNode.Attributes[item.Name].Value))
                {
                    try
                    {
                        if (item.PropertyType.IsEnum)
                        {
                            int enumValue = 0;
                            if (int.TryParse(xmlNode.Attributes[item.Name].Value, out enumValue))
                            {
                                item.SetValue(entity, enumValue, null);
                            }
                        }
                        else
                        {
                            string valueToConvert = string.Empty;
                            if (xmlNode.Attributes[item.Name] != null)
                            {
                                valueToConvert = xmlNode.Attributes[item.Name].Value;
                            }

                            item.SetValue(entity, Convert.ChangeType(valueToConvert, item.PropertyType), null);
                        }
                    }
                    catch
                    { }
                }
            }

            return entity;
        }

        public static T GetEntity<T>(DataRow row) where T : new()
        {
            T entity = new T();
            foreach (PropertyInfo item in entity.GetType().GetProperties())
            {
                if (row.Table.Columns.Contains(item.Name))
                {
                    if (DBNull.Value != row[item.Name])
                    {
                        if (item.PropertyType.IsEnum)
                        {
                            int enumValue = 0;
                            if (int.TryParse(row[item.Name].ToString(), out enumValue))
                            {
                                item.SetValue(entity, enumValue, null);
                            }
                        }
                        else if (item.PropertyType.Name == "TimeSpan")
                        {
                            TimeSpan timespan = new TimeSpan();
                            float timespanf = 0;

                            if (TimeSpan.TryParse(row[item.Name].ToString(), out timespan))
                            {
                                item.SetValue(entity, timespan, null);
                            }
                            else if (float.TryParse(row[item.Name].ToString(), out timespanf))
                            {
                                item.SetValue(entity, TimeSpan.FromDays(timespanf));
                            }
                        }
                        else
                        {
                            item.SetValue(entity, Convert.ChangeType(row[item.Name], item.PropertyType), null);
                        }
                    }

                }
            }

            return entity;
        }

        public static T GetEntity<T>(DataTable table) where T : new()
        {
            if (table.Rows.Count > 0)
            {
                return GetEntity<T>(table.Rows[0]);
            }

            return new T();
        }

        public static IList<T> GetEntities<T>(DataTable table) where T : new()
        {
            IList<T> entities = new List<T>();
            foreach (DataRow row in table.Rows)
            {
                T entity = GetEntity<T>(row);
                entities.Add(entity);
            }
            return entities;
        }

        public static IList<T> GetEntities<T>(XmlNodeList xmlNodeList) where T : new()
        {
            IList<T> entities = new List<T>();
            if (xmlNodeList != null)
            {
                foreach (XmlNode xmlNode in xmlNodeList)
                {
                    T entity = GetEntity<T>(xmlNode);
                    entities.Add(entity);
                }
            }

            return entities;
        }

        public static string GetXML(object entity, bool generateForEmpty = false, bool attributeNode = false, string xmlns = "")
        {
            string result = string.Empty;
            Type entityType = entity.GetType();

            //if (entityType.IsSerializable)
            //{
            //    XmlSerializer xmlSerializer = new XmlSerializer(entityType);

            //    StringBuilder buffer = new StringBuilder();
            //    using (TextWriter writer = new StringWriter(buffer))
            //    {
            //        xmlSerializer.Serialize(writer, entity);
            //    }

            //    result = buffer.ToString();
            //}
            //else
            //{
            PropertyInfo[] properties = entityType.GetProperties();
            if (attributeNode)
            {
                result += string.Format("<{0}{1}>", entityType.Name, string.IsNullOrEmpty(xmlns) ? "" : string.Format(" xmlns=\"{0}\"", xmlns));

                foreach (PropertyInfo property in properties)
                {
                    if (property.CanRead)
                    {
                        result += string.Format("<{0}>", property.Name);
                        object valObj = property.GetValue(entity, null);
                        if (generateForEmpty || (valObj != null && !string.IsNullOrEmpty(valObj.ToString())))
                        {
                            if (property.GetType().Equals(typeof(bool)))
                            {
                                valObj = valObj.ToString().ToLower();
                            }
                            result += string.Format("{0}", valObj);
                            result += string.Format("</{0}>", property.Name);
                        }
                    }
                }
                result += string.Format("</{0}>", entityType.Name);
            }
            else
            {
                result += string.Format("<{0}", entityType.Name);
                foreach (PropertyInfo property in properties)
                {
                    if (property.CanRead)
                    {
                        object valObj = property.GetValue(entity, null);
                        if (generateForEmpty || (valObj != null && !string.IsNullOrEmpty(valObj.ToString())))
                        {
                            if (property.PropertyType.Equals(typeof(Boolean)))
                            {
                                valObj = valObj.ToString().ToLower();
                            }
                            result += string.Format(" {0}=\"{1}\"", property.Name, valObj);
                        }
                    }
                }
                if (!string.IsNullOrEmpty(xmlns))
                {
                    result += string.Format(" xmlns=\"{0}\"", xmlns);
                }
                result += string.Format(" />");
            }

            //}
            return result;
        }

        public static DataTable GetDataTable<T>(T entity, string tableName = "")
        {
            DataTable dataTable = new DataTable(typeof(T).Name);
            if (!string.IsNullOrEmpty(tableName))
            {
                dataTable.TableName = tableName;
            }
            DataRow dataRow = dataTable.NewRow();

            foreach (PropertyInfo propertyInfo in typeof(T).GetProperties())
            {
                dataTable.Columns.Add(new DataColumn(propertyInfo.Name, propertyInfo.PropertyType));
                dataRow[propertyInfo.Name] = propertyInfo.GetValue(entity, null);
            }

            if (dataTable.Rows != null && dataTable.Rows.Count <= 0)
            {
                dataTable.Rows.Add(dataRow);
            }

            return dataTable;
        }

        public static DataTable GetDataTable<T>(List<T> entityList, string tableName = "")
        {
            DataTable dataTable = new DataTable(typeof(T).Name);
            if (!string.IsNullOrEmpty(tableName))
            {
                dataTable.TableName = tableName;
            }
            foreach (PropertyInfo propertyInfo in typeof(T).GetProperties())
            {
                dataTable.Columns.Add(new DataColumn(propertyInfo.Name, propertyInfo.PropertyType));
            }

            foreach (T entity in entityList)
            {
                DataRow dataRow = dataTable.NewRow();
                foreach (PropertyInfo propertyInfo in typeof(T).GetProperties())
                {
                    dataRow[propertyInfo.Name] = propertyInfo.GetValue(entity, null);
                }
                dataTable.Rows.Add(dataRow);
            }

            return dataTable;
        }

        public static object GetProperty<T>(T entity, string propertyName)
        {
            foreach (PropertyInfo propertyInfo in typeof(T).GetProperties())
            {
                if (propertyInfo.Name.Equals(propertyName))
                {
                    return propertyInfo.GetValue(entity, null);
                }
            }

            return null;
        }





        public static bool Equals<T>(T obj1, T obj2)
        {
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(T));

            StringBuilder buffer1 = new StringBuilder();
            StringBuilder buffer2 = new StringBuilder();
            using (TextWriter writer = new StringWriter(buffer1))
            {
                xmlSerializer.Serialize(writer, obj1);
            }
            using (TextWriter writer = new StringWriter(buffer2))
            {
                xmlSerializer.Serialize(writer, obj2);
            }

            return buffer1.ToString().Equals(buffer2.ToString());

        }

        public static T Clone<T>(T entity) where T : new()
        {
            T result = new T();

            foreach (PropertyInfo propertyInfo in typeof(T).GetProperties())
            {
                propertyInfo.SetValue(result, propertyInfo.GetValue(entity, null), null);
            }

            return result;
        }

        public static TChild ChildClone<TParent, TChild>(TParent entity) where TChild : TParent, new()
        {
            TChild result = new TChild();

            foreach (PropertyInfo parentPropertyInfo in typeof(TParent).GetProperties())
            {
                PropertyInfo childPropertyInfo = typeof(TChild).GetProperty(parentPropertyInfo.Name);
                childPropertyInfo.SetValue(result, parentPropertyInfo.GetValue(entity, null), null);
            }

            return result;
        }

        public static List<Tto> ListConvert<Tto, Tfrom>(List<Tfrom> source) where Tto : Tfrom, new()
        {
            List<Tto> result = new List<Tto>();
            if (source != null)
            {
                foreach (Tfrom t2 in source)
                {
                    Tto t1 = ChildClone<Tfrom, Tto>(t2);
                    result.Add(t1);
                }
            }

            return result;
        }

        public static List<T>[] SplitList<T>(List<T> source, int splitSize)
        {
            List<List<T>> result = new List<List<T>>();
            int currentIndex = 0;

            do
            {
                int lengthToCopy = splitSize;
                if (source.Count - currentIndex < splitSize)
                {
                    lengthToCopy = source.Count - currentIndex;
                }

                T[] splitedResult = new T[lengthToCopy];
                source.CopyTo(currentIndex, splitedResult, 0, lengthToCopy);
                currentIndex += lengthToCopy;
                result.Add(new List<T>(splitedResult));

            } while (source.Count > currentIndex);

            return result.ToArray();
        }

    }
}

