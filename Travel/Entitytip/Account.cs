using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data;
 using MSSQLDAL;
namespace Entitytip
{
  public  class Account
    {
        public static Account Get(string username )
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Account where username=@LoginName ");
            db.AddInParameter(cmd, "@LoginName", DbType.String, username);
          
            DataTable dt = db.ExecuteDataTable(cmd);


            if (dt.Rows.Count > 0)
            {
                Account a1 = new Account(username, dt.Rows[0]["userpassword"].ToString());
                return a1;

            }
                //登陆成功
               
            else
                return null;
        }
        public static Account Get(string username, string password)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Account where username=@LoginName and userpassword=@Password");
            db.AddInParameter(cmd, "@LoginName", DbType.String, username);
            db.AddInParameter(cmd, "@Password", DbType.String, password);
            //db.AddOutParameter(cmd, "@error_message", DbType.String, 500);
            //db.AddReturnParameter(cmd, "@retValue", DbType.Int32);

            DataTable dt = db.ExecuteDataTable(cmd);

            //ErrorMessage = cmd.Parameters["@error_message"].Value.ToString();



            if (dt.Rows.Count > 0)
                //登陆成功
                return new Account(username);
            else
                return null;
        }
        //用户ID
        public string userID;
        //用户名
        public String username;
        //联系方式
        public int Contact;
        //邮箱
        public String Email;
        //会员
        public int VIP;
        //权限
        public int Privilege;
        //用户密码
        public String userpassward;
        //银行卡号
        public int BankCarDnumber;
        //我的资产
  
        public double MyAssets;

        public Account(string username)
        {
            this.username = username;
        }

        public Account(string username,string password)
        {
            this.username = username;
            this.userpassward = password;
        }
        //评价
        //票
    }
}
