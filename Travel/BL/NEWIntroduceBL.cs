using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
     public class NEWIntroduceBL
    {
        public bool transfer(string name,string TravelType,string time,string lanuage,string ticketname,string ticketmoney,string TxTmessage)
        {
           if (NEWintroduce.create(name,TravelType,time,lanuage,ticketname,ticketmoney,TxTmessage) ==null)
            {
                return false;
            }
           else
            return true;
        }
    }
}
