using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebAppOne
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"]== null)
            {
               Label1.Text = "Welcome Guest";
            }
            else { Label1.Text = Session["id"].ToString(); }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("LoginPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}