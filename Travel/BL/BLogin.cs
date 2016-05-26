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
        public void Login(string phone, string Password,out string username,out string uid)
        {
            //// return ld.Login(LoginName, Password);
            Account.Get(phone, Password, out username,out uid);

        }

    }
}
