using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace MyWebAppOne
{
    public class Class1 : IHttpHandler
    {
        // How to create your own extensions
        // how yo block the jpg file from accessing
        //mps
        public bool IsReusable => true;

        public void ProcessRequest(HttpContext context)
        {

            // method to be executed when the user types .mps
            // using context object u can print the page context

            string s= context.Request.PhysicalPath;
            if (File.Exists(s))
            {
                context.Response.Write("<hi>Welcome to MPHASIS");
                context.Response.Write("<hr><div>hello world</div>");
            }
           

        }
    }
}