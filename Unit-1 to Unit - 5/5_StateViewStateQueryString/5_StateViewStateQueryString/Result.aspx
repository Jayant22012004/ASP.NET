<%@ Page Title="QueryString Result" Language="C#" AutoEventWireup="true"
    CodeBehind="Result.aspx.cs" Inherits="StateViewStateQueryString.Result" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QueryString Result</title>
    <style type="text/css">body { font-family: Segoe UI, Arial, sans-serif; margin: 30px; }</style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Value received via QueryString</h2>
        <asp:Label ID="lblReceived" runat="server" />
        <br /><br />
        <a href="Default.aspx">&laquo; Back</a>
    </form>
</body>
</html>
