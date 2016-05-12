using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
    public class BGetEmail
    {
        public void BGE(string phone, out string email)
        {
            Account.GetEmail(phone, out email);
        }
    }
}
