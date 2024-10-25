<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyWebAppOne.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            margin-top: 0px;
        }
        .auto-style9 {
            margin-left: 26px;
            margin-bottom: 0px;
        }
        .auto-style13 {
            height: 25px;
            width: 235px;
            position: absolute;
            top: 355px;
            left: 596px;
            z-index: 1;
            margin-left: 26px;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged1" AutoPostBack="True" CssClass="auto-style8" Height="109px" Width="103px" DataSourceID="SqlDataSource1" DataTextField="pimage" DataValueField="pimage"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineshoppingdbConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
<asp:Image ID="Image6" runat="server" Width="153px" CssClass="auto-style13" Height="84px" />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
&nbsp;
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
<br />
<asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Storeinsession" />
&nbsp;
<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Read in Session" />
<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
<br />
<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="store in viewstate" />
&nbsp;
<asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="read from Session" />
<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
<br />
    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="QueryString" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Store in Cookie" />
    &nbsp;&nbsp;
    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Read from Cookies" />
<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
<br />
<br />
<br />
<br />
<br />
</asp:Content>
