using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;

namespace Travel.GetPassword
{
    /// <summary>
    /// getpassword 的摘要说明
    /// </summary>
    public class getpassword : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request.Form["action"];
            if(action=="getemail")
            { 
                string email;
                string phone=context.Request.Form["phone"];
                BGetEmail bge = new BGetEmail();
                bge.BGE(phone, out email);
                if(email==""||email==null)
                {
                    context.Response.Write("");
                }
                else
                {
                    Random rad = new Random();
                    int number = rad.Next(0,99999999); 
                    context.Response.Write(number);
                }
            }//得到邮箱
            if(action== "resetpwd")
            {
                string phone = context.Request.Form["phone"];
                string password = context.Request.Form["password"];
                context.Response.Write(phone + password);
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