using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebAppOne
{
    public partial class Add
        : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int c = int.Parse(TextBox1.Text) + int.Parse(TextBox2.Text);
            Label1.Text = "the sum is" + c.ToString();
        }
    }
}