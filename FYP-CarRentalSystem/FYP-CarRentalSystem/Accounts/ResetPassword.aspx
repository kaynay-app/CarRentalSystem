<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="FYP_CarRentalSystem.Accounts.ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formHeader">
        <h1> Reset Password</h1>
    </div>
     <h3>You are logged in as :  <%: Context.User.Identity.Name %></h3>
    <div>
        <table style="width: 100%;">
            <tr>
                <td>Old Password:</td>
                <td style="width: 383px">
                    <asp:TextBox ID="txt_OldPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_OldPassword" runat="server" ErrorMessage="Old Password is required."></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>New Password:</td>
                <td style="width: 383px">
                    <asp:TextBox ID="txt_NewPassword" TextMode="Password" runat="server"></asp:TextBox>
                    
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_NewPassword" runat="server" ErrorMessage="New Password is required."></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td style="width: 383px">
                    <asp:TextBox ID="txt_confirm" TextMode="Password" runat="server"></asp:TextBox>
                    
                </td>
                <td><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txt_confirm" ControlToCompare="txt_NewPassword" ErrorMessage="Password do not match with New Password"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 383px">
                    <asp:Button ID="Button1" runat="server" Text="Change" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 383px">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 383px; direction: ltr"><asp:HyperLink ID="HyperLink1" ForeColor="Red" BackColor="Yellow" Visible="false" NavigateUrl="~/Accounts/Login.aspx" runat="server">Please Login first.</asp:HyperLink></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td ">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="width: 383px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
