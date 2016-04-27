using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using System.Data.Common;
using System.Data;

namespace Entitytip
{
    public class judgeing
    {
        public string GET(int id)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select TicketName from Tickets where TicketID=@TicketID");
            db.AddInParameter(cmd, "@TicketID", DbType.String, id);
            DataTable dt = db.ExecuteDataTable(cmd);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0][0].ToString();
            }
            else
            {
                return null;
            }
        }
        public string userID;
        public string Evaluationofgood;           //评价商品
        public string Evaluationservice;          //评价服务
        public string SunPhoto;                   //晒照片
        public string onservice;                  //关于服务
        public string Chaseratings;               //追评
        public string describe;                   //描述
        public string Sellerservice;              //卖家服务
        public string logisticsservice;           //物流服务
    }
}
