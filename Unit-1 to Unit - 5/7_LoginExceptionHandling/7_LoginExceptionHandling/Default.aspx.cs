using System;

namespace LoginExceptionHandling
{
    public class InvalidLoginException : Exception
    {
        public InvalidLoginException(string message) : base(message) { }
    }

    public partial class Default : System.Web.UI.Page
    {
        private const string ValidUser = "admin";
        private const string ValidPass = "admin123";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string username = txtUser.Text;
                string password = txtPass.Text;

                if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
                {
                    throw new InvalidLoginException("Username and Password are required.");
                }

                if (username.Length > 50 || password.Length > 50)
                {
                    throw new ArgumentException("Username/Password exceeds the maximum allowed length.");
                }

                if (username != ValidUser || password != ValidPass)
                {
                    throw new InvalidLoginException("Invalid username or password.");
                }

                lblMessage.CssClass = "success";
                lblMessage.Text = "Login successful. Welcome, " + Server.HtmlEncode(username) + "!";
            }
            catch (InvalidLoginException ex)
            {
                lblMessage.CssClass = "error";
                lblMessage.Text = ex.Message;
            }
            catch (ArgumentException ex)
            {
                lblMessage.CssClass = "error";
                lblMessage.Text = "Invalid input: " + ex.Message;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Trace.WriteLine("Login error: " + ex);
                lblMessage.CssClass = "error";
                lblMessage.Text = "An unexpected error occurred. Please try again later.";
            }
            finally
            {
                txtPass.Text = string.Empty;
            }
        }
    }
}
