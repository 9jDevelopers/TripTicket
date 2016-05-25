using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BL;
using Travel;
using Travel.Tool;

namespace Travel.Head
{
    /// <summary>
    /// PI1 的摘要说明
    /// </summary>
    public class PI1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            
            string action= context.Request.Form["action"];            
            if(action=="getinfo")
            {
                string Photo;//后期完善
                int phone;
                string email;
                string username;
                string name; 
                string sex;
                string birthday;
                string home;

                //phone = "1234567890";
                string p = context.Request.Form["phone"];
                phone = Convert.ToInt32(p);
                BGetInfo getif = new BGetInfo();
                getif.BGI(phone, out email, out username, out name, out sex, out birthday, out home,out Photo);
                analyze(ref email);
                analyze(ref username);
                analyze(ref sex);
                analyze(ref name);
                analyze(ref birthday);
                analyze(ref home);
                string _phone = "{\"phone\":\"" + p + "\",";
                string _email = "\"email\":\"" + email + "\",";
                string _username = "\"username\":\"" + username + "\",";
                string _name = "\"name\":\"" + name + "\","; ;
                string _sex = "\"sex\":\"" + sex + "\","; ;
                string _birthday = "\"birthday\":\"" + birthday + "\","; 
                string _photo = "\"photo\":\"" + Photo + "\","; 
                string _home = "\"home\":\"" + home + "\"}"; 
                context.Response.Write(_phone+_email + _username + _name + _sex + _birthday +_photo +_home); 
            }
            else
            {
                string uploadFolder = HttpContext.Current.Server.MapPath("..//PI//photo//");
                string fileName = "";
                string fileExtName = "";
                string newFileName = "";
                //获取控件中的文件
                HttpPostedFile file = context.Request.Files["btnim"];
                if (file != null && file.ContentLength > 0)
                {
                    fileName = file.FileName;//获取文件名
                    fileExtName = fileName.Substring(fileName.LastIndexOf(".")).ToString();
                    //对后缀名进行判断，如果不符合要求的，那么就跳出，不继续执行                    
                    newFileName = Guid.NewGuid().ToString() + fileExtName;
                    string saveImagsUrl = uploadFolder + newFileName;
                    file.SaveAs(saveImagsUrl);
                    //将图片名字和物品ID存入数据库
                }
                string phone = context.Request.Form["phone"];
                string email = context.Request.Form["email"];
                string username = context.Request.Form["username"];
                string name = context.Request.Form["_name"];
                string sex = context.Request.Form["sex"];
                string birthday = context.Request.Form["birthday"];
                string home = context.Request.Form["home"];
                analyze(ref email);
                analyze(ref username);
                analyze(ref name);
                analyze(ref sex);
                analyze(ref home);
                BL.EditPI ep = new BL.EditPI();
                if (ep.Beditpi(phone, email, username, name, sex, birthday, home, newFileName))
                {

                    context.Response.Write(1);
                }
                else
                {
                    context.Response.Write(0);
                }
            }
        }

        public void analyze(ref string text)
        {
            if(text==null||text=="")
            {
                text = "未设置";
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