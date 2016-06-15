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
            DbCommand cmd = db.GetSqlStringCommond("select ticketName,ticketPrice from TicketType where TicketTypeID=@ticketID");
            db.AddInParameter(cmd, "@ticketID", DbType.String, Eid);
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
        public string SET(int num,string ticketname, string ticketprice, string date, string ticketholder, string idcardno, string telenum, string safe,string userid)
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
                cmd.Connection.Open();
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    string dtnow = DateTime.Now.ToShortDateString().ToString();
                    DbHelper dbh = new DbHelper();
                    DbCommand comd = db.GetSqlStringCommond("insert into Ent values(@EntID, @Usertime, @userID, @TicketBuyer, @Entname, @Num, @Price, @Status, @Buytime)");
                    db.AddInParameter(cmd, "@Buytime", DbType.String, dtnow);
                    db.AddInParameter(cmd, "@Usertime", DbType.String, date);
                    db.AddInParameter(cmd, "@userID", DbType.String, 2);
                    db.AddInParameter(cmd, "@TicketBuyer", DbType.String, ticketholder);
                    db.AddInParameter(cmd, "@Entname", DbType.String, ticketname);
                    db.AddInParameter(cmd, "@Num", DbType.String, num);
                    db.AddInParameter(cmd, "@Price", DbType.String, ticketprice);
                    db.AddInParameter(cmd, "@Status", DbType.String, "待评价");
                    DataTable dt = db.ExecuteDataTable(cmd);
                    return "购票成功";

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
