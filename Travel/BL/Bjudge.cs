using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
    public class Bjudge                                          //Bjudge类
    {
        public judgeing TouristDal { get; set; }
        judgeing td = new judgeing();

                                                                  //2业务逻辑层

        public string get(int vid)                               //定义带参的函数。
        {
            if(vid!=0)                                          
            {
                judgeing jd = new Entitytip.judgeing();          //实例化judgeing类
                
                return jd.GET(vid);                              //调用带参函数。
            }
            else return null;
           
        }

        public bool ToString(string description,string service,string experience ,string judgetext )
        {
            return td.ToString(description, service, experience, judgetext);
        }
    }
}
