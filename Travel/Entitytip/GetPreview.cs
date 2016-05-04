using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data;
using MSSQLDAL;

namespace Entitytip
{
    public class GetPreview
    {
        public static void getp(string id,out string name)
        {

            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from NewIntroduce where id=@id");
            db.AddInParameter(cmd, "id", DbType.String, id);

            DataTable dt = db.ExecuteDataTable(cmd);
            name = dt.Rows[0]["name"].ToString();

        }
    }
}
