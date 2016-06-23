using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

//Business Layer====>BL
namespace Entitytip
{
    public class Tickets
    {

        public string Get(int Eid)
        {

            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select ticketName,ticketmoney from TicketType where SceneID=@SceneID");
            db.AddInParameter(cmd, "@SceneID", DbType.String, Eid);
            DataTable dt = db.ExecuteDataTable(cmd);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0][0].ToString() + "$" + dt.Rows[0][1].ToString();
            }
            else
            {
                return null;
            }
        }
        //insert into Ent values(@EntID, @Usertime, @userID, @TicketBuyer, @Entname, @Num, @Price, @Status, @Buytime)
        public string SET(string total,string num,string ticketname, string ticketprice, string date, string ticketholder, string idcardno, string telenum, string safe,string userid,string wait)
        {

            string safetype;
            if (int.Parse(safe) > 0 && int.Parse(safe) < 6)
            {
                safetype = "1";
            }
            else
            {
                safetype = "2";
            }

            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("insert into Tickets values(@TicketNmae,@TicketPrice,@TicketUser ,@TicketUserIDcard,@Phone ,@TicketDate ,@TicketSafe,@userID)");
            db.AddInParameter(cmd, "@TicketNmae", DbType.String, ticketname);
            db.AddInParameter(cmd, "@TicketPrice", DbType.String, ticketprice);
            db.AddInParameter(cmd, "@TicketUser", DbType.String, ticketholder);
            db.AddInParameter(cmd, "@TicketUserIDcard", DbType.String, idcardno);
            db.AddInParameter(cmd, "@Phone", DbType.String, telenum);
            db.AddInParameter(cmd, "@TicketDate", DbType.String, date);
            db.AddInParameter(cmd, "@TicketSafe", DbType.String, safetype);
            db.AddInParameter(cmd, "@userID", DbType.String, userid);
            try

            {
                int result = db.ExecuteNonQuery(cmd);
                if (result > 0)
                {
                    string dtnow = DateTime.Now.ToShortDateString().ToString();
                    DbHelper dbh = new DbHelper();
                    DbCommand comd = db.GetSqlStringCommond("insert into Ent values(@Usertime, @userID, @TicketBuyer, @Entname, @Num, @Price, @Status, @Buytime)");

                    db.AddInParameter(comd, "@Usertime", DbType.String, date);
                    db.AddInParameter(comd, "@userID", DbType.String, userid);
                    db.AddInParameter(comd, "@TicketBuyer", DbType.String, ticketholder);
                    db.AddInParameter(comd, "@Entname", DbType.String, ticketname);
                    db.AddInParameter(comd, "@Num", DbType.String, num);
                    db.AddInParameter(comd, "@Price", DbType.String, total);
                    db.AddInParameter(comd, "@Status", DbType.String, wait);
                    db.AddInParameter(comd, "@Buytime", DbType.String, dtnow);
                    int dt = db.ExecuteNonQuery(comd);
                    string rttxt="";
                    if (wait == "待评价")
                    {
                        rttxt= "购票成功";
                    }
                    else if (wait == "未付款")
                    {
                        rttxt= "已生成订单，请在3天内完成支付";
                    }
                    return "操作完成,"+rttxt;
                }
                else
                {
                    return "购票失败";
                }
            }

            finally
            {
                cmd.Connection.Close();
                //DataTable dt = db.ExecuteDataTable(cmd);

            }
        }
        //票id
        public int ticketID;
        //票名称
        public string ticketName;
        //票价
        public double ticketPrice;
        //使用人
        public string ticketUser;
        //使用人证件号
        public int ticketUserIDcard;
        //使用日期
        public DateTime ticketDate;
        //是否购保险
        public bool ticketSafe;
        //票状态
        public TicketStatus ticketstatus;

    }
}
