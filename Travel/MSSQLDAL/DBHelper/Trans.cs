using System;
using System.Data;
using System.Data.Common;
using System.Configuration;

namespace MSSQLDAL
{
    /// <summary>
    /// 事务
    /// </summary>
    public class Trans : IDisposable
    {
        private DbConnection conn;
        private DbTransaction dbTrans;
        public DbConnection DbConnection
        {
            get { return this.conn; }
        }
        public DbTransaction DbTrans
        {
            get { return this.dbTrans; }
        }

        /// <summary>
        /// 无参构造函数
        /// </summary>
        public Trans()
        {
            conn = DbHelper.CreateConnection();
            conn.Open();
            dbTrans = conn.BeginTransaction();
        }

        /// <summary>
        ///  带参构造函数
        /// </summary>
        /// <param name="connectionString"></param>
        public Trans(string connectionString)
        {
            conn = DbHelper.CreateConnection(connectionString);
            conn.Open();
            dbTrans = conn.BeginTransaction();
        }

        /// <summary>
        /// 提交事务
        /// </summary>
        public void Commit()
        {
            dbTrans.Commit();
            this.Colse();
        }

        /// <summary>
        /// 会滚事务
        /// </summary>
        public void RollBack()
        {
            dbTrans.Rollback();
            this.Colse();
        }

        /// <summary>
        /// 关闭事务
        /// </summary>
        public void Dispose()
        {
            this.Colse();
        }

        /// <summary>
        /// 关闭数据库连接
        /// </summary>
        public void Colse()
        {
            if (conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }
        }
    }
}
