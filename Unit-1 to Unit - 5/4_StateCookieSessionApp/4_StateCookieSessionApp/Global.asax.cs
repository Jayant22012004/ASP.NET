using System;

namespace StateCookieSessionApp
{
    public class Global : System.Web.HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Application["VisitorCount"] = 0;
        }
    }
}
