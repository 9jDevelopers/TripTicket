﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
     public class NEWIntroduceBL
    {
        public bool transfer(string English,string name,string TravelType,string time,string lanuage,string ticketname,string ticketmoney,string TxTmessage,string image1,string image2,string image3,string image4,string AdminID,string image0)
        {
            if (NEWintroduce.create(English,name, TravelType, time, lanuage, ticketname, ticketmoney, TxTmessage, image1, image2, image3, image4,AdminID, image0) == null)
            {
                return false;
            }
            else
                return true;
        }
    }
}
