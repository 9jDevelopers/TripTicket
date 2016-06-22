using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Travel.Tool;

namespace Travel.Orderform
{
    public partial class Orderform1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProofTechnique a = new ProofTechnique();
            a.proofuid(Session["UID"]);
        }
    }
}