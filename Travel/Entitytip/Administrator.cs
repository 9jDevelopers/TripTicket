using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MSSQLDAL;
using System.Data.Common;

namespace Entitytip
{
    public class Administrator
    {
        public static void  adlogin(string loginname,string password,out bool result,out string addAD,out string addScenic)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Administrator where loginname=@loginname and password=@password");
            db.AddInParameter(cmd, "@loginname", DbType.Int32,loginname);
            db.AddInParameter(cmd, "@password", DbType.Int32,password);
            DataTable dt = db.ExecuteDataTable(cmd);
            //email = dt.Rows[0]["email"].ToString();
            if (dt.Rows.Count > 0)
            {
                result = true;
                addAD = dt.Rows[0]["addAD"].ToString();
                addScenic= dt.Rows[0]["addScenic"].ToString();
            }
            else
            { 
                result =false;
                addAD = "";
                addScenic = "";
            }
        }
    }
}
