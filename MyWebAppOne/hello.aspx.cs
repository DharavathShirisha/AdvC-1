using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebAppOne
{
    public partial class hello : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TextBox3.Text = (int.Parse(TextBox1.Text) + int.Parse(TextBox2.Text)).ToString();
            // adjoint TextBox3.Text = int.Parse(TextBox1.Text) + int.Parse(TextBox2.Text).ToString();
            TextBox1.Text = TextBox2.Text; //TextBox2 value goes to tb1
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            //TextBox3.Text= (int.Parse(TextBox1.Text) + int.Parse(TextBox2.Text)).ToString();
        }
    }
}