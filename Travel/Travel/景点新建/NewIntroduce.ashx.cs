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
            

            string acction = context.Request.Form["shuju"];
            if (acction =="newshuju") {
                //传数据
                NEWIntroduceBL NI = new NEWIntroduceBL();

                Random number = new Random();
                string English = number.Next(0, 999999999).ToString();

                string name = context.Request.Form["name"];
                string TravelType = context.Request.Form["TravelType"];
                string time = context.Request.Form["time"];
                string language = context.Request.Form["language"];
                string ticketname = context.Request.Form["ticketname"];
                string ticketmoney = context.Request.Form["ticketmoney"];
                string TxTmessage = context.Request.Form["TxTmessage"];
                

                string image1 = context.Request.Form["image1"].Remove(0,6);
                string image2 = context.Request.Form["image2"].Remove(0,6);
                string image3 = context.Request.Form["image3"].Remove(0,6);
                string image4 = context.Request.Form["image4"].Remove(0,6);
                string image0 = context.Request.Form["image0"].Remove(0,6);
                string AdminID = "99999";

                if (NI.transfer(English, name, TravelType, time, language, ticketname, ticketmoney, TxTmessage,image1,image2,image3,image4,AdminID,image0))
                {
                    context.Response.Write(English);
                }
            }

            else
            {
                
                //传图片
                HttpPostedFile postedFile = context.Request.Files[0];
                //物理路径
                string savePath = "image/";
                //返回路径
                string path = context.Server.MapPath(savePath);
                //随机数
                System.Random Random = new System.Random();
                int Result = Random.Next(0, 9999999);
                string strRes = Result.ToString();

                DateTime DT = System.DateTime.Now;
                string dt = System.DateTime.Now.ToString("yyyyMMddHHmmss");
                //string str = dt.Replace('/', ' ');

                

                string filename = ".jpg";

                postedFile.SaveAs(path + "01" +dt+ strRes + filename);

                context.Response.Write("01"+dt + strRes + filename);
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