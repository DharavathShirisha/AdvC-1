<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Eventmngmnt.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            position: absolute;
            top: 473px;
            left: 42px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HyperLink ID="HyperLink15" runat="server" CssClass="auto-style7">New User? Click here..!</asp:HyperLink>
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" Height="135px" Width="420px">
</asp:Login>
<br />
<br />
</asp:Content>
