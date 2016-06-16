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
    public class ReadEvaEP
    {

        public static void getReadEvaEP(string NSceneID,out DataTable dt)
        {
            DbHelper db = new DbHelper();
            DbCommand cmd = db.GetSqlStringCommond("select * from(select * from Judgeing where SceneID =@NSceneID) as j left join(select Account.username, Account.userID from Account) as a on j.userID = a.userID");
            
            db.AddInParameter(cmd, "@NSceneID", DbType.String, NSceneID);
            dt = db.ExecuteDataTable(cmd);
        }
        
    }
}
