using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using MSSQLDAL;
using System.Data;
namespace Entitytip
{
    public class Introduce
    {

        //景点ID
        public string sceneID;
        //景点名称
        public string SceneName;
        //景点
        public string TravelType;

        //销售数据
        public char Data;
        //评分
        public char score;
        //评分人数
        public int number;
        

        public SceceType Stype;
        
        public static Introduce create(string ID)
        {
            //DbHelper db = new DbHelper();
            //DbCommand cmd = db.GetSqlStringCommond("select * form Introduce where ID=@ID");
            //db.AddInParameter(cmd, "@ID",DbType.String,ID);
            //DataTable dt = db.ExecuteDataTable(cmd);
            //if (dt.Rows.Count > 0)
            //    return new Introduce();
            //else
            return null;
        }
            
        public static void Give(string ID, string SceneName)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Introduce where SceneID=@SceneID");
            db.AddInParameter(cmd, "@SceneID", DbType.String,ID);

            DataTable dt = db.ExecuteDataTable(cmd);
            SceneName = dt.Rows[0]["SceneName"].ToString();
        }
    }
}
