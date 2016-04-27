using BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace Travel.景点新建
{
    /// <summary>
    /// NewIntroduce 的摘要说明
    /// </summary>
    public class NewIntroduce : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
           NEWIntroduceBL NI = new NEWIntroduceBL();

            string name = context.Request.Form["name"];
            string TravelType = context.Request.Form["TravelType"];
            string time = context.Request.Form["time"];
            string language = context.Request.Form["language"];
            string ticketname = context.Request.Form["ticketname"];
            string ticketmoney = context.Request.Form["ticketmoney"];
            string TxTmessage = context.Request.Form["TxTmessage"];

            if (NI.transfer (name, TravelType, time,language, ticketname, ticketmoney, TxTmessage))
             {
                context.Response.Write("name");
            }

            HttpPostedFile postedFile = context.Request.Files[0];
            string savePath = "image/";
            string path = context.Server.MapPath(savePath);

            Random ro = new Random();
            int number = ro.Next(0, 999999999);

            string filename = ".jpg";
            postedFile.SaveAs(path + number + filename);

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