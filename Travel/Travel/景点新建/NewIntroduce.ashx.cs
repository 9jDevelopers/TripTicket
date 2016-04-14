using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;

namespace Travel.景点新建
{
    /// <summary>
    /// NewIntroduce 的摘要说明
    /// </summary>
    public class NewIntroduce : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //NewAccount NA = new NewAccount();
            //string name = context.Request.Form["name"];
            //string TravelType = context.Request.Form["TravelType"];
            //string home = context.Request.Form["home"];
            //string time = context.Request.Form["time"];
            //string language = context.Request.Form["language"];
            //string ticketname = context.Request.Form["ticketname"];
            //string ticketmoney = context.Request.Form["ticketmoney"];
            //string TxTmessage = context.Request.Form["TxTmessage"];
            ////调用业务成 通过景点名称 景点类型 创建新景点
            ////调用业务层
            //if(NA.login(name,TravelType))
            //{
            //    context.Response.Write("852");
            //}

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