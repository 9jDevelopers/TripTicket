using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;

namespace Travel.景点介绍
{
    /// <summary>
    /// ReadEva 的摘要说明
    /// </summary>
    public class ReadEva : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string NSceneID = context.Request.Form["a"];
            
            ReadEvaBL getBL = new ReadEvaBL();
            string data = getBL.ReadBL(NSceneID);

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