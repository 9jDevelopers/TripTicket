using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

namespace MSSQLDAL
{
    public class TouristDAL
    {
        //分页
        public DataSet GetModelWithPaging(int pageIndex, int pageSize, out int totalRecords)
        {
            DataSet ds = null;
            totalRecords = 0;
            return ds;
        }

        public bool Login(string LoginName, string Password, ref string ErrorMessage) 
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetStoredProcCommond("sp_Login");
            db.AddInParameter(cmd, "@LoginName", DbType.String, LoginName);
            db.AddInParameter(cmd, "@Password", DbType.String, Password);
            db.AddOutParameter(cmd, "@error_message", DbType.String, 500);
            db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            db.ExecuteNonQuery(cmd);

            ErrorMessage = cmd.Parameters["@error_message"].Value.ToString();

            string result = cmd.Parameters["@retValue"].Value.ToString();

            if (result == "1")
                //登陆成功
                return true;
            else 
                return false;

        }
    }
}
