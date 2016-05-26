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
        public static void GetInfo(int phone,out string email,out string username,out string name,out string sex,out string birthday,out string home,out string Photo)
        {//个人信息页面获取数据
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
            Photo = dt.Rows[0]["Photo"].ToString();
        }
        public static void GetEmail(string phone,out string email)
        {
            try
            {
                DbHelper db = new DbHelper();
                DbCommand cmd = db.GetSqlStringCommond("select * from Account where Phone=@p");
                db.AddInParameter(cmd, "@p", DbType.Int32, phone);
                DataTable dt = db.ExecuteDataTable(cmd);
                email = dt.Rows[0]["email"].ToString();
            }
            catch
            {
                email = "";
            }
        }
        public static void Get(string phone, string password,out string username,out string uid)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from Account where Phone=@LoginName and userpassword=@Password");
            db.AddInParameter(cmd, "@LoginName", DbType.String, phone);
            db.AddInParameter(cmd, "@Password", DbType.String, password);
            DataTable dt = db.ExecuteDataTable(cmd);
            if (dt.Rows.Count > 0)
            //登陆成功
            {
                uid= dt.Rows[0]["userID"].ToString();
                username = dt.Rows[0]["username"].ToString();
            }
               
            else
            {
                username = null;
                uid = null;
            }
        }
        public static bool Reg(string phone,string username, string email, string password)
        {//注册页面
            int p = Convert.ToInt32(phone);
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("INSERT INTO Account(Phone,username,email,password) VALUES (@phone,@username,@email,@password)");
            db.AddInParameter(cmd, "@phone", DbType.String,p);
            db.AddInParameter(cmd, "@username", DbType.String, username);
            db.AddInParameter(cmd, "@email", DbType.String, email);
            db.AddInParameter(cmd, "@password", DbType.String, password);
            cmd.Connection.Open();
            int result = cmd.ExecuteNonQuery();
             if(result>0)
            {
                return true;
            }
            else
            { 
                return false;
            }
        }
        public static bool ResetPassword(string phone, string password)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("UPDATE Account SET userpassword=@password WHERE Phone =@phone");
            db.AddInParameter(cmd, "@phone", DbType.Int32, phone);
            db.AddInParameter(cmd, "@password", DbType.String,password);
            cmd.Connection.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static bool EditPI(string phone, string email, string username,string name,string sex,string birthday,string home,string photo)
        {//编辑个人信息
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("UPDATE Account SET email=@email,username =@username,name=@name,sex=@sex,birthday=@birthday,home=@home,Photo=@photo WHERE Phone =@phone");
            db.AddInParameter(cmd, "@phone", DbType.Int32,phone);
            db.AddInParameter(cmd, "@email", DbType.String, email);
            db.AddInParameter(cmd, "@username", DbType.String, username);
            db.AddInParameter(cmd, "@name", DbType.String, name);
            db.AddInParameter(cmd, "@sex", DbType.String,sex);
            db.AddInParameter(cmd, "@birthday", DbType.Date,birthday);
            db.AddInParameter(cmd, "@home", DbType.String, home);
            db.AddInParameter(cmd, "@photo", DbType.String, photo);
            cmd.Connection.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
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
