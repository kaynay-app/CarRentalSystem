<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="ManageCategory.aspx.cs" Inherits="FYP_CarRentalSystem.Admin.ManageCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formHeader">
        <h1>Manage Categories</h1>
    </div>
    <asp:GridView ID="GridView1" Width="100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CategoryId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" InsertVisible="False" ReadOnly="True" SortExpression="CategoryId" />
            <asp:BoundField DataField="CarCategory" HeaderText="CarCategory" SortExpression="CarCategory" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" DeleteCommand="DELETE FROM [Categories] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Categories] ([CarCategory]) VALUES (@CarCategory)" SelectCommand="SELECT * FROM [Categories]" UpdateCommand="UPDATE [Categories] SET [CarCategory] = @CarCategory WHERE [CategoryId] = @CategoryId">
        <DeleteParameters>
            <asp:Parameter Name="CategoryId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CarCategory" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CarCategory" Type="String" />
            <asp:Parameter Name="CategoryId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
