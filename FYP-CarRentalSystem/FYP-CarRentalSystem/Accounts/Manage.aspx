<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="FYP_CarRentalSystem.Accounts.Manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formHeader">
        <h1>You are logged in as <%: Context.User.Identity.Name %></h1>
    </div>
    <asp:Label ID="lbl_user" runat="server" Text="Username"></asp:Label>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" >
        <AlternatingItemTemplate>
            <span style="background-color: #FFF8DC;">Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            <br />
            EmailId:
            <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            ContactNo:
            <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Eval("ContactNo") %>' />
            <br />
            AltEmail:
            <asp:Label ID="AltEmailLabel" runat="server" Text='<%# Eval("AltEmail") %>' />
            <br />
            AltContact:
            <asp:Label ID="AltContactLabel" runat="server" Text='<%# Eval("AltContact") %>' />
            <br />
            DriverLicInfo:
            <asp:Label ID="DriverLicInfoLabel" runat="server" Text='<%# Eval("DriverLicInfo") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br />
            <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #008A8C; color: #FFFFFF;">Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            EmailId:
            <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            ContactNo:
            <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
            <br />
            AltEmail:
            <asp:TextBox ID="AltEmailTextBox" runat="server" Text='<%# Bind("AltEmail") %>' />
            <br />
            AltContact:
            <asp:TextBox ID="AltContactTextBox" runat="server" Text='<%# Bind("AltContact") %>' />
            <br />
            DriverLicInfo:
            <asp:TextBox ID="DriverLicInfoTextBox" runat="server" Text='<%# Bind("DriverLicInfo") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />EmailId:
            <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
            <br />Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />ContactNo:
            <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
            <br />AltEmail:
            <asp:TextBox ID="AltEmailTextBox" runat="server" Text='<%# Bind("AltEmail") %>' />
            <br />AltContact:
            <asp:TextBox ID="AltContactTextBox" runat="server" Text='<%# Bind("AltContact") %>' />
            <br />DriverLicInfo:
            <asp:TextBox ID="DriverLicInfoTextBox" runat="server" Text='<%# Bind("DriverLicInfo") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #DCDCDC; color: #000000;">Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            <br />
            EmailId:
            <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            ContactNo:
            <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Eval("ContactNo") %>' />
            <br />
            AltEmail:
            <asp:Label ID="AltEmailLabel" runat="server" Text='<%# Eval("AltEmail") %>' />
            <br />
            AltContact:
            <asp:Label ID="AltContactLabel" runat="server" Text='<%# Eval("AltContact") %>' />
            <br />
            DriverLicInfo:
            <asp:Label ID="DriverLicInfoLabel" runat="server" Text='<%# Eval("DriverLicInfo") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br />
            <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            <br />
            EmailId:
            <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            ContactNo:
            <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Eval("ContactNo") %>' />
            <br />
            AltEmail:
            <asp:Label ID="AltEmailLabel" runat="server" Text='<%# Eval("AltEmail") %>' />
            <br />
            AltContact:
            <asp:Label ID="AltContactLabel" runat="server" Text='<%# Eval("AltContact") %>' />
            <br />
            DriverLicInfo:
            <asp:Label ID="DriverLicInfoLabel" runat="server" Text='<%# Eval("DriverLicInfo") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([FirstName], [LastName], [Password], [EmailId], [Address], [ContactNo], [AltEmail], [AltContact], [DriverLicInfo]) VALUES (@FirstName, @LastName, @Password, @EmailId, @Address, @ContactNo, @AltEmail, @AltContact, @DriverLicInfo)" SelectCommand="SELECT [Id], [FirstName], [LastName], [Password], [EmailId], [Address], [ContactNo], [AltEmail], [AltContact], [DriverLicInfo] FROM [Users] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [EmailId] = @EmailId, [Address] = @Address, [ContactNo] = @ContactNo, [AltEmail] = @AltEmail, [AltContact] = @AltContact, [DriverLicInfo] = @DriverLicInfo WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="AltEmail" Type="String" />
            <asp:Parameter Name="AltContact" Type="String" />
            <asp:Parameter Name="DriverLicInfo" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="lbl_user" Name="UserName" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="AltEmail" Type="String" />
            <asp:Parameter Name="AltContact" Type="String" />
            <asp:Parameter Name="DriverLicInfo" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Accounts/ResetPassword.aspx" runat="server">Reset Your Password</asp:HyperLink>
</asp:Content>
