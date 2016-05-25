using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;
using BL;
namespace BL
{
    public class BAdministrator
    {
        public void badmin(string loginname,string password,out bool result,out string addAD,out string addScenic)
        {
            Administrator.adlogin(loginname, password, out result, out addAD, out addScenic);
        }
    }
}
