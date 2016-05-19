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
        public static void getp(string SceneID, out string name)
        {

            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from NewIntroduce where SceneID=@SceneID");
            db.AddInParameter(cmd, "SceneID", DbType.String, SceneID);

            DataTable dt = db.ExecuteDataTable(cmd);
            name = dt.Rows[0]["name"].ToString();
        }
    }
}
