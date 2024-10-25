<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="MyWebAppOne.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" PageSize="4">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="pimage" HeaderText="pimage" SortExpression="pimage" />
                <asp:ImageField DataAlternateTextField="pimage">
                </asp:ImageField>
                <asp:ImageField>
                    <ControlStyle Height="100px" />
                </asp:ImageField>
                <asp:ImageField DataImageUrlField="pimage">
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
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="pid" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="pimage" HeaderText="pimage" SortExpression="pimage" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="pid" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">pid:
                <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
                <br />
                pname:
                <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                pimage:
                <asp:Label ID="pimageLabel" runat="server" Text='<%# Eval("pimage") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">pid:
                <asp:Label ID="pidLabel1" runat="server" Text='<%# Eval("pid") %>' />
                <br />
                pname:
                <asp:TextBox ID="pnameTextBox" runat="server" Text='<%# Bind("pname") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                pimage:
                <asp:Image ID="Image5" runat="server" ImageUrl="pimage" />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">pid:
                <asp:TextBox ID="pidTextBox" runat="server" Text='<%# Bind("pid") %>' />
                <br />pname:
                <asp:TextBox ID="pnameTextBox" runat="server" Text='<%# Bind("pname") %>' />
                <br />description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />pimage:
                <asp:Image ID="Image6" runat="server" ImageUrl='<%# Eval("pimage") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">pid:
                <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
                <br />
                pname:
                <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                pimage:
                <asp:Label ID="pimageLabel" runat="server" Text='<%# Eval("pimage") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </table>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">pid:
                <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
                <br />
                pname:
                <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                pimage:
                <asp:Label ID="pimageLabel" runat="server" Text='<%# Eval("pimage") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pid], [pname], [description], [price], [pimage] FROM [products]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [products] WHERE [pid] = @original_pid AND (([pname] = @original_pname) OR ([pname] IS NULL AND @original_pname IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([pimage] = @original_pimage) OR ([pimage] IS NULL AND @original_pimage IS NULL))" InsertCommand="INSERT INTO [products] ([pid], [pname], [description], [price], [pimage]) VALUES (@pid, @pname, @description, @price, @pimage)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [products] SET [pname] = @pname, [description] = @description, [price] = @price, [pimage] = @pimage WHERE [pid] = @original_pid AND (([pname] = @original_pname) OR ([pname] IS NULL AND @original_pname IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([pimage] = @original_pimage) OR ([pimage] IS NULL AND @original_pimage IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_pid" Type="String" />
                <asp:Parameter Name="original_pname" Type="String" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_price" Type="Int32" />
                <asp:Parameter Name="original_pimage" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pid" Type="String" />
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="pimage" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="pimage" Type="String" />
                <asp:Parameter Name="original_pid" Type="String" />
                <asp:Parameter Name="original_pname" Type="String" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_price" Type="Int32" />
                <asp:Parameter Name="original_pimage" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
