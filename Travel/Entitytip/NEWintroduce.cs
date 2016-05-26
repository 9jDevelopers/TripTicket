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
    public class NEWintroduce
    {

        //景点ID
        public string sceneID;
        //景点名称
        public string sceneName;
        //景点
        public string TravelType;

        //销售数据
        public char Data;
        //评分
        public char score;
        //评分人数
        public int number;
        

        public SceceType Stype;

        public static NEWintroduce create(string English,string name,string TravelType,string time,string language, string ticketname,string sicketmoney,string TxTmessage,string image1, string image2, string image3, string image4,string AdminID)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("insert into NewIntroduce(SceneID,name,TravelType,time,language,TxTmessage,image1,image2,image3,image4,AdminID)values(@SceneID,@name,@TravelType,@time,@language,@TxTmessage,@image1,@image2,@image3,@image4,@AdminID)");
            
            db.AddInParameter(cmd, "@SceneID",DbType.String,English);
            db.AddInParameter(cmd,"@name", DbType.String,name);
            db.AddInParameter(cmd, "@TravelType", DbType.String,TravelType);
            db.AddInParameter(cmd, "@time", DbType.String,time);
            db.AddInParameter(cmd, "@language", DbType.String, language);
            db.AddInParameter(cmd, "@TxTmessage", DbType.String, TxTmessage);
            db.AddInParameter(cmd, "@image1", DbType.String, image1);
            db.AddInParameter(cmd, "@image2", DbType.String, image2);
            db.AddInParameter(cmd, "@image3", DbType.String, image3);
            db.AddInParameter(cmd, "@image4", DbType.String, image4);
            db.AddInParameter(cmd, "@AdminID", DbType.Int32, AdminID);

            DbCommand cmT = db.GetSqlStringCommond("insert into TicketType(SceneID,ticketname,ticketmoney)values(@SceneID,@ticketmoney,@ticketname)");
            db.AddInParameter(cmT, "@SceneID", DbType.String, English);
            db.AddInParameter(cmT, "@ticketname", DbType.String, ticketname);
            db.AddInParameter(cmT, "@ticketmoney", DbType.String, sicketmoney);

            cmd.Connection.Open();
           
            int result = cmd.ExecuteNonQuery();
            int result2 = cmT.ExecuteNonQuery();
            cmd.Connection.Close();
            if(result>0&&result2>0)
            {
                NEWintroduce al = new NEWintroduce();
                return al;
            }
        
            return null;
            
        }
       

    }
}
