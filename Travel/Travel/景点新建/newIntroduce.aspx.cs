﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Travel.Tool;

namespace Travel.景点新建
{
    public partial class newIntroduce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProofTechnique a = new ProofTechnique();
            a.proofaid(Session["AID"]);
        }
    }
}