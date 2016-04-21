using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
namespace Travel
{
    /// <summary>
    /// LoginHandler 的摘要说明
    /// </summary>
    public class LoginHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string username = "";
            BLogin bt = new BLogin();
            //BTourist bt = new BTourist();
            string phone = context.Request.Form["phone"];
            string password = context.Request.Form["password"];
            //访问业务层 的验证逻辑 
            bt.Login(phone, password, out username);
            context.Response.Write(username);
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