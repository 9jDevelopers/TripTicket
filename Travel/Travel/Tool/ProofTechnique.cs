using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace Travel.Tool
{
    public class ProofTechnique
    {
        public void proofuid(object UID)
        {
            //string _uid = UID.ToString();
            
            if (Convert.ToString(UID) == "")
            {
                HttpContext.Current.Response.Redirect("~/Index/Index.aspx", true);
            }
        }
        public void proofaid(string AID) 
        {
            if (AID == "" || AID == null)
            {
                HttpContext.Current.Response.Redirect("~/Administrator/Administrator.aspx", true);
            }
        }
        //public void saveuid(string UID)
        //{
        //    if (UID == "" || UID == null)
        //    {
        //        Session["UID"] = "";
        //    }
        //}
    }
}
