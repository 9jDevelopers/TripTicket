using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using System.Text;
using System.Net.Mail;
using System.Net;

namespace Travel.GetPassword
{
    /// <summary>
    /// getpassword 的摘要说明
    /// </summary>
    public class getpassword : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string action = context.Request.Form["action"];
            if(action=="getemail")
            { 
                string email;
                string phone=context.Request.Form["phone"];
                BGetEmail bge = new BGetEmail();
                bge.BGE(phone, out email);
                if(email==""||email==null)
                {
                    context.Response.Write("");
                }
                else
                {
                    Random rad = new Random();
                    int _radno = rad.Next(0, 99999999);
                    string radno = _radno.ToString();
                    string data = Sendemail(email,radno);
                    string datajn = "{\"result\":\"" +data + "\",\"rano\":\""+radno+"\"}";
                    context.Response.Write(datajn);

                }
            }//得到邮箱      END
            if(action== "resetpwd")
            {
                string phone = context.Request.Form["phone"];
                string password = context.Request.Form["password"];
                context.Response.Write(phone + password);
            }
        }

        public string Sendemail(string ToEmail,string radno)

        {

            string Email = "hanker1995@163.com";

            string password = "hanker1995";

            Encoding EnCode = Encoding.UTF8;

            System.Net.Mail.MailMessage Message = new System.Net.Mail.MailMessage();

            Message.From = new MailAddress(Email, "旅游网站", EnCode);//发送方

            Message.To.Add(new MailAddress(ToEmail, "尊敬的用户", EnCode));//接收方

            Message.Subject = "重置用户密码";//设置主题

            Message.SubjectEncoding = EnCode;

            //CC为抄送，即发给找回密码的用户的同时，再发送给Email（taonuli1989@yeah.net）

            Message.CC.Add(new MailAddress(Email, "旅游网重置密码"));

            StringBuilder MailContent = new StringBuilder();

            MailContent.Append("尊敬的用户： ");



            MailContent.Append("         您好！你于");

            MailContent.Append(DateTime.Now.ToLongTimeString());

            MailContent.Append("通过旅游网站管理中心申请重置密码。");

            MailContent.Append("您的验证码为"+radno);

            Message.Body = MailContent.ToString(); //定义邮件内容

            Message.BodyEncoding = EnCode;

            Message.IsBodyHtml = true;//设置邮件是否为HTML格式

            try

            {

                SmtpClient smtp = new SmtpClient("smtp.163.com", 25); //设置发送邮件的SMTP服务器，163的为 smtp.163.com, 126的为smtp.126.com

                //获取和设置用于验证发件人身份的凭据

                smtp.Credentials = new NetworkCredential(Email, password);

                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

                smtp.Send(Message);

            }

            catch (Exception e)

            {

                //return e.ToString();
                return "0";

            }

            finally

            {

                Message.Dispose();

            }

            return "1";

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