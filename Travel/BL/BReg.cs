using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
    public class BReg
    {
       public bool Reg(string phone,string username)
        {
            if(Account.Reg(phone,username))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
