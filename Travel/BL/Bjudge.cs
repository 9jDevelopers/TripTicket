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
        public string get(int vid)                               //定义带参的函数。
        {
            if(vid!=0)                                           //2业务逻辑层
            {
                judgeing jd = new Entitytip.judgeing();          //实例化judgeing类
                
                return jd.GET(vid);                              //调用带参函数。
            }
            else return null;
           
        }
    }
}
