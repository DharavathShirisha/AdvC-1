using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MyWebAppOne
{
    public partial class Register : System.Web.UI.Page
    {
        onlineshoppingdbEntities2 dc = new onlineshoppingdbEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Registertbl r = new Registertbl();
            r.uname = TextBox2.Text;
            r.email = TextBox4.Text;
            r.age = int.Parse(TextBox3.Text);
            r.nationality = TextBox6.Text;

            dc.Registertbls.Add(r);
            int i = dc.SaveChanges();
            if (i > 0)
            {
                Label2.Text = "You have Registered Succesfully!!!";
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //if (args.Value == "india" || args.Value == "us" || args.Value == "canada")
            //{
            //    args.IsValid = true;
            //}
            //else { args.IsValid = false; }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}