using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
namespace Travel.Orderform
{
    /// <summary>
    /// Orderform 的摘要说明
    /// </summary>
    public class Orderform : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int EntID = int.Parse(context.Request.Form["eid"]);
            BOrderform bof = new BOrderform();
            string info = bof.Set(EntID);
            string[] str = info.Split('$');

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