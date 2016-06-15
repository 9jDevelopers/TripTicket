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
        public DataTable set(int Userid)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Ent where userID=@userID");
            db.AddInParameter(cmd, "@userID", DbType.String, Userid);
            DataTable dt = db.ExecuteDataTable(cmd);
           
            

            return dt;

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
