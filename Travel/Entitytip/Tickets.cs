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
        public string SET(string ticketname, string ticketprice, string date, string ticketholder, string idcardno, string telenum, string safe)
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
            DbCommand cmd = db.GetSqlStringCommond("insert into Tickets values(@TicketNmae,@TicketPrice,@TicketUser ,@TicketUserIDcard,@Phone ,@TicketDate ,@TicketSafe)");
            db.AddInParameter(cmd, "@TicketNmae", DbType.String, ticketname);
            db.AddInParameter(cmd, "@TicketPrice", DbType.String, ticketprice);
            db.AddInParameter(cmd, "@TicketUser", DbType.String, ticketholder);
            db.AddInParameter(cmd, "@TicketUserIDcard", DbType.String, idcardno);
            db.AddInParameter(cmd, "@Phone", DbType.String, telenum);
            db.AddInParameter(cmd, "@TicketDate", DbType.String, date);
            db.AddInParameter(cmd, "@TicketSafe", DbType.String, safetype);
            cmd.Connection.Open();
            int result = cmd.ExecuteNonQuery();
            //DataTable dt = db.ExecuteDataTable(cmd);
            if (result > 0)
            {
                return "购票成功";
            }
            else
            {
                return "购票失败";
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
