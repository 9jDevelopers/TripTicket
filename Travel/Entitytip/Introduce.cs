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
        public string SceneName = "";
        public string Data = "";
        public string Score = "";
        public string Number = "";
        public static Introduce get(string SceneID)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Introduce where SceneID=@SceneID ");
            db.AddInParameter(cmd, "@SceneID", DbType.String, SceneID);
            DataTable dt = db.ExecuteDataTable(cmd);

            Introduce getmessage = new Introduce();

            getmessage.SceneName = dt.Rows[0]["SceneName"].ToString();
            getmessage.Data = dt.Rows[0]["Data"].ToString();
            getmessage.Score = dt.Rows[0]["Score"].ToString();
            getmessage.Number = dt.Rows[0]["Number"].ToString();

            return getmessage;

        }
    }
}
//if (dt.Rows.Count > 0)
//{
//    string jsonName = " ";
//    string a = DataTableConvertJson.DataTableToJson(jsonName, dt);

//    string str = a.Remove(0, 5);
//    int i = str.Length;
//    string str2 = str.Remove(i - 1);
//}