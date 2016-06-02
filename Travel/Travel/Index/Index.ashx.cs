using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;

namespace Travel.Index
{
    /// <summary>
    /// Index1 的摘要说明
    /// </summary>
    public class Index1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            Bgetindexinfo getinfo = new Bgetindexinfo();
            string data = getinfo.bindexinfo();
            context.Response.Write(data);
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