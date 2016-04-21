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
        public string photo;//后期完善
        public string phone;
        public string email;
        public string username;
        public string name;
        public string sex;
        public string birthday;
        public string home;
        protected void Page_Load(object sender, EventArgs e)
        {
            //phone = "1234567890";
            string phone = Request.Form["phone"];
            BGetInfo getif = new BGetInfo();
            

            getif.BGI(phone, out email, out username, out name, out sex, out birthday, out home);


        }
    }
}