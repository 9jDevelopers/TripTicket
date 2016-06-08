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
             string NM = context.Request.QueryString["name"];

            DbHelper db = new DbHelper();

            DbCommand cmd = db.GetSqlStringCommond("select * from xxss where name like  '%" + NM + "%' ");
            DataTable dt = db.ExecuteDataTable(cmd);
            int b = dt.Rows.Count;
            if (b > 0)
            {
                string jsonName = " ";
                string a = DataTableConvertJson.DataTableToJson(jsonName, dt);

                string str = a.Remove(0, 5);
                int i = str.Length;
                string str2 = str.Remove(i - 1);
                context.Response.Write(str2);
            }
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