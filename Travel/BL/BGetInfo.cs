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
        public void BGI(int uid,out string Phone, out string email, out string username, out string name, out string sex, out string birthday, out string home,out string Photo)
        {
            //// return ld.Login(LoginName, Password);
            Account.GetInfo(uid,out Phone, out email, out username, out name, out sex, out birthday, out home,out Photo);
        }
    }
}
