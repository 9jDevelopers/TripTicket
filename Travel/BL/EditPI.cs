﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
    public class EditPI
    {
        public bool Beditpi(string phone, string email, string username, string name, string sex, string birthday, string home,string photo)
        {
            if (Account.EditPI( phone,  email,  username,  name,  sex,  birthday,  home, photo))
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
