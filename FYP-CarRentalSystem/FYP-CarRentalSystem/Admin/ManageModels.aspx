<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="ManageModels.aspx.cs" Inherits="FYP_CarRentalSystem.Admin.ManageModels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formHeader">
        <h1>Manage Models</h1>
    </div>
    <asp:GridView ID="GridView1" runat="server" Width="100%" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ModelId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ModelId" HeaderText="ModelId" InsertVisible="False" ReadOnly="True" SortExpression="ModelId" />
            <asp:BoundField DataField="CarModel" HeaderText="CarModel" SortExpression="CarModel" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" DeleteCommand="DELETE FROM [Models] WHERE [ModelId] = @ModelId" InsertCommand="INSERT INTO [Models] ([CarModel]) VALUES (@CarModel)" SelectCommand="SELECT * FROM [Models]" UpdateCommand="UPDATE [Models] SET [CarModel] = @CarModel WHERE [ModelId] = @ModelId">
        <DeleteParameters>
            <asp:Parameter Name="ModelId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CarModel" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CarModel" Type="String" />
            <asp:Parameter Name="ModelId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
