using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;
using MSSQLDAL;

namespace BL
{
    public class Bgetindexinfo
    {
        public string bindexinfo()
        {
            DataTable dt;
            Getindexinfo.getindexinfo(out dt);
            if (dt.Rows.Count > 0)
            {
                string jsonName = "";
                string a = DataTableConvertJson.DataTableToJson(jsonName, dt);
                string str = a.Remove(0, 4);
                int i = str.Length;
                string info=dt.Rows.Count+"$"+str.Remove(i - 1);
                return info;
            }
            else
            {
                return "0";
            }
        }
    }
}
