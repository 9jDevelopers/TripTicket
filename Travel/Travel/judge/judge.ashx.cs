using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using System.Data.SqlClient;

namespace Travel.judge
{
    /// <summary>
    /// judge1 的摘要说明
    /// </summary>
    public class judge1 : IHttpHandler
    {
                                             

        public void ProcessRequest(HttpContext context)
        {
            string k = context.Request["i"];
            Bjudge bj = new Bjudge();                                    //实体化Bjudge类。
            int jgname = int.Parse(context.Request.Form["jgid"]);        //1.界面交互层

            context.Response.Write(bj.get(jgname));                      //调用BL层带参函数（get（jgname））。

            if(context.Request["Evaluationofgood"] != null)
            {
                string Evaluationofgood = context.Request.Form["Evaluationofgood"];
                string Evaluationservice = context.Request.Form["Evaluationservice"];
                

                if (bj.ToString(Evaluationofgood, Evaluationservice))
                {
                    context.Response.Write(1);
                }
                else
                {
                    context.Response.Write(0);
                }

                string uploadFolder = HttpContext.Current.Server.MapPath("..//judge//images//");
                string fileName = "";         
                string fileExtName = "";
                string newFileName = "";
                for (int i=0; i<5;i++)
                {
                    // 获取控件中的文件
                HttpPostedFile file = context.Request.Files["btnim" + i];
                if (file != null && file.ContentLength > 0)
                {
                    fileName = file.FileName;  //获取文件名
                    fileExtName =fileName.Substring(fileName.LastIndexOf(".")).ToString();
                    //对后缀名进行判断，如果不符合要求的，那么就跳出，不继续执行                    
                    newFileName = Guid.NewGuid().ToString() + fileExtName;
                    string saveImagsUrl = uploadFolder + newFileName;
                    file.SaveAs(saveImagsUrl);

                        //可以删除《删除下列注释及内容》
                    //将图片名字和物品ID存入数据库
                    //SqlConnection conn1 = new SqlConnection("Persist Security Info=False;User ID=sa;Initial Catalog=SHGP;Data Source=HANKER-PC;password=hanhan");
                    //strsql = "insert into T_image(image_name,goods_id)values(@image_name,@goods_id)";
                    //SqlCommand com1 = new SqlCommand(strsql, conn1);
                    //com1.Parameters.AddWithValue("@image_name", newFileName);
                    //conn1.Open();
                    //int result1 = com1.ExecuteNonQuery();
                    //if (result1 > 0)
                    //{
                    //    tipim = ",图片上传成功";
                    //}
                    //else
                    //{
                    //    tipim = ",图片上传失败";
                    //}
                    //conn1.Close();
                }
            }
                //context.Response.Write();




                string acction = context.Request.Form["shuju"];
                if (acction == "newshuju")
                {
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


                    string image1 = context.Request.Form["image1"].Remove(0, 6);
                    string image2 = context.Request.Form["image2"].Remove(0, 6);
                    string image3 = context.Request.Form["image3"].Remove(0, 6);
                    string image4 = context.Request.Form["image4"].Remove(0, 6);
                    string image0 = context.Request.Form["image0"].Remove(0, 6);
                    string AdminID = "99999";

                    if (NI.transfer(English, name, TravelType, time, language, ticketname, ticketmoney, TxTmessage, image1, image2, image3, image4, AdminID, image0))
                    {
                        context.Response.Write(English);
                    }
                }

                else
                {
                    //传图片
                    HttpPostedFile postedFile = context.Request.Files[0];
                    //物理路径
                    string savePath = "images/";
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

                    postedFile.SaveAs(path + "01" + dt + strRes + filename);

                    context.Response.Write("01" + dt + strRes + filename);
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