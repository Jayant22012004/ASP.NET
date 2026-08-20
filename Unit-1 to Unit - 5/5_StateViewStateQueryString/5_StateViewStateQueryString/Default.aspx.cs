using System;

namespace StateViewStateQueryString
{
    public partial class Default : System.Web.UI.Page
    {
        private int ClickCount
        {
            get { return ViewState["ClickCount"] != null ? (int)ViewState["ClickCount"] : 0; }
            set { ViewState["ClickCount"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClickCount = 0;
            }
            lblClickCount.Text = "Button clicked " + ClickCount + " time(s) (value stored in ViewState).";
        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            ClickCount = ClickCount + 1;
            lblClickCount.Text = "Button clicked " + ClickCount + " time(s) (value stored in ViewState).";
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            string message = Server.UrlEncode(txtMessage.Text.Trim());
            Response.Redirect("Result.aspx?msg=" + message);
        }
    }
}
