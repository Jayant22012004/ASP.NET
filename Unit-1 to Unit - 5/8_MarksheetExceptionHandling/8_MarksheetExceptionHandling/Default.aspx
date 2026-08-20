<%@ Page Title="Student Marksheet" Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="MarksheetExceptionHandling.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Marksheet</title>
    <style type="text/css">
        body { font-family: Segoe UI, Arial, sans-serif; margin: 30px; }
        .box { max-width: 450px; border: 1px solid #ccc; padding: 20px; border-radius: 6px; }
        .row { margin-bottom: 10px; }
        .error { color: #c0392b; font-weight: bold; }
        .result { color: #27ae60; font-weight: bold; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <h2>Student Marksheet Portal</h2>
            <p>Enter marks (0-100) for 5 subjects:</p>

            <div class="row">Subject 1: <asp:TextBox ID="txtM1" runat="server" Columns="5" /></div>
            <div class="row">Subject 2: <asp:TextBox ID="txtM2" runat="server" Columns="5" /></div>
            <div class="row">Subject 3: <asp:TextBox ID="txtM3" runat="server" Columns="5" /></div>
            <div class="row">Subject 4: <asp:TextBox ID="txtM4" runat="server" Columns="5" /></div>
            <div class="row">Subject 5: <asp:TextBox ID="txtM5" runat="server" Columns="5" /></div>

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate Result" OnClick="btnCalculate_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server" />
        </div>
    </form>
</body>
</html>
