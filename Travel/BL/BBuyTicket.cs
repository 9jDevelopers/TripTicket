using System;
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
        public string Set(string Btotal, string Bnum,string Bticketname,string Bticketprice,string Bdate, string Bticketholder, string Bidcardno, string Btelenum,string Bsafe ,string Buserid,string Bwait)
        {
            if (Btotal!=""&& Bnum != "" && Bticketname != "" && Bticketprice != "" && Bdate != "" && Bticketholder != "" && Bidcardno != "" && Btelenum != "" && Bsafe != "" && Buserid!="" && Bwait != "")
            {
                Tickets tkts = new Tickets();
                return tkts.SET(Btotal,Bnum,Bticketname, Bticketprice, Bdate, Bticketholder, Bidcardno, Btelenum, Bsafe,Buserid, Bwait);
                
            }
            else {
                return "逻辑层传值失败";
            }
        }
        
    }
}
