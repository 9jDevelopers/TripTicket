using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using System.Web.SessionState;

namespace Travel
{
    /// <summary>
    /// ByTkt 的摘要说明
    /// </summary>
    public class ByTkt : IHttpHandler,IRequiresSessionState
    {

        public string tktname;
        public double tktprice;
        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request["action"];
            switch (action)
            {
                case "GetPrice":
                    int tktid = int.Parse(context.Request.Form["SceneID"]);
                    BBuyTicket bbt = new BBuyTicket();
                    string np = bbt.Gettktname(tktid);                    
                    context.Response.Write(np);
                    break;
                case "Set":
                    string ttotal = context.Request.Form["jtotal"];
                    string tnm = context.Request.Form["jnum"];
                    string tname = context.Request.Form["jsticketname"];
                    string pf = context.Request.Form["jsticketprice"];
                    string dt = context.Request.Form["jsdate"];
                    string th = context.Request.Form["jsticketholder"];
                    string icn = context.Request.Form["jsidcardno"];
                    string tn = context.Request.Form["jstelenum"];
                    string sf = context.Request.Form["jssafe"];
                    string uid = context.Session["UID"].ToString();
                    string t = context.Request.Form["t"];
                    string txt;
                    BBuyTicket bbt1 = new BBuyTicket();
                    txt=bbt1.Set(ttotal,tnm,tname, pf, dt, th, icn, tn, sf,uid,t);
                    context.Response.Write(txt);
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