using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebAppOne
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginPage_Authenticate(object sender, AuthenticateEventArgs e)
        {
           
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //if (LoginPage.Username == "admin" && LoginPage.Password == "india")
            //{
            //    Session["id"] = LoginPage.UserName;
            //    Response.Redirect("Home.aspx");
            //}
            //else { LoginPage.FailureText = "Access denied"; }
        }

        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }
    }
}