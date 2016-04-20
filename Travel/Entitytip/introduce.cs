using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using MSSQLDAL;
using System.Data;
namespace Entitytip
{
    class Introduce
    {

        //景点ID
        public string sceneID;
        //景点名称
        public string sceneName;
        //景点
        public string TravelType;

        //销售数据
        public char Data;
        //评分
        public char score;
        //评分人数
        public int number;
        

        public SceceType Stype;
        
        public static Introduce create(string name,)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * form Introduce where SceneName=@SceneName");

            return null;
        }
    }
}
