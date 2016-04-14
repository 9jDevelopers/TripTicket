using System;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;

namespace MSSQLDAL
{
    /// <summary>
    /// 抽象工厂模式下的数据库操作类，适用于.NET 所支持的全部数据库
    /// </summary>
    public class DbHelper
    {
        //用于指示具体使用的数据库类型
        private static string dbProviderName = ConfigurationManager.AppSettings["DbHelperProvider"];
        //数据库连接字符串
        private static string dbConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        //数据库连接对象
        private DbConnection connection;

        /// <summary>
        /// 构造函数
        /// </summary>
        public DbHelper()
        {
            this.connection = CreateConnection(DbHelper.dbConnectionString);
        }

        /// <summary>
        /// 构造函数(带数据库连接字符串参数)
        /// </summary>
        /// <param name="connectionString">web.config 中读取连接字符串</param>
        public DbHelper(string connectionString)
        {
            this.connection = CreateConnection(connectionString);
        }

        /// <summary>
        /// 创建并返回数据库连接对象
        /// </summary>
        /// <returns>connection 对象</returns>
        public static DbConnection CreateConnection()
        {
            DbProviderFactory dbfactory = DbProviderFactories.GetFactory(DbHelper.dbProviderName);
            DbConnection dbconn = dbfactory.CreateConnection();
            dbconn.ConnectionString = DbHelper.dbConnectionString;
            return dbconn;
        }
        /// <summary>
        /// 创建并返回数据库连接对象(带数据库连接字符串参数)
        /// </summary>
        /// <param name="connectionString">数据库连接字符串</param>
        /// <returns>connection 对象</returns>
        public static DbConnection CreateConnection(string connectionString)
        {
            DbProviderFactory dbfactory = DbProviderFactories.GetFactory(DbHelper.dbProviderName);
            DbConnection dbconn = dbfactory.CreateConnection();
            dbconn.ConnectionString = connectionString;
            return dbconn;
        }

        /// <summary>
        /// 执行存储过程，并返回commnad对象
        /// </summary>
        /// <param name="storedProcedure">存储过程名</param>
        /// <returns>cmd对象</returns>
        public DbCommand GetStoredProcCommond(string storedProcedure)
        {
            DbCommand dbCommand = connection.CreateCommand();
            dbCommand.CommandText = storedProcedure;
            dbCommand.CommandType = CommandType.StoredProcedure;
            return dbCommand;
        }

        /// <summary>
        /// 执行SQL语句，并返回commnad对象
        /// </summary>
        /// <param name="sqlQuery">sql 语句</param>
        /// <returns>cmd对象</returns>
        public DbCommand GetSqlStringCommond(string sqlQuery)
        {
            DbCommand dbCommand = connection.CreateCommand();
            dbCommand.CommandText = sqlQuery;
            dbCommand.CommandType = CommandType.Text;
            return dbCommand;
        }

        #region 增加参数

        /// <summary>
        /// 为command对象添加参数集合
        /// </summary>
        /// <param name="cmd">cmd对象</param>
        /// <param name="dbParameterCollection">参数集合</param>
        public void AddParameterCollection(DbCommand cmd, DbParameterCollection dbParameterCollection)
        {
            foreach (DbParameter dbParameter in dbParameterCollection)
            {
                cmd.Parameters.Add(dbParameter);
            }
        }

        /// <summary>
        /// 为command 对象添加输出参数
        /// </summary>
        /// <param name="cmd">cmd对象</param>
        /// <param name="parameterName">输出参数名</param>
        /// <param name="dbType">输出参数数据类型</param>
        /// <param name="size">输出参数size</param>
        public void AddOutParameter(DbCommand cmd, string parameterName, DbType dbType, int size)
        {
            DbParameter dbParameter = cmd.CreateParameter();
            dbParameter.DbType = dbType;
            dbParameter.ParameterName = parameterName;
            dbParameter.Size = size;
            dbParameter.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(dbParameter);
        }

        /// <summary>
        /// 为command对象添加单个输入参数
        /// </summary>
        /// <param name="cmd">cmd对象</param>
        /// <param name="parameterName">输入参数名</param>
        /// <param name="dbType">输入参数数据类型</param>
        /// <param name="value">输入参数值</param>
        public void AddInParameter(DbCommand cmd, string parameterName, DbType dbType, object value)
        {
            DbParameter dbParameter = cmd.CreateParameter();
            dbParameter.DbType = dbType;
            dbParameter.ParameterName = parameterName;
            dbParameter.Value = value;
            dbParameter.Direction = ParameterDirection.Input;
            cmd.Parameters.Add(dbParameter);
        }

        /// <summary>
        /// 获取返回值
        /// </summary>
        /// <param name="cmd">cmd对象</param>
        /// <param name="parameterName">参数名</param>
        /// <param name="dbType">参数数据类型</param>
        public void AddReturnParameter(DbCommand cmd, string parameterName, DbType dbType)
        {
            DbParameter dbParameter = cmd.CreateParameter();
            dbParameter.DbType = dbType;
            dbParameter.ParameterName = parameterName;
            dbParameter.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(dbParameter);
        }

        /// <summary>
        /// 获取参数集合
        /// </summary>
        /// <param name="cmd">cmd对象</param>
        /// <param name="parameterName">参数名</param>
        /// <returns>参数集合</returns>
        public DbParameter GetParameter(DbCommand cmd, string parameterName)
        {
            return cmd.Parameters[parameterName];
        }

        #endregion

        #region 执行
        /// <summary>
        /// 返回数据集
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public DataSet ExecuteDataSet(DbCommand cmd)
        {
            DbProviderFactory dbfactory = DbProviderFactories.GetFactory(DbHelper.dbProviderName);
            DbDataAdapter dbDataAdapter = dbfactory.CreateDataAdapter();
            dbDataAdapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            dbDataAdapter.Fill(ds);
            return ds;
        }

        /// <summary>
        /// 返回数据表
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public DataTable ExecuteDataTable(DbCommand cmd)
        {
            DbProviderFactory dbfactory = DbProviderFactories.GetFactory(DbHelper.dbProviderName);
            DbDataAdapter dbDataAdapter = dbfactory.CreateDataAdapter();
            dbDataAdapter.SelectCommand = cmd;
            DataTable dataTable = new DataTable();
            dbDataAdapter.Fill(dataTable);
            return dataTable;
        }

        /// <summary>
        /// 返回数据阅读器
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public DbDataReader ExecuteReader(DbCommand cmd)
        {
            cmd.Connection.Open();
            DbDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return reader;
        }

        /// <summary>
        /// 直接执行inser,update,delete
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public int ExecuteNonQuery(DbCommand cmd)
        {
            cmd.Connection.Open();
            int ret = cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            return ret;
        }

        

        /// 执行非查找存储过程和SQL语句
        /// 增、删、改
        /// </summary>
        /// <param name="strSQL">要执行的SQL语句</param>
        /// <param name="paras">参数列表，没有参数填入null</param>
        /// <param name="cmdType">Command类型</param>
        /// <returns>返回影响行数</returns>
        /// 
        public int ExcuteProc(string ProcName, SqlParameter[] pars)
        {
            return ExcuteSQL(ProcName, pars, CommandType.StoredProcedure);
        }

        public static int ExcuteSQL(string strSQL, SqlParameter[] paras, CommandType cmdType)
        {
            int i = 0;
            using (SqlConnection conn = new SqlConnection(DbHelper.dbConnectionString))
            {
                SqlCommand cmd = new SqlCommand(strSQL, conn);
                cmd.CommandType = cmdType;
                if (paras != null)
                {
                    cmd.Parameters.AddRange(paras);
                }
                conn.Open();
                i = cmd.ExecuteNonQuery();
                conn.Close();
            }
            return i;

        } 

        /// <summary>
        /// 直接执行inser,update,delete，并返回首行首列
        /// </summary>
        /// <param name="cmd"></param>
        /// <returns></returns>
        public object ExecuteScalar(DbCommand cmd)
        {
            cmd.Connection.Open();
            object ret = cmd.ExecuteScalar();
            cmd.Connection.Close();
            return ret;
        }
        #endregion

        #region 执行事务
        /// <summary>
        /// 通过事务返回数据集
        /// </summary>
        /// <param name="cmd"></param>
        /// <param name="t"></param>
        /// <returns></returns>
        public DataSet ExecuteDataSet(DbCommand cmd, Trans t)
        {
            cmd.Connection = t.DbConnection;
            cmd.Transaction = t.DbTrans;
            DbProviderFactory dbfactory = DbProviderFactories.GetFactory(DbHelper.dbProviderName);
            DbDataAdapter dbDataAdapter = dbfactory.CreateDataAdapter();
            dbDataAdapter.SelectCommand = cmd;
            DataSet ds = new DataSet();
            dbDataAdapter.Fill(ds);
            return ds;
        }

        /// <summary>
        /// 通过事务返回数据表
        /// </summary>
        /// <param name="cmd"></param>
        /// <param name="t"></param>
        /// <returns></returns>
        public DataTable ExecuteDataTable(DbCommand cmd, Trans t)
        {
            cmd.Connection = t.DbConnection;
            cmd.Transaction = t.DbTrans;
            DbProviderFactory dbfactory = DbProviderFactories.GetFactory(DbHelper.dbProviderName);
            DbDataAdapter dbDataAdapter = dbfactory.CreateDataAdapter();
            dbDataAdapter.SelectCommand = cmd;
            DataTable dataTable = new DataTable();
            dbDataAdapter.Fill(dataTable);
            return dataTable;
        }

        /// <summary>
        /// 通过事务返回数据阅读器
        /// </summary>
        /// <param name="cmd"></param>
        /// <param name="t"></param>
        /// <returns></returns>
        public DbDataReader ExecuteReader(DbCommand cmd, Trans t)
        {
            cmd.Connection.Close();
            cmd.Connection = t.DbConnection;
            cmd.Transaction = t.DbTrans;
            DbDataReader reader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            return reader;
        }

        /// <summary>
        ///  通过事务直接执行delete, update,insert 
        /// </summary>
        /// <param name="cmd"></param>
        /// <param name="t"></param>
        /// <returns></returns>
        public int ExecuteNonQuery(DbCommand cmd, Trans t)
        {
            cmd.Connection.Close();
            cmd.Connection = t.DbConnection;
            cmd.Transaction = t.DbTrans;
            int ret = cmd.ExecuteNonQuery();
            return ret;
        }

        /// <summary>
        /// 通过事务直接执行delete, update,insert ，并返回首行首列
        /// </summary>
        /// <param name="cmd"></param>
        /// <param name="t"></param>
        /// <returns></returns>
        public object ExecuteScalar(DbCommand cmd, Trans t)
        {
            cmd.Connection.Close();
            cmd.Connection = t.DbConnection;
            cmd.Transaction = t.DbTrans;
            object ret = cmd.ExecuteScalar();
            return ret;
        }
        #endregion
    }
}
