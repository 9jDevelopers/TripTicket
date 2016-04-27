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
        public string viewid;
        public string titlename; 
        protected void Page_Load(object sender, EventArgs e)
        {
            Bjudge bj = new Bjudge();
            bj.get(viewid);
            
             //string userID = Context.Request.Form["userID"];
             //string Evaluationofgood = Context.Request.Form["Evaluationofgood"];         
             //string Evaluationservice = Context.Request.Form["Evaluationservice"];      
             //string SunPhoto = Context.Request.Form["SunPhoto"];               
             //string onservice = Context.Request.Form["onservice"];                
             //string Chaseratings = Context.Request.Form["Chaseratings"];              
             //string describe = Context.Request.Form["describe"];               
             //string Sellerservice = Context.Request.Form["Sellerservice"];         
             //string logisticsservice = Context.Request.Form["logisticsservice"]; 
        }
    }
}