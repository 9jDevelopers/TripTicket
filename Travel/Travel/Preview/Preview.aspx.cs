using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace Travel.Preview
{
    public partial class Preview : System.Web.UI.Page
    {
        public string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = "1";
            GetPreviews getif = new GetPreviews();

            getif.BGI(id, out name);

        }
    }
}