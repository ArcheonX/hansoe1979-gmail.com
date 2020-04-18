using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
namespace LDMS.Daos
{
    public class DapperHelper<T>
    {
        private IDbConnection _dbConnection;
        public DapperHelper(IDbConnection dbConnection)
        {
            _dbConnection = dbConnection;
        }
        public List<T> Query(string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return con.Query<T>(sql, param).ToList();
            }
        }
       
        public T QueryFirst(string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                List<T> tempList = con.Query<T>(sql, param).ToList();
                if (tempList != null && tempList.Count > 0)
                {
                    return tempList[0];
                }
                else
                {
                    return default;
                } 
            }
        }
       
        public T QueryFirstOrDefault( string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return con.QueryFirstOrDefault<T>(sql, param);
            }
        }
  
        public T QuerySingle( string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return con.QuerySingle<T>(sql, param);
            }
        }
         
        public bool Exists( string sql, object param = null)
        {
            object obj = ExecuteScalar(sql, param);
            int count = 0;
            if (obj == null)
            {
                count = 0;
            }
            else
            {
                count = Convert.ToInt32(obj);
            }
            if (count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        
        public int RecordCount(string sql, object param = null)
        {
            object obj = ExecuteScalar(sql, param);
            int count = 0;
            if (obj == null)
            {
                count = 0;
            }
            else
            {
                count = Convert.ToInt32(obj);
            }
            return count;
        }
      
        public T QuerySingleOrDefault(string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return con.QuerySingleOrDefault<T>(sql, param);
            }
        }
 
        public int Execute(string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return con.Execute(sql, param);
            }
        }
  
        public IDataReader ExecuteReader( string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return con.ExecuteReader(sql, param);
            }
        }
        #region 
  
        public DataTable ExecuteDataTabel( string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return DataReaderToDataTable(con.ExecuteReader(sql, param));
            }
        }
 
        public DataSet ExecuteDataSet(string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return DataReaderToDataSet(con.ExecuteReader(sql, param));
            }
        }
        /// <summary>
        /// DataReader转DataTable
        /// </summary>
        /// <param name="dataReader"></param>
        /// <returns></returns>
        public DataTable DataReaderToDataTable(IDataReader dataReader)
        {
            DataTable datatable = new DataTable();
            for (int i = 0; i < dataReader.FieldCount; i++)
            {
                DataColumn myDataColumn = new DataColumn();
                myDataColumn.DataType = dataReader.GetFieldType(i);
                myDataColumn.ColumnName = dataReader.GetName(i);
                datatable.Columns.Add(myDataColumn);
            }
            while (dataReader.Read())
            {
                DataRow myDataRow = datatable.NewRow();
                for (int i = 0; i < dataReader.FieldCount; i++)
                {
                    myDataRow[i] = dataReader[i].ToString();
                }
                datatable.Rows.Add(myDataRow);
                myDataRow = null;
            }
            dataReader.Close();
            return datatable;
        }

        public DataSet DataReaderToDataSet(IDataReader dataReader)
        {
            DataSet dataSet = new DataSet();
            do
            {
                DataTable schemaTable = dataReader.GetSchemaTable();
                DataTable dataTable = new DataTable();
                if (schemaTable != null)
                {
                    for (int i = 0; i < schemaTable.Rows.Count; i++)
                    {
                        DataRow dataRow = schemaTable.Rows[i];
                        string columnName = (string)dataRow["ColumnName"];
                        DataColumn column = new DataColumn(columnName, (Type)dataRow["DataType"]);
                        dataTable.Columns.Add(column);
                    }
                    dataSet.Tables.Add(dataTable);
                    while (dataReader.Read())
                    {
                        DataRow dataRow = dataTable.NewRow();
                        for (int i = 0; i < dataReader.FieldCount; i++)
                        {
                            dataRow[i] = dataReader.GetValue(i);
                        }
                        dataTable.Rows.Add(dataRow);
                    }
                }
                else
                {
                    DataColumn column = new DataColumn("RowsAffected");
                    dataTable.Columns.Add(column);
                    dataSet.Tables.Add(dataTable);
                    DataRow dataRow = dataTable.NewRow();
                    dataRow[0] = dataReader.RecordsAffected;
                    dataTable.Rows.Add(dataRow);
                }
            }
            while (dataReader.NextResult());
            return dataSet;
        }
        #endregion
     
        public object ExecuteScalar(string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return con.ExecuteScalar(sql, param);
            }
        }
      
        public T ExecuteScalarT( string sql, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                return con.ExecuteScalar<T>(sql, param);
            }
        }
       
        public List<T> ExecuteStoredProcedure(string proc, object param = null)
        {
            using (IDbConnection con = _dbConnection)
            {
                List<T> list = con.Query<T>(proc,
                    param,
                    null,
                    true,
                    null,
                    CommandType.StoredProcedure).ToList();
                return list;
            }
        }
  
        public int ExecuteTransaction( Dictionary<string, object> dic)
        {
            using (IDbConnection con = _dbConnection)
            {
                using (var transaction = con.BeginTransaction())
                {
                    try
                    {
                        int result = 0;
                        foreach (var sql in dic)
                        {
                            result += con.Execute(sql.Key, sql.Value, transaction);
                        }
                        transaction.Commit();
                        return result;
                    }
                    catch (Exception ex)
                    {
                        transaction.Rollback();
                        return 0;
                    }
                }
            }
        }
        
        public int ExecuteTransaction(string sql, object obj)
        {
            using (IDbConnection con = _dbConnection)
            {
                con.Open();
                using (IDbTransaction transaction = con.BeginTransaction())
                {
                    try
                    {
                        int result = 0;
                        result = con.Execute(sql, obj, transaction);
                        transaction.Commit();
                        con.Close();
                        return result;
                    }
                    catch (Exception ex)
                    {
                        transaction.Rollback();
                        con.Close();
                        return 0;
                    }
                }
            }
        }
       
        public Task<int> ExecuteTransactionAsync(string sql, object obj)
        {
            using (IDbConnection con = _dbConnection)
            {
                con.Open();
                using (IDbTransaction transaction = con.BeginTransaction())
                {
                    try
                    {
                        Task<int> result;
                        result = con.ExecuteAsync(sql, obj, transaction);
                        transaction.Commit();
                        con.Close();
                        return result;
                    }
                    catch (Exception ex)
                    {
                        transaction.Rollback();
                        con.Close();
                        return null;
                    }
                }
            }
        }
    }
}