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
        public bool transfer(string name,string TravelType,string time,string lanuage,string ticketname,string ticketmoney,string TxTmessage,string image1,string image2,string image3,string image4)
        {
            if (NEWintroduce.create(name, TravelType, time, lanuage, ticketname, ticketmoney, TxTmessage, image1, image2, image3, image4) == null)
            {
                return false;
            }
            else
                return true;
        }
    }
}
