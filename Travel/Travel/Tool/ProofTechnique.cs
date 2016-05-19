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
        public void proofuid(string UID)
        {
            if(UID==""||UID==null)
            { 
                HttpContext.Current.Response.Redirect("~/Preview/Preview.aspx", true);
            }
        }
    }
}
