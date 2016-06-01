using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;

namespace Travel.景点介绍
{
    /// <summary>
    /// Introduce 的摘要说明
    /// </summary>
    public class Introduce : IHttpHandler
    {
        public string SceneName;
        public string Data;
        public string Score;
        public string Number;

        public void ProcessRequest(HttpContext context)
        {
            //string SceneID =context.Request.Form["selectID"];
            string SceneID = "2";
            IntroduceBL giveme = new IntroduceBL();

            giveme.Message(SceneID, out SceneName, out Data, out Score, out Number);
            //context.Response.Write("Hello World");
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