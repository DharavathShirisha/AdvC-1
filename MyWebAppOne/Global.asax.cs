using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace MyWebAppOne
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //webserver starts
            Application["a"] = 0;
            Application["id"] = null;
        }
        protected void Application_End(object sender, EventArgs e)
        {
            //Webserver is shutdown
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            // userloggsin
            //every time u run the page.
            Session["c"] = 0;
            Session["id"] = null;
            Session["d"] = null;
        }
        protected void Session_End(object sender, EventArgs e)
        {
            // called when loggsout
        }
        protected void Application_Error(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
            // application encounters error
        }
    }
}