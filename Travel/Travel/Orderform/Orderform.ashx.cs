using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using System.Drawing;
using System.Web.SessionState;

namespace Travel.Orderform
{
    /// <summary>
    /// Orderform 的摘要说明
    /// </summary>
    public class Orderform : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            int count = 0;
            int userID = int.Parse(context.Session["UID"].ToString());
            BOrderform bof = new BOrderform();
            string info = bof.Set(userID, out count);
            string str = info.Remove(0, 4);
            string infomation = "{\"total\":" + count + ",\"rows\":" + str;
            context.Response.Write(infomation);

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