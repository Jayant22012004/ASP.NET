<%@ Page Title="ViewState & QueryString" Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="StateViewStateQueryString.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ViewState &amp; QueryString Demo</title>
    <style type="text/css">
        body { font-family: Segoe UI, Arial, sans-serif; margin: 30px; }
        .box { border: 1px solid #ccc; padding: 15px; margin-bottom: 15px; border-radius: 4px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>State Management: ViewState &amp; QueryString</h2>

        <div class="box">
            <h3>ViewState (survives postbacks on THIS page only)</h3>
            <p>Every time you click the button, ViewState remembers the previous click count
               (a plain page variable would reset to 0 on every postback).</p>
            <asp:Label ID="lblClickCount" runat="server" />
            <br /><br />
            <asp:Button ID="btnIncrement" runat="server" Text="Click Me" OnClick="btnIncrement_Click" />
        </div>

        <div class="box">
            <h3>QueryString (passes a value from one page to another via the URL)</h3>
            <asp:Label ID="lblMsg" runat="server" Text="Enter a message to send to the next page:" /><br />
            <asp:TextBox ID="txtMessage" runat="server" /><br /><br />
            <asp:Button ID="btnGo" runat="server" Text="Send via QueryString" OnClick="btnGo_Click" />
        </div>
    </form>
</body>
</html>
