﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
    public class BResetPassword
    {
        public void BGE(string phone, out string email)
        {
            Account.GetEmail(phone, out email);
        }
        public bool BRP(string phone,string password)
        {
            if(Account.ResetPassword(phone,password))
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
