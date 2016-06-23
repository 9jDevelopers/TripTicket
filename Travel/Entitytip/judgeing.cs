using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSSQLDAL;
using System.Data.Common;
using System.Data;

namespace Entitytip
{
    public class judgeing
    {
        public string GET(int id)
        {
            DbHelper db = new DbHelper();                                          //数据访问层
            DbCommand cmd = db.GetSqlStringCommond("select SceneName from Introduce where SceneID=@SceneID");
            db.AddInParameter(cmd, "@SceneID", DbType.String, id);
            DataTable dt = db.ExecuteDataTable(cmd);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0][0].ToString();
            }
            else
            {
                return null;
            }
        }
      

        public string userID;
        public string description;           //评价商品
        public string service;
        public string experience;
        public string judgetext;

        public bool ToString(string description, string service,string experience,string judgetext)
        {
            DbHelper db = new DbHelper();

            //数据库执行代码
            DbCommand cmd = db.GetStoredProcCommond("insert into judgeing values (description,service,experience,judgetext)");    //此内容为储存过程的名字。
            db.AddInParameter(cmd, "@description", DbType.String, description);
            db.AddInParameter(cmd, "@service", DbType.String, service);
            db.AddInParameter(cmd, "@experience", DbType.String, experience);
            db.AddInParameter(cmd, "@judgetext", DbType.String, judgetext);
            int result = db.ExecuteNonQuery(cmd);

            if (result == 1)
                //上传成功
                return true;
            else
                return false;
        }
 
    }
}
