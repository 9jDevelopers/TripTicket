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
            BLogin bt = new BLogin();
            //BTourist bt = new BTourist();
            string username = context.Request.Form["userName"];
            string password = context.Request.Form["passWord"];
            //访问业务层 的验证逻辑 
            if (bt.Login(username, password))
            {
                context.Response.Write("afkasdgkfgdsf");
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