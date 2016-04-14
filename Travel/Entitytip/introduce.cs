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
    public class introduce
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

        public static introduce create(string name,string TravelType,string time,string language, string ticketname,string sicketmoney,string TxTmessage)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("insert into NewIntroduce(name,TravelType,time,language,ticketname,ticketmoney,TxTmessage)values(@name,@TravelType,@time,@language,@ticketname,@ticketmoney,@TxTmessage)");
            db.AddInParameter(cmd,"@name", DbType.String,name);
            db.AddInParameter(cmd, "@TravelType", DbType.String,TravelType);
            db.AddInParameter(cmd, "@time", DbType.String,time);
            db.AddInParameter(cmd, "@language", DbType.String, language);
            db.AddInParameter(cmd, "@ticketname", DbType.String, ticketname);
            db.AddInParameter(cmd, "@ticketmoney", DbType.String, sicketmoney);
            db.AddInParameter(cmd, "@TxTmessage", DbType.String, TxTmessage);
            cmd.Connection.Open();
           
            int result = cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            if(result>0)
            {
                introduce al = new introduce();
                return al;
            }
        
            return null;
            
        }
       

    }
}
