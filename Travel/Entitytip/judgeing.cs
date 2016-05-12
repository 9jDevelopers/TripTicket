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
            DbCommand cmd = db.GetSqlStringCommond("select SceneName,Score from Introduce where SceneID=@SceneID");
            db.AddInParameter(cmd, "@SceneID", DbType.String, id);
            DataTable dt = db.ExecuteDataTable(cmd);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0][0].ToString()+"$"+ dt.Rows[0][1].ToString();
            }
            else
            {
                return null;
            }
        }
      

        public string userID;
        public string Evaluationofgood;           //评价商品
        public string evaluationservice;

        public bool ToString(string evaluationofgood, string evaluationservice)
        {
            DbHelper db = new DbHelper();

            //数据库执行代码
            DbCommand cmd = db.GetStoredProcCommond("interest into judgeing values (evaluationofgood ,evaluationservice)");    //此内容为储存过程的名字。
            db.AddInParameter(cmd, "@evaluationofgood", DbType.String, evaluationofgood);
            db.AddInParameter(cmd, "@evaluationservice", DbType.String, evaluationservice);
            int result = db.ExecuteNonQuery(cmd);

            if (result == 1)
                //上传成功
                return true;
            else
                return false;
        }


        public string Evaluationservice;          //评价服务
        public string SunPhoto;                   //晒照片
        public string onservice;                  //关于服务
        public string Chaseratings;               //追评
        public string describe;                   //描述
        public string Sellerservice;              //卖家服务
        public string logisticsservice;           //物流服务
 
    }
}
