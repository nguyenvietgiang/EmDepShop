using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace EmDepSite
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["counter"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 1;
            if (Application["counter"]!= null)
            {
                Application.Lock();
                int i = Convert.ToInt32(Application["counter"]);
                Application["counter"] = ++i;
                Application.UnLock();
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            if (Application["counter"] != null)
            {
                Application.Lock();
                int i = Convert.ToInt32(Application["counter"]);
                Application["counter"] = --i;
                Application.UnLock();
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}