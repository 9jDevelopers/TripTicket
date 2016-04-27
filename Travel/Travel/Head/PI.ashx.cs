using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;

namespace Travel.Head
{
    /// <summary>
    /// PI1 的摘要说明
    /// </summary>
    public class PI1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string photo;//后期完善
            int phone;
            string email;
            string username;
            string name;
            string sex;
            string birthday;
            string home;
            //phone = "1234567890";
            string t = "1";
            string p = context.Request.Form["phone"];
            phone =Convert.ToInt32(t);
            BGetInfo getif = new BGetInfo();
            getif.BGI(phone, out email, out username, out name, out sex, out birthday, out home);

            string _email="{\"email\":\""+email+"\",";
            string _username = "\"username\":\"" + username + "\",";
            string _name = "\"name\":\"" + name + "\","; ;
            string _sex = "\"sex\":\"" + sex + "\","; ;
            string _birthday = "\"birthday\":\"" + birthday + "\","; ;
            string _home = "\"home\":\"" + home + "\"}"; ;

            context.Response.Write(_email+_username+_name+_sex+_birthday+_home);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}