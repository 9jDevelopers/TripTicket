using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;
using MSSQLDAL;
namespace BL
{
  public class NewAccount
    {
       //数据ku--》
       public bool login(string name,string TravelType)
        {
            if (ToAccount.Get(name)==null)
            {
                return false;
            }
            else
                return true;
        }       
    }
}
