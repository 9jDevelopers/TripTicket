using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;
namespace BL
{
    public class BOrderform
    {
        public string Set(int Bid)
        {
            Ent e = new Ent();
            return e.set(Bid);
        }
    }
}
