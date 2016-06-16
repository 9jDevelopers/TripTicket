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


            string MSG = " {\"NSceneName\":\""+a.SceneName+ "\",\"image0\":\""+a.image0+ "\",\"Tickname\":\""+a.Tickname+ "\",\"playtime\":\""+a.playtime+"\",\"language\":\""+a.language+ "\",\"money\":\"" + a.money + "\",\"TeT\":\"" + a.TeT + "\",\"ig1\":\"" + a.ig1 + "\",\"ig2\":\"" + a.ig2 + "\",\"ig3\":\"" + a.ig3 + "\",\"ig4\":\"" + a.ig4 + "\"}";



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