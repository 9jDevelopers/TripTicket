                               using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace Travel.judge
{
    public partial class judge : System.Web.UI.Page
    {
        public int userid=1;
        public int viewid=1;
        public string titlename;
        protected void Page_Load(object sender, EventArgs e)
        {
            Bjudge bj = new Bjudge();
            titlename = bj.get(viewid);


        }
    }
}