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
            string action = context.Request.Form["action"];
            switch (action)
            {
                case "Login":
                    string username = "";
                    BLogin bt = new BLogin();
                    //BTourist bt = new BTourist();
                    string phone = context.Request.Form["phone"];
                    string password = context.Request.Form["password"];
                    //访问业务层 的验证逻辑 
                    bt.Login(phone, password, out username);
                    //if (!string.IsNullOrEmpty(username))
                    //{
                    //   //context.Response.Cookies
                    //}
                    context.Response.Write(username);
                    break;
                case "GetUsername":
                    break;
                default: break;



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