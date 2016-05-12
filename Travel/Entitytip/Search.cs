using MSSQLDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entitytip
{
    public class Search
    {
        
        public static Search create(string information1,string information2,string information3)
        {
            DbHelper db = new DbHelper();  
            DbCommand cmd = db.GetSqlStringCommond("SELECT TOP 3 * FROM 表 WHERE 列 LIKE '%%' and 列 LIKE '%%'");

            //db.AddInParameter(cmd, "@列", DbType.String, information);

            DataTable dt = db.ExecuteDataTable(cmd);
            information1 = dt.Rows[0]["information1"].ToString();
            information1 = dt.Rows[1]["information1"].ToString();
            information1 = dt.Rows[2]["information1"].ToString();


            return null;
        }
    }
}
