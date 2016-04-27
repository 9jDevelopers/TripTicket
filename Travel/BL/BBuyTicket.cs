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
        public string Set(string Bticketname,string Bticketprice,string Bdate, string Bticketholder, int Bidcardno, int Btelenum,int Bsafe)
        {
            if (Bticketname != "" && Bticketprice != "" && Bdate != "" && Bticketholder != "" && Bidcardno != null && Btelenum != null && Bsafe != null)
            {
                Tickets tkts = new Tickets();
                tkts.SET(Bticketname, Bticketprice, Bdate, Bticketholder, Bidcardno, Btelenum, Bsafe);
                return null;
            }
            else {
                return null;
            }
        }
    }
}
