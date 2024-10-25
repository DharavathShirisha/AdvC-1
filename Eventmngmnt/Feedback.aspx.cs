using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eventmngmnt
{
    public partial class Feedback : System.Web.UI.Page
    {
        MyEventsEntities1 dc = new MyEventsEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            feedbacktbl f = new feedbacktbl();
            f.Ratings = DropDownList1.SelectedValue.ToString();
            f.Descript = TextBox1.Text;

            dc.feedbacktbls.Add(f);
            int i = dc.SaveChanges();
            if (i >= 0)
            {
                Label2.Text = "Feedback submitted successfully";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}