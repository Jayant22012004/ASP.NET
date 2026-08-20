using System;

namespace ThemeSkinDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Hello, " + Server.HtmlEncode(txtName.Text) +
                " — this label's Button/TextBox styling came entirely from the theme's skin file.";
        }
    }
}
