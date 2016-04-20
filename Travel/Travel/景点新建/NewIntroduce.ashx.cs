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
      
            string name = context.Request.Form["name"];
            string TravelType = context.Request.Form["TravelType"];
            string time = context.Request.Form["time"];
            string language = context.Request.Form["language"];
            string ticketname = context.Request.Form["ticketname"];
            string ticketmoney = context.Request.Form["ticketmoney"];
            string TxTmessage = context.Request.Form["TxTmessage"];

            //SqlConnection conn = new SqlConnection("Persist Security Info = False; User ID = sa; Initial Catalog = travelweb; Data Source = 192.168.0.109");
            //string strsql = "insert into NewIntroduce(name,TravelType,time,language,ticketname,ticketmoney,TxTmessage)values(@name,@TravelType,@time,@language,@ticketname,@ticketmoney,@TxTmessage)";
            //SqlCommand com = new SqlCommand(strsql, conn);
            //com.Parameters.AddWithValue("@name",name);
            //com.Parameters.AddWithValue("@TravelType",TravelType);
            //com.Parameters.AddWithValue("@time", time);
            //com.Parameters.AddWithValue("@language", language);
            //com.Parameters.AddWithValue("@ticketname", ticketname);
            //com.Parameters.AddWithValue("@ticketmoney", ticketmoney);
            //com.Parameters.AddWithValue("@TxTmessage", TxTmessage);

            //conn.Open();
            //int result = com.ExecuteNonQuery();
            //if (result > 0)
            //{
            //    tip = "数据上传成功，";
            //}
            //else
            //{
            //    tip = "数据上传失败，";
            //}

            //conn.Close();
            //context.Response.Write(tip);
            //调用业务成 通过景点名称 景点类型 创建新景点
            NEWIntroduceBL CZ = new NEWIntroduceBL();
            if (CZ.transfer(name, TravelType, time, language, ticketname, ticketmoney, TxTmessage))
            {
                context.Response.Write("添加完成");
            }

            //调用业务层


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