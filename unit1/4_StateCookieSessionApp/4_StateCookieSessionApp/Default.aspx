<%@ Page Title="Cookies, Session & Application" Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="StateCookieSessionApp.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookies, Session &amp; Application State</title>
    <style type="text/css">
        body { font-family: Segoe UI, Arial, sans-serif; margin: 30px; }
        .box { border: 1px solid #ccc; padding: 15px; margin-bottom: 15px; border-radius: 4px; }
        .box h3 { margin-top: 0; color: #2c3e50; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>State Management: Cookies, Session &amp; Application</h2>

        <div class="box">
            <asp:Label ID="lblName" runat="server" Text="Enter your name:" />
            <asp:TextBox ID="txtUserName" runat="server" />
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </div>

        <div class="box">
            <h3>Cookie (persists in the browser across visits)</h3>
            <asp:Label ID="lblCookie" runat="server" />
        </div>

        <div class="box">
            <h3>Session (specific to this user's current browser session)</h3>
            <asp:Label ID="lblSession" runat="server" />
        </div>

        <div class="box">
            <h3>Application (shared across ALL users of the app)</h3>
            <asp:Label ID="lblApplication" runat="server" />
        </div>
    </form>
</body>
</html>
