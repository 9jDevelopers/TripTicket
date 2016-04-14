using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
     public class IntroduceBL
    {
        public bool transfer(string name,string TravelType,string home,string time,string lanuage,string ticketname,string sicketmoney,string TxTmessage)
        {
           if (introduce.create(name, TravelType, home, time, lanuage, ticketname, sicketmoney, TxTmessage) ==null)
            {
                return false;
            }
           else
            return true;
        }
    }
}
