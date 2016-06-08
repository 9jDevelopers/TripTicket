using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using MSSQLDAL;

namespace Travel.景点介绍
{
    /// <summary>
    /// Introduce 的摘要说明
    /// </summary>
    public class Introduce : IHttpHandler
    {


        public void ProcessRequest(HttpContext context)
        {

            string SceneID = context.Request.Form["zi"];
            IntroduceBL giveme = new IntroduceBL();
            Entitytip.Introduce a = giveme.Message(SceneID);
            
            
            string MSG = " {\"NSceneName\":\""+a.SceneName+ "\",\"NData\":\""+a.Data+ "\",\"NScore\":\""+a.Score+ "\",\"NNumber\":\""+a.Number+"\",\"image0\":\""+a.image0+"\"}";
        


            context.Response.Write(MSG);

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