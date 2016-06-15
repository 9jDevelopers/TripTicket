using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;
using Travel.Tool;

namespace Travel.Head
{
    public partial class PI : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["UID"] = "";
            ProofTechnique a = new ProofTechnique();
            a.proofuid(Session["UID"]);
        }
    }
}