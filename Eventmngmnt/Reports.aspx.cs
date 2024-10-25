using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eventmngmnt
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime startDate = Calendar1.SelectedDate;
            DateTime endDate = Calendar2.SelectedDate;

            using (MyEventsEntities1 dc = new MyEventsEntities1())
            {
                var events = from t in dc.eventtbls
                             where t.EDate >= startDate && t.EDate <= endDate
                             select t;

                GridView1.DataSource = events.ToList();
                GridView1.DataBind();
            }
        }
    }
}