<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="AvailableCars.aspx.cs" Inherits="FYP_CarRentalSystem.Accountant.AvailableCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Select Available Cars"></asp:Label>
    <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="CarId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CarId" HeaderText="CarId" InsertVisible="False" ReadOnly="True" SortExpression="CarId" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Popular" HeaderText="Hybrid/Electric" SortExpression="Popular" />
            <asp:BoundField DataField="Damage" HeaderText="Accident History" SortExpression="Damage" />
            <asp:BoundField DataField="BrandId" HeaderText="MakeId" SortExpression="BrandId" />
            <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
            <asp:BoundField DataField="ModelId" HeaderText="ModelId" SortExpression="ModelId" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarId], [Price], [Popular], [Damage], [BrandId], [CategoryId], [Available], [ModelId] FROM [Cars] WHERE ([Available] = @Available)">
        <SelectParameters>
            <asp:Parameter DefaultValue="yes" Name="Available" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
