<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Eventmngmnt.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <asp:Calendar ID="Calendar1" runat="server" Height="148px" Width="101px"></asp:Calendar>
</p>
<asp:Calendar ID="Calendar2" runat="server" Height="148px" Width="101px"></asp:Calendar>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyEventsConnectionString2 %>" DeleteCommand="DELETE FROM [eventtbl] WHERE [Eventid] = @original_Eventid AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([Venue] = @original_Venue) OR ([Venue] IS NULL AND @original_Venue IS NULL)) AND (([Program] = @original_Program) OR ([Program] IS NULL AND @original_Program IS NULL)) AND (([EventImage] = @original_EventImage) OR ([EventImage] IS NULL AND @original_EventImage IS NULL))" InsertCommand="INSERT INTO [eventtbl] ([EDate], [Venue], [Program], [EventImage]) VALUES (@EDate, @Venue, @Program, @EventImage)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:MyEventsConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [eventtbl]" UpdateCommand="UPDATE [eventtbl] SET [EDate] = @EDate, [Venue] = @Venue, [Program] = @Program, [EventImage] = @EventImage WHERE [Eventid] = @original_Eventid AND (([EDate] = @original_EDate) OR ([EDate] IS NULL AND @original_EDate IS NULL)) AND (([Venue] = @original_Venue) OR ([Venue] IS NULL AND @original_Venue IS NULL)) AND (([Program] = @original_Program) OR ([Program] IS NULL AND @original_Program IS NULL)) AND (([EventImage] = @original_EventImage) OR ([EventImage] IS NULL AND @original_EventImage IS NULL))">
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
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
</p>
</asp:Content>
