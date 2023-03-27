<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="BookedCars.aspx.cs" Inherits="FYP_CarRentalSystem.Accountant.BookedCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label2" runat="server" Text="Select All Booked Cars"></asp:Label>
    <asp:GridView ID="GridView2" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="CarId" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="CarId" HeaderText="CarId" InsertVisible="False" ReadOnly="True" SortExpression="CarId" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Popular" HeaderText="Popular" SortExpression="Popular" />
            <asp:BoundField DataField="Damage" HeaderText="Damage" SortExpression="Damage" />
            <asp:BoundField DataField="ModelId" HeaderText="ModelId" SortExpression="ModelId" />
            <asp:BoundField DataField="BrandId" HeaderText="BrandId" SortExpression="BrandId" />
            <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarId], [Price], [Popular], [Damage], [ModelId], [BrandId], [CategoryId], [Available] FROM [Cars] WHERE ([Available] = @Available)">
        <SelectParameters>
            <asp:Parameter DefaultValue="no" Name="Available" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>
