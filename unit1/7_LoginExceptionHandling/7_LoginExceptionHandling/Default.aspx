<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoginExceptionHandling.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        body { font-family: Segoe UI, Arial, sans-serif; margin: 30px; }
        .box { max-width: 350px; border: 1px solid #ccc; padding: 20px; border-radius: 6px; }
        .box .row { margin-bottom: 12px; }
        .error { color: #c0392b; font-weight: bold; }
        .success { color: #27ae60; font-weight: bold; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <h2>Login</h2>
            <div class="row">
                <asp:Label ID="lblUser" runat="server" Text="Username:" AssociatedControlID="txtUser" /><br />
                <asp:TextBox ID="txtUser" runat="server" />
            </div>
            <div class="row">
                <asp:Label ID="lblPass" runat="server" Text="Password:" AssociatedControlID="txtPass" /><br />
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" />
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" />
        </div>
    </form>
</body>
</html>
