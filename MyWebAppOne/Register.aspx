<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyWebAppOne.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 1197px;
            height: 147px;
        }
        .auto-style6 {
            width: 276px;
        }
        .auto-style7 {
            width: 327px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            margin-left: 1px;
        }
        .auto-style10 {
            width: 434px;
            height: 23px;
        }
        .auto-style11 {
            width: 434px;
            height: 26px;
        }
        .auto-style13 {
            width: 434px;
            height: 25px;
        }
        .auto-style17 {
        width: 276px;
        height: 23px;
    }
    .auto-style18 {
        width: 276px;
        height: 25px;
    }
    .auto-style19 {
        width: 434px;
        height: 8px;
    }
    .auto-style20 {
        width: 276px;
        height: 8px;
    }
    .auto-style21 {
        height: 8px;
    }
        .auto-style22 {
            width: 276px;
            height: 37px;
        }
        .auto-style23 {
            width: 434px;
            height: 37px;
        }
        .auto-style24 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function myfunc(source, args) {
            if (args.Value == "india" || args.Value == "us" || args.Value == "canada")
            {
                args.IsValid = true;
            }
            else { args.IsValid = false; }
        }
    </script>
    <p class="auto-style5">
        <table style="width:100%;">
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Height="22px" BackColor="Black" BorderColor="#66FFFF" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="Username cannot be valid"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" SkinID="1"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="Label3" runat="server" Text="ConformPassword"></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox3" runat="server" SkinID="1"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="None" ErrorMessage="Password mismatch Test it"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="you are not eligible" MaximumValue="80" MinimumValue="12" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" Display="None" ErrorMessage="Wrong Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label6" runat="server" Text="Nationality"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox6" runat="server" Height="22px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="wrong criteria" OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="myfunc"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="uname" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="uname" HeaderText="uname" ReadOnly="True" SortExpression="uname" />
                            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
                            <asp:ImageField DataImageUrlField="pimage">
                            </asp:ImageField>
                            <asp:ImageField>
                            </asp:ImageField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:onlineshoppingdbConnectionString %>" DeleteCommand="DELETE FROM [Registertbl] WHERE [uname] = @original_uname AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([nationality] = @original_nationality) OR ([nationality] IS NULL AND @original_nationality IS NULL))" InsertCommand="INSERT INTO [Registertbl] ([uname], [password], [age], [DOB], [email], [nationality]) VALUES (@uname, @password, @age, @DOB, @email, @nationality)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:onlineshoppingdbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Registertbl]" UpdateCommand="UPDATE [Registertbl] SET [password] = @password, [age] = @age, [DOB] = @DOB, [email] = @email, [nationality] = @nationality WHERE [uname] = @original_uname AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([nationality] = @original_nationality) OR ([nationality] IS NULL AND @original_nationality IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_uname" Type="String" />
                            <asp:Parameter Name="original_password" Type="String" />
                            <asp:Parameter Name="original_age" Type="Int32" />
                            <asp:Parameter Name="original_DOB" Type="DateTime" />
                            <asp:Parameter Name="original_email" Type="String" />
                            <asp:Parameter Name="original_nationality" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="uname" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="age" Type="Int32" />
                            <asp:Parameter Name="DOB" Type="DateTime" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="nationality" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="age" Type="Int32" />
                            <asp:Parameter Name="DOB" Type="DateTime" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="nationality" Type="String" />
                            <asp:Parameter Name="original_uname" Type="String" />
                            <asp:Parameter Name="original_password" Type="String" />
                            <asp:Parameter Name="original_age" Type="Int32" />
                            <asp:Parameter Name="original_DOB" Type="DateTime" />
                            <asp:Parameter Name="original_email" Type="String" />
                            <asp:Parameter Name="original_nationality" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style8">
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
