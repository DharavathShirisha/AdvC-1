using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventApp
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        MyEventsEntities2 dc = new MyEventsEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           RegisterTbl r= new RegisterTbl();
            r.UserId = 0;
            r.UserName= TextBox1.Text;
            r.Password= TextBox2.Text;  
            r.Email= TextBox3.Text;
            dc.RegisterTbls.Add(r);
            int i = dc.SaveChanges();
            if (i > 0) 
            {
              Label4.Text = "You have Registered Successfully..!";
            }
        }
    }
}