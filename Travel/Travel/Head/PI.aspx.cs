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
            string username = "lilei";
            BGetInfo getif = new BGetInfo();

            getif.BGI(username, out contact);


        }
    }
}