<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="EventApp.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td>UserName</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username cannot be valid"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Password</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label3" runat="server" Text="ConformPassword"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password mismatch Test it!"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Wrong Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
            &nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
</table>
</asp:Content>
