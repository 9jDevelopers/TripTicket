using MSSQLDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;

namespace Travel.Head
{
    /// <summary>
    /// Handler 的摘要说明
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            DbHelper db = new DbHelper();

            DbCommand cmd = db.GetSqlStringCommond("select * from xxss where name like '%山%' ");
            DataTable dt = db.ExecuteDataTable(cmd);

            string a = DataTableConvertJson.DataTable2Json(dt);
            context.Response.Write(a);
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}