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
        public string image0 = "";
        public string SceneName = "";
        public string Tickname = "";
        public string playtime = "";
        public string language = "";
        public string money = "";
        public string TeT = "";
        public string ig1 = "";
        public string ig2 = "";
        public string ig3 = "";
        public string ig4 = "";


        public static Introduce get(string SceneID)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from TicketType where SceneID=@SceneID ");

            DbCommand cmp = db.GetSqlStringCommond("select *from NewIntroduce where SceneID=@SceneID");
            db.AddInParameter(cmd, "@SceneID", DbType.String, SceneID);
            db.AddInParameter(cmp, "@SceneID", DbType.String, SceneID);
            DataTable dt = db.ExecuteDataTable(cmd);

            DataTable dp = db.ExecuteDataTable(cmp);

            Introduce getmessage = new Introduce();
          
            getmessage.image0 = dp.Rows[0]["image0"].ToString();
            
            getmessage.SceneName =dp.Rows[0]["name"].ToString() ;
            getmessage.Tickname = dt.Rows[0]["ticketname"].ToString();
            getmessage.playtime =dp.Rows[0]["time"].ToString();
            getmessage.language = dp.Rows[0]["language"].ToString();
            getmessage.money = dt.Rows[0]["ticketmoney"].ToString();
            getmessage.TeT = dp.Rows[0]["TxTmessage"].ToString();
            getmessage.ig1 = dp.Rows[0]["image1"].ToString();
            getmessage.ig2 = dp.Rows[0]["image2"].ToString();
            getmessage.ig3 = dp.Rows[0]["image3"].ToString();
            getmessage.ig4 = dp.Rows[0]["image4"].ToString();

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