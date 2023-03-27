<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="ManageBrands.aspx.cs" Inherits="FYP_CarRentalSystem.Admin.ManageBrands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formHeader">
        <h1>Manage Makes</h1>
    </div>
    <asp:GridView ID="GridView1" runat="server" Width="100%" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BrandId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="BrandId" HeaderText="MakeId" InsertVisible="False" ReadOnly="True" SortExpression="BrandId" />
            <asp:BoundField DataField="CarBrand" HeaderText="Car Make" SortExpression="CarBrand" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" DeleteCommand="DELETE FROM [Brands] WHERE [BrandId] = @BrandId" InsertCommand="INSERT INTO [Brands] ([CarBrand]) VALUES (@CarBrand)" SelectCommand="SELECT * FROM [Brands]" UpdateCommand="UPDATE [Brands] SET [CarBrand] = @CarBrand WHERE [BrandId] = @BrandId">
        <DeleteParameters>
            <asp:Parameter Name="BrandId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CarBrand" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CarBrand" Type="String" />
            <asp:Parameter Name="BrandId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
