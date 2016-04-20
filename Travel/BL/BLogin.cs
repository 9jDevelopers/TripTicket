using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using Entitytip;
using BL;
namespace BL
{
    public class BLogin
    {
        //LoginDal ld = new LoginDal();
        public bool Login(string LoginName, string Password)
        {
            //// return ld.Login(LoginName, Password);
            if (Account.Get(LoginName, Password) == null)
            {
                return false;
            }
            else
                return true;

        }

    }
}
