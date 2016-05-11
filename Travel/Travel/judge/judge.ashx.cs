using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;

namespace Travel.judge
{
    /// <summary>
    /// judge1 的摘要说明
    /// </summary>
    public class judge1 : IHttpHandler
    {
                                             

        public void ProcessRequest(HttpContext context)
        {
            Bjudge bj = new Bjudge();                                    //实体化Bjudge类。
            int jgname = int.Parse(context.Request.Form["jgid"]);        //1.界面交互层

            context.Response.Write(bj.get(jgname));                      //调用BL层带参函数（get（jgname））。

            if(context.Request["Evaluationofgood"] != null)
            {
                string Evaluationofgood = context.Request.Form["Evaluationofgood"];
                string Evaluationservice = context.Request.Form["Evaluationservice"];


                //string userID = context.Request.Form["userID"];
                //string SunPhoto = context.Request.Form["SunPhoto"];
                //string onservice = context.Request.Form["onservice"];
                //string Chaseratings = context.Request.Form["Chaseratings"];
                //string describe = context.Request.Form["describe"];
                //string Sellerservice = context.Request.Form["Sellerservice"];
                //string logisticsservice = context.Request.Form["logisticsservice"];
                //context.Response.Write(Evaluationofgood +Evaluationservice);

                if (bj.ToString(Evaluationofgood, Evaluationservice))
                {
                    context.Response.Write(1);
                }
                else
                {
                    context.Response.Write(0);
                }
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