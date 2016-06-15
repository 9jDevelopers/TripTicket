using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using System.Drawing;

namespace Travel.Orderform
{
    /// <summary>
    /// Orderform 的摘要说明
    /// </summary>
    public class Orderform : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int userID = int.Parse(context.Request.Form["eid"]);
            BOrderform bof = new BOrderform();
            string info = bof.Set(userID);
            string str = info.Remove(0, 4);
            
            string infomation = "{\"total\":28,\"rows\":" + str ;
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