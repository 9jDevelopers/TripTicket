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

            string action= context.Request.Form["action"];
            if (action== "editpi")
            {
                string phone = context.Request.Form["phone"];
                string email = context.Request.Form["email"];
                string username = context.Request.Form["username"];
                string name = context.Request.Form["textname"];
                string sex = context.Request.Form["sex"];
                string birthday = context.Request.Form["birthday"];
                string home = context.Request.Form["home"];
                analyze(ref email);
                analyze(ref username);
                analyze(ref name);
                analyze(ref sex);
                analyze(ref home);
                EditPI ep = new EditPI();
                if (ep.Beditpi(phone, email, username, name, sex, birthday, home))
                {
                    context.Response.Write(1);
                }
                else
                {
                    context.Response.Write(0);
                }
            }
            if(action=="getinfo")
            {
                string Photo;//后期完善
                int phone;
                string email;
                string username;
                string name; 
                string sex;
                string birthday;
                string home;

                //phone = "1234567890";
                string p = context.Request.Form["phone"];
                phone = Convert.ToInt32(p);
                BGetInfo getif = new BGetInfo();
                getif.BGI(phone, out email, out username, out name, out sex, out birthday, out home,out Photo);
                analyze(ref email);
                analyze(ref username);
                analyze(ref sex);
                analyze(ref name);
                analyze(ref birthday);
                analyze(ref home);
                string _phone = "{\"phone\":\"" + p + "\",";
                string _email = "\"email\":\"" + email + "\",";
                string _username = "\"username\":\"" + username + "\",";
                string _name = "\"name\":\"" + name + "\","; ;
                string _sex = "\"sex\":\"" + sex + "\","; ;
                string _birthday = "\"birthday\":\"" + birthday + "\","; ;
                string _photo = "\"photo\":\"" + Photo + "\","; ; 
                string _home = "\"home\":\"" + home + "\"}"; ;
                context.Response.Write(_phone+_email + _username + _name + _sex + _birthday +_photo +_home); 
            }
        }

        public void analyze(ref string text)
        {
            if(text==null||text=="")
            {
                text = "未设置";
            }
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