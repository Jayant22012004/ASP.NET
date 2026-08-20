<%@ Page Title="Theme &amp; Skin Demo" Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ThemeSkinDemo.Default"
    Theme="BlueTheme" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Theme &amp; Skin Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="theme-heading">Theme &amp; Skin in ASP.NET (Theme = "BlueTheme")</h2>
        <p>
            This page sets <code>Theme="BlueTheme"</code> in its @Page directive.
            All controls below automatically pick up appearance from
            <code>App_Themes/BlueTheme/BlueTheme.skin</code> and its CSS file &ndash;
            no styling is written on the controls themselves.
        </p>

        <h4>Default skin (applies automatically, no SkinID needed)</h4>
        <asp:TextBox ID="txtName" runat="server" placeholder="Type your name" /><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

        <h4>Named skins (SkinID = "Alert" / "Success")</h4>
        <asp:Label ID="lblAlert" runat="server" SkinID="Alert" Text="This is an ALERT styled label (SkinID=Alert)." /><br />
        <asp:Label ID="lblSuccess" runat="server" SkinID="Success" Text="This is a SUCCESS styled label (SkinID=Success)." />

        <br /><br />
        <asp:Label ID="lblResult" runat="server" />
    </form>
</body>
</html>
