﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BL;
using Entitytip;
namespace BL
{
    public class BBuyTicket
    {

        public string Gettktname(int Bid)
        {
            if (Bid > 0)
            {
                Tickets tkts = new Tickets();
                return tkts.Get(Bid);
            }
            else
            {
                return null;
            }
        }
        public string Set(int Bnum,string Bticketname,string Bticketprice,string Bdate, string Bticketholder, string Bidcardno, string Btelenum,string Bsafe ,string Buserid)
        {
            if (Bnum != 0 && Bticketname != "" && Bticketprice != "" && Bdate != "" && Bticketholder != "" && Bidcardno != "" && Btelenum != "" && Bsafe != "" && Buserid!="")
            {
                Tickets tkts = new Tickets();
                return tkts.SET(Bnum,Bticketname, Bticketprice, Bdate, Bticketholder, Bidcardno, Btelenum, Bsafe,Buserid);
                
            }
            else {
                return "逻辑层传值失败";
            }
        }
    }
}
