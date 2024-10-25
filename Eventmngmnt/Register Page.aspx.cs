using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eventmngmnt
{
    public partial class Register_Page : System.Web.UI.Page
    {
        MyEventsEntities1 dc=new MyEventsEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RegisterTbl r = new RegisterTbl();
            r.UserId = 0;
            r.UserName = TextBox1.Text;
            r.Password = TextBox2.Text;
            r.Email = TextBox3.Text;
            dc.RegisterTbls.Add(r);
            int i = dc.SaveChanges();
            if (i > 0)
            {
                Label4.Text = "You have Registered Successfully..!";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}