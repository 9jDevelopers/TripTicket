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
            string phone;
            string email;
            string username;
            string name;
            string sex;
            string birthday;
            string home;
            //phone = "1234567890";
            phone = context.Request.Form["phone"];
            BGetInfo getif = new BGetInfo();
            getif.BGI(phone, out email, out username, out name, out sex, out birthday, out home);
            context.Response.Write("456");
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