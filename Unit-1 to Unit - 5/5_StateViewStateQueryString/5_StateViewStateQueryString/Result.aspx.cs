using System;

namespace StateViewStateQueryString
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg = Request.QueryString["msg"];
            lblReceived.Text = !string.IsNullOrEmpty(msg)
                ? "Message received from previous page's URL: <b>" + Server.HtmlEncode(msg) + "</b>"
                : "No 'msg' value was found in the QueryString.";
        }
    }
}
