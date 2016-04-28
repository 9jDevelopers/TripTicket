using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Travel.Reg
{
    /// <summary>
    /// Reg 的摘要说明
    /// </summary>
    public class Reg : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string phone = context.Request.Form["phone"];
            string email = context.Request.Form["email"];
            string password = context.Request.Form["password"];
            string usename = context.Request.Form["usename"];
            //bool a ;
            //传到BL>ent>sql
            context.Response.Write(usename+phone+email+password);

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