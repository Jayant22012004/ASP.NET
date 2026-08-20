using System;

namespace MarksheetExceptionHandling
{
    public partial class Default : System.Web.UI.Page
    {
        private const int MaxMarksPerSubject = 100;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                string[] rawMarks =
                {
                    txtM1.Text, txtM2.Text, txtM3.Text, txtM4.Text, txtM5.Text
                };

                int subjectCount = rawMarks.Length;
                int total = 0;

                for (int i = 0; i < rawMarks.Length; i++)
                {
                    if (string.IsNullOrWhiteSpace(rawMarks[i]))
                    {
                        throw new ArgumentNullException("Subject " + (i + 1), "Marks cannot be left blank.");
                    }

                    int marks = Convert.ToInt32(rawMarks[i]);

                    if (marks < 0 || marks > MaxMarksPerSubject)
                    {
                        throw new ArgumentOutOfRangeException(
                            "Subject " + (i + 1), "Marks must be between 0 and " + MaxMarksPerSubject + ".");
                    }

                    total += marks;
                }

                decimal percentage = total / (decimal)subjectCount;

                lblResult.CssClass = "result";
                lblResult.Text = string.Format(
                    "Total: {0} / {1} &nbsp;|&nbsp; Percentage: {2:0.00}% &nbsp;|&nbsp; Grade: {3}",
                    total, subjectCount * MaxMarksPerSubject, percentage, GetGrade(percentage));
            }
            catch (FormatException)
            {
                lblResult.CssClass = "error";
                lblResult.Text = "Please enter numeric marks only (no letters or symbols).";
            }
            catch (OverflowException)
            {
                lblResult.CssClass = "error";
                lblResult.Text = "One of the entered numbers is too large.";
            }
            catch (ArgumentOutOfRangeException ex)
            {
                lblResult.CssClass = "error";
                lblResult.Text = ex.Message;
            }
            catch (ArgumentNullException ex)
            {
                lblResult.CssClass = "error";
                lblResult.Text = ex.Message;
            }
            catch (DivideByZeroException)
            {
                lblResult.CssClass = "error";
                lblResult.Text = "Cannot calculate percentage: number of subjects is zero.";
            }
            catch (Exception ex)
            {
                System.Diagnostics.Trace.WriteLine("Marksheet error: " + ex);
                lblResult.CssClass = "error";
                lblResult.Text = "An unexpected error occurred while calculating the result.";
            }
        }

        private string GetGrade(decimal percentage)
        {
            if (percentage >= 90) return "A+";
            if (percentage >= 75) return "A";
            if (percentage >= 60) return "B";
            if (percentage >= 40) return "C";
            return "Fail";
        }
    }
}
