using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace Travel.Head
{
    public partial class PI : System.Web.UI.Page
    {
        public string contact;
        protected void Page_Load(object sender, EventArgs e)
        {
            BGetInfo getif = new BGetInfo();
            contact = "14747584027";
        }
    }
}