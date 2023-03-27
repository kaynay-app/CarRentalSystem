<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="ManageRoles.aspx.cs" Inherits="FYP_CarRentalSystem.Admin.ManageRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="btn_addRole" runat="server" Text="Add New Role" OnClick="btn_addRole_Click" />

    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [UserName] FROM [Users]"></asp:SqlDataSource>
    <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Roles" DataValueField="Roles"></asp:ListBox>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [Roles] FROM [Roles]"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="AddUser(s)ToRole" OnClick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="Red" Text="Label"></asp:Label>
    
    
</asp:Content>
