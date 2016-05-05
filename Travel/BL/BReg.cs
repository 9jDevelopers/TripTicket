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
       public bool Reg(string phone,string username,string email,string password)
        {
            if(Account.Reg(phone,username,email,password))
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
