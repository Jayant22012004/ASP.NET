<%@ Page Title="CSS Demo" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CSSDemo.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CSS Demo</title>
    <!-- External style sheet -->
    <link rel="stylesheet" type="text/css" href="Styles/site.css" />
    <!-- Internal (embedded) style sheet -->
    <style type="text/css">
        body { font-family: Segoe UI, Arial, sans-serif; margin: 30px; }
        .internal-para {
            color: #2c3e50;
            background-color: #ecf0f1;
            padding: 10px;
            border-left: 4px solid #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Cascading Style Sheets (CSS) in ASP.NET</h2>

        <h3>1. Inline Style</h3>
        <p style="color: red; font-weight: bold; font-size: 16px;">
            This paragraph uses an INLINE style attribute.
        </p>

        <h3>2. Internal Style Sheet</h3>
        <p class="internal-para">
            This paragraph is styled using an INTERNAL &lt;style&gt; block defined in the page's &lt;head&gt;.
        </p>

        <h3>3. External Style Sheet</h3>
        <h4 class="external-heading">This heading uses an EXTERNAL CSS file (Styles/site.css)</h4>
        <div class="external-box">
            This box's border and spacing come entirely from the external stylesheet.
        </div>

        <h3>4. CSS applied via a Server Control's CssClass property</h3>
        <asp:Label ID="lblCssClass" runat="server" CssClass="lbl-external"
            Text="This Label control uses CssClass='lbl-external' (defined in site.css)." />
    </form>
</body>
</html>
