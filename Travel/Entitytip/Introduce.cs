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
    public class Introduce
    {
        public static void Give(string SceneID,out string SceneName)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Introduce where SceneID=@SceneID ");
            db.AddInParameter(cmd, "@SceneID", DbType.String, SceneID);

            DataTable dt = db.ExecuteDataTable(cmd);
            SceneName = dt.Rows[0]["SceneName"].ToString();
        }
    }
}
