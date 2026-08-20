<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="MasterPageDemo.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome to the Home Page</h2>
    <p>
        This page (<code>Default.aspx</code>) contains <strong>only</strong> the content
        between its <code>ContentPlaceHolderID="MainContent"</code> tags. The header, navigation
        bar and footer you see around it all come from <code>Site.master</code>, which is shared
        by every page that sets <code>MasterPageFile="~/Site.master"</code>.
    </p>
    <p>Current server time: <b><%= DateTime.Now.ToString("dd MMM yyyy, HH:mm:ss") %></b></p>
</asp:Content>
