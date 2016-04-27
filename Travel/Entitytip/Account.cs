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
        public static void GetInfo(int phone,out string email,out string username,out string name,out string sex,out string birthday,out string home)
        {
            int p = phone;
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Account where Phone=@p");
            db.AddInParameter(cmd, "@p", DbType.Int32, p);

            DataTable dt = db.ExecuteDataTable(cmd);
            email = dt.Rows[0]["email"].ToString();
            username = dt.Rows[0]["username"].ToString();
            name = dt.Rows[0]["name"].ToString();
            sex = dt.Rows[0]["sex"].ToString();
            birthday = dt.Rows[0]["birthday"].ToString();
            home = dt.Rows[0]["home"].ToString();



        }
        public static void Get(string phone, string password,out string username)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Account where username=@LoginName and userpassword=@Password");
            db.AddInParameter(cmd, "@LoginName", DbType.String, phone);
            db.AddInParameter(cmd, "@Password", DbType.String, password);
            DataTable dt = db.ExecuteDataTable(cmd);
            if (dt.Rows.Count > 0)
                //登陆成功
                username = dt.Rows[0]["username"].ToString();
            else
                username = null;
        }
        //用户ID
        public string userID;
        //用户名 昵称
        public String username;
        //联系方式 手机号 登录名
        public int Phone;
        //邮箱
        public String Email;
        //姓名
        public string name;
        //性别
        public string sex;
        //生日
        public DateTime birthday;
        //常住城市
        public string home;
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
