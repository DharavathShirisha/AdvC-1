using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI.WebControls;

namespace MyWebAppOne
{
    public class Class2 : IHttpModule

    {
        public void Dispose()
        {
           
        }

        public void Init(HttpApplication context)
        {
            context.BeginRequest += Context_BeignRequest;
            context.EndRequest += Context_EndRequest;

        }

        private void Context_EndRequest(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Write("<h1>After method called</h1>");
        }

        private void Context_BeignRequest(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Write("<h1>before method called</h1>");
        }
    }
}