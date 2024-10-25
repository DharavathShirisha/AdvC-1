<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Eventmngmnt.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>Feedback</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Ratings</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    
                      <asp:ListItem Value="">Please Select</asp:ListItem> 
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Bad</asp:ListItem>
                    <asp:ListItem>Satisfactory</asp:ListItem>
                    <asp:ListItem>Excellent</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Description</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Describe something"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4"></td>
        </tr>
    </table>
</asp:Content>
