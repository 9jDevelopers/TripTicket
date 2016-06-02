using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using System.Data;
using System.Data.Common;

namespace Entitytip
{
    public class Getindexinfo
    {
        public static void getindexinfo(out DataTable dt)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("exec getindexinfo");
            dt = db.ExecuteDataTable(cmd);
        }

    }
}
