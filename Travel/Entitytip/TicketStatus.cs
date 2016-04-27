using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entitytip
{
    public enum TicketStatus
    {
        
        //已使用
        usered,
        //退票
        refund,
        //预订
        book,
        //未购买 
        unused
    }
}
