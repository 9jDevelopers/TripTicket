using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;
using System.Data;
using MSSQLDAL;

namespace BL
{
    public class BOrderform
    {
        public string Set(int userid, out int count)
        {
            count = 0;
            Ent e = new Ent();
            string jsonName = "";

            DataTable  dt = e.set(userid);
            string of = DataTableConvertJson.DataTableToJson(jsonName, dt);
            count = dt.Rows.Count;
            return of;
        }
    }
}
