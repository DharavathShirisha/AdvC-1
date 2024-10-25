<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyEvents.aspx.cs" Inherits="Eventmngmnt.MyEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Eventid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Eventid" HeaderText="Eventid" InsertVisible="False" ReadOnly="True" SortExpression="Eventid" />
        <asp:BoundField DataField="EDate" HeaderText="EDate" SortExpression="EDate" />
        <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
        <asp:BoundField DataField="Program" HeaderText="Program" SortExpression="Program" />
        <asp:BoundField DataField="EventImage" HeaderText="EventImage" SortExpression="EventImage" />
        <asp:ImageField DataImageUrlField="EventImage">
        </asp:ImageField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyEventsConnectionString3 %>" DeleteCommand="DELETE FROM [eventtbl] WHERE [Eventid] = @original_Eventid AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([Venue] = @original_Venue) OR ([Venue] IS NULL AND @original_Venue IS NULL)) AND (([Program] = @original_Program) OR ([Program] IS NULL AND @original_Program IS NULL)) AND (([EventImage] = @original_EventImage) OR ([EventImage] IS NULL AND @original_EventImage IS NULL))" InsertCommand="INSERT INTO [eventtbl] ([EDate], [Venue], [Program], [EventImage]) VALUES (@EDate, @Venue, @Program, @EventImage)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:MyEventsConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [eventtbl]" UpdateCommand="UPDATE [eventtbl] SET [EDate] = @EDate, [Venue] = @Venue, [Program] = @Program, [EventImage] = @EventImage WHERE [Eventid] = @original_Eventid AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([Venue] = @original_Venue) OR ([Venue] IS NULL AND @original_Venue IS NULL)) AND (([Program] = @original_Program) OR ([Program] IS NULL AND @original_Program IS NULL)) AND (([EventImage] = @original_EventImage) OR ([EventImage] IS NULL AND @original_EventImage IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Eventid" Type="Int32" />
        <asp:Parameter Name="original_EDate" Type="DateTime" />
        <asp:Parameter Name="original_Venue" Type="String" />
        <asp:Parameter Name="original_Program" Type="String" />
        <asp:Parameter Name="original_EventImage" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="EDate" Type="DateTime" />
        <asp:Parameter Name="Venue" Type="String" />
        <asp:Parameter Name="Program" Type="String" />
        <asp:Parameter Name="EventImage" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="EDate" Type="DateTime" />
        <asp:Parameter Name="Venue" Type="String" />
        <asp:Parameter Name="Program" Type="String" />
        <asp:Parameter Name="EventImage" Type="String" />
        <asp:Parameter Name="original_Eventid" Type="Int32" />
        <asp:Parameter Name="original_EDate" Type="DateTime" />
        <asp:Parameter Name="original_Venue" Type="String" />
        <asp:Parameter Name="original_Program" Type="String" />
        <asp:Parameter Name="original_EventImage" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
