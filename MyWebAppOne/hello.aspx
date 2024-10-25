<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hello.aspx.cs" Inherits="MyWebAppOne.hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%--<script>
        function()
        alert("Hello JS!")
    </script>--%>
    <form id="form1" runat="server">
        <div>
        </div>
    <p>
        <input id="Button1" type="button" value="button" /></p>
    <p>
        &nbsp;</p>
    <p><input id="Text1" type="text" /></p>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" BackColor="#CC0000" BorderColor="#FF3300" />
        </p>
    </form>
    </body>
</html>
