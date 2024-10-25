using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebAppOne
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListBox1.Items.Add(new ListItem() { Text = "Ac", Value = "images/ac.jpg" });
                ListBox1.Items.Add(new ListItem() { Text = "TV", Value = "images/tv.jpg" });
                ListBox1.Items.Add(new ListItem() { Text = "Watch", Value = "images/watch.jpg" });
                ListBox1.Items.Add(new ListItem() { Text = "Monitor", Value = "images/monitor.jpg" });
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Image6.ImageUrl = ListBox1.SelectedValue;
        }
        int c = 0;
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["c"] = (int)Session["c"] + 1;
            c = c + 1;
            Label1.Text = Session.SessionID +":"+ Session["c"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Application["a"] = (int)Application["a"] + 1;
            Label2.Text = Application["a"].ToString();  
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
              
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ViewState["s"] = "Lets learn asp.net";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label4.Text= ViewState["s"].ToString(); 
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Session["d"] = "hai Welcome";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label3.Text = Session["d"].ToString();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ViewState["s"] = "Lets learn";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx?custid=100&custname=Raj");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            HttpCookie ht = new HttpCookie("hi");
                ht["u"] = "sirisonu";
            ht["p"] = "india";
            Response.Cookies.Add(ht);// creates cookie  a file in the client system
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            HttpCookie ht = Request.Cookies["hi"];
            Label5.Text = ht["u"].ToString();
            Label5.Text += ht["p"].ToString();

        }
    }
}