using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
    public class BGetInfo
    {
        public void BGI(string LoginName, out string contact)
        {
            //// return ld.Login(LoginName, Password);
            Account.GetInfo(LoginName, out contact);
        }
    }
}
