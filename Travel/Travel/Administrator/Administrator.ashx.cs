using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using System.Web.SessionState;

namespace Travel.Administrator
{
    /// <summary>
    /// Administrator1 的摘要说明
    /// </summary>
    public class Administrator1 : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            string loginname = context.Request.Form["loginname"];
            string password = context.Request.Form["password"];
            bool result;
            string addAD;
            string addScenic;
            BAdministrator bad = new BAdministrator();
            bad.badmin(loginname, password, out result, out addAD, out addScenic);
            if(result)
            {
                addAD= "{\"addAD\":\"" + addAD + "\",";
                addScenic= "\"addScenic\":\"" + addScenic + "\"}";
                context.Session["AID"] =loginname;
                context.Response.Write(addAD+addScenic);
            }
            else
            {
                context.Response.Write("");
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