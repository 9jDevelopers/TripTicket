using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entitytip
{
    class TicketType
    {
        public int TicketID;
        //票ID;
        public string TicketName;
         //票名;
        public Double TicketPrice;
        //票价格;
        public string sceneID;
        public List<Tickets> lstTickets;
        //景点ID;
    }
}
