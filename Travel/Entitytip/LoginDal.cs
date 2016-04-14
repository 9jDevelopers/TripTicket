using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using System.Data;
namespace MSSQLDAL
{
    public class LoginDal
    {
        public bool Login(string LoginName, string Password)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Account where username=@LoginName and userpassword=@Password");
            db.AddInParameter(cmd, "@LoginName", DbType.String, LoginName);
            db.AddInParameter(cmd, "@Password", DbType.String, Password);
            //db.AddOutParameter(cmd, "@error_message", DbType.String, 500);
            //db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            DataTable dt= db.ExecuteDataTable(cmd);

            //ErrorMessage = cmd.Parameters["@error_message"].Value.ToString();

 

            if (dt.Rows.Count>0)
                //登陆成功
                return true;
            else
                return false;

        }
    }
}
