<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="AllUsersDetail.aspx.cs" Inherits="FYP_CarRentalSystem.Admin.AllUsersDetail" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formHeader">
        <h1> All User(s) Detail</h1>
    </div>
    <div class="section">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="AltEmail" HeaderText="AltEmail" SortExpression="AltEmail" />
            <asp:BoundField DataField="AltContact" HeaderText="AltContact" SortExpression="AltContact" />
            <asp:BoundField DataField="DriverLicInfo" HeaderText="DriverLicInfo" SortExpression="DriverLicInfo" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([UserName], [FirstName], [LastName], [Password], [EmailId], [ContactNo], [Address], [AltEmail], [AltContact], [DriverLicInfo]) VALUES (@UserName, @FirstName, @LastName, @Password, @EmailId, @ContactNo, @Address, @AltEmail, @AltContact, @DriverLicInfo)" SelectCommand="SELECT * FROM [Users] ORDER BY [UserName], [Id]" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [EmailId] = @EmailId, [ContactNo] = @ContactNo, [Address] = @Address, [AltEmail] = @AltEmail, [AltContact] = @AltContact, [DriverLicInfo] = @DriverLicInfo WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="AltEmail" Type="String" />
            <asp:Parameter Name="AltContact" Type="String" />
            <asp:Parameter Name="DriverLicInfo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="AltEmail" Type="String" />
            <asp:Parameter Name="AltContact" Type="String" />
            <asp:Parameter Name="DriverLicInfo" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Export to Excel" />
    
    </div>
   
</asp:Content>
