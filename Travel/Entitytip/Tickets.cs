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
        public Tickets Get(string tktname)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select ticketName from Tickets where ticketID=1");
            //db.AddInParameter(cmd, "", DbType.String, tktname);

            DataTable dt = db.ExecuteDataTable(cmd);


            if (dt.Rows.Count > 0)
            {
                // return new Tickets(tktname);
                return null;

            }
            //登陆成功

            else
            {
                return null;
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
        //public TicketStatus ticketstatus;

    }
}
