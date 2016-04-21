using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;
using Entitytip;


namespace 游游旅游
{
    public partial class Introduce : System.Web.UI.Page
    {

        public string SceneName;
        public string Data;
        public string Score;
        public string Number;
        protected void Page_Load(object sender, EventArgs e)
        {
            string SceneID = "2";

            IntroduceBL giveme = new IntroduceBL();

            giveme.Message(SceneID, out SceneName, out Data, out Score, out Number);
        }
    }
}