<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="UserDetailOfBookings.aspx.cs" Inherits="FYP_CarRentalSystem.Accountant.UserDetailOfBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formHeader">
        <h1>User Booking Details</h1>
    </div>
    <strong>
    <asp:Label ID="Label1" runat="server" Text="Select a User"></asp:Label>
    </strong>
    <br />
    <br />
    <hr />
    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT DISTINCT [UserName] FROM [Bookings]"></asp:SqlDataSource>
    <br />
    <strong>
    <asp:Label ID="Label2" runat="server" Text="Details"></asp:Label>
    </strong>
    <br />
    <br />
    <hr />
    <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
            <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
            <asp:BoundField DataField="Place" HeaderText="Place" SortExpression="Place" />
            <asp:BoundField DataField="Charges" HeaderText="Charges" SortExpression="Charges" />
            <asp:BoundField DataField="CarId" HeaderText="CarId" SortExpression="CarId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [Id], [StartTime], [EndTime], [Place], [Charges], [CarId], [UserName] FROM [Bookings] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBox1" Name="UserName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="CreateInvoice" runat="server" OnClick="CreateInvoice_Click" Text="Generate Invoice" />
</asp:Content>
