<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="UserDetailOfCarRent.aspx.cs" Inherits="FYP_CarRentalSystem.Accountant.UserDetailOfCarRent" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="formHeader">
        <h1>User Detail of Rent</h1>
    </div>
    <strong>
    <asp:Label ID="Label1" runat="server" Text="Select a User"></asp:Label>
    </strong>
    <br />
    <br />
    <hr />
    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT DISTINCT [UserName] FROM [Cars]"></asp:SqlDataSource>
    <br />
    <strong>
    <asp:Label ID="Label2" runat="server" Text="Details"></asp:Label>
    </strong>
    <br />
    <br />
    <hr />
    <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="CarId" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="CarId" HeaderText="CarId" InsertVisible="False" ReadOnly="True" SortExpression="CarId" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Popular" HeaderText="Popular" SortExpression="Popular" />
            <asp:BoundField DataField="Damage" HeaderText="Damage" SortExpression="Damage" />
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
            <asp:BoundField DataField="ModelId" HeaderText="ModelId" SortExpression="ModelId" />
            <asp:BoundField DataField="BrandId" HeaderText="BrandId" SortExpression="BrandId" />
            <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarId], [Price], [Popular], [Damage], [Available], [ModelId], [BrandId], [CategoryId], [UserName] FROM [Cars] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBox1" Name="UserName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
