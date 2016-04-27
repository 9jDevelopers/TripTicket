using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;

namespace Travel
{
    /// <summary>
    /// ByTkt 的摘要说明
    /// </summary>
    public class ByTkt : IHttpHandler
    {
        public int tktid = 1;

        public double tktprice;
        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request["action"];
            switch (action)
            {
                case "GetPrice":
                    BBuyTicket bbt = new BBuyTicket();
                    string np = bbt.Gettktname(tktid);
                    string[] npArray = np.Split('$');
                    tktprice = double.Parse(npArray[1]);
                    context.Response.Write(tktprice);
                    break;
                case "Set":
                    string tname = context.Request.Form["jsticketname"];
                    string pf = context.Request.Form["jsticketprice"];
                    string dt = context.Request.Form["jsdate"];
                    string th = context.Request.Form["jsticketholder"];
                    string icn = context.Request.Form["jsidcardno"];
                    string tn = context.Request.Form["jstelenum"];
                    string sf = context.Request.Form["jssafe"];
                    BBuyTicket bbt1 = new BBuyTicket();
                    bbt1.Set(tname, pf, dt, th, icn, tn, sf);
                    break;

                default: break;
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