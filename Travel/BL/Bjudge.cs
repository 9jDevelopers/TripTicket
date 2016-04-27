using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
    public class Bjudge
    {
        public string get(int vid)
        {
            if(vid!=0)
            {
                judgeing jd = new Entitytip.judgeing();
                
                return jd.GET(vid);
            }
            else return null;


        }
    }
}
