using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using System.Web.SessionState;

namespace Travel
{
    /// <summary>
    /// LoginHandler 的摘要说明
    /// </summary>
    public class LoginHandler : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request.Form["action"];
            switch (action)
            {
                case "Login":
                    string username = "";
                    string uid = "";
                    BLogin bt = new BLogin();
                    //BTourist bt = new BTourist();
                    string phone = context.Request.Form["phone"];
                    string password = context.Request.Form["password"];
                    //访问业务层 的验证逻辑
                    bt.Login(phone, password, out username,out uid);
                    //if (!string.IsNullOrEmpty(username))
                    //{//服务器cookies用法
                    //   //context.Response.Cookies
                    //}
                    
                    if(uid!=null)
                    {
                        context.Session["UID"] = uid;
                        string t = context.Session["UID"].ToString();
                    }
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