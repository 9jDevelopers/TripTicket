using MSSQLDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entitytip
{
    
    public class Ent
    {
        public string set(int Eid)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Ent where EntID=@EntID");
            db.AddInParameter(cmd, "@EntID", DbType.String, Eid);
            DataTable dt = db.ExecuteDataTable(cmd);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0][0].ToString() + "$" + dt.Rows[0][1].ToString() + "$" + dt.Rows[0][2].ToString() + "$" + dt.Rows[0][3].ToString() + "$" +
                    dt.Rows[0][4].ToString() + "$" + dt.Rows[0][5].ToString() + "$" + dt.Rows[0][6].ToString() + "$" + dt.Rows[0][7].ToString() + "$" +
                    dt.Rows[0][8].ToString();
            }
            else
            {
                return null;
            }
        }

        public int EntID;
        //订单ID
        //预留票信息------
        public DateTime usertime;
        //使用时间
        public string userID;
        //购票人ID
        public string ticketHolder;
        //取票人
        public int passportNO;
        //证件号码
        public int phoneNO;
        //手机号码
    }
}
