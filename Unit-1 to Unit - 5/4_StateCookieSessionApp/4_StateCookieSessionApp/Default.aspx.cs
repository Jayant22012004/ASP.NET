using System;
using System.Web;

namespace StateCookieSessionApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Application.Lock();
                try
                {
                    int count = Application["VisitorCount"] != null ? (int)Application["VisitorCount"] : 0;
                    Application["VisitorCount"] = count + 1;
                }
                finally
                {
                    Application.UnLock();
                }
            }

            DisplayState();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string name = txtUserName.Text.Trim();
            if (string.IsNullOrEmpty(name)) name = "Guest";

            HttpCookie cookie = new HttpCookie("UserName", name);
            cookie.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(cookie);

            Session["UserName"] = name;
            Session["LoginTime"] = DateTime.Now;

            DisplayState();
        }

        private void DisplayState()
        {
            HttpCookie readCookie = Request.Cookies["UserName"];
            lblCookie.Text = readCookie != null
                ? "Cookie value: " + readCookie.Value + " (expires " + readCookie.Expires.ToString("dd-MMM-yyyy") + ")"
                : "No cookie set yet. Enter a name and click Save.";

            lblSession.Text = Session["UserName"] != null
                ? "Session UserName: " + Session["UserName"] + " | Logged in at: " + Session["LoginTime"]
                : "No session value set yet.";

            lblApplication.Text = "Total visits since application started: " + Application["VisitorCount"];
        }
    }
}
