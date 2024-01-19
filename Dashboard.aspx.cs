using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MVP_Timesheet
{
    public partial class Dashbord : System.Web.UI.Page
    {
        private object formsauthentication;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void ConfirmSignOut_Click(object sender, EventArgs e)
        //{
        //    // Add your sign-out logic here
        //    // For example, redirect the user to the login page
        //    Session.Clear();

        //    //formsauthentication.btnSignOut();
        //    Response.Redirect("Login.aspx");
        //}
        protected void btnCOnfirmSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}