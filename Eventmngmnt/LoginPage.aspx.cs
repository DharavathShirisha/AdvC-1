using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eventmngmnt
{
    public partial class LoginPage : System.Web.UI.Page
    {
        MyEventsEntities1 dc = new MyEventsEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            var res = from t in dc.RegisterTbls
                      where t.UserName == Login1.UserName && t.Password == Login1.Password
                      select t;

            if (res.Count() > 0)
            {
                Session["UserId"] = Login1.UserName;
                Response.Redirect("Home.aspx");
            }
        }
    }
}