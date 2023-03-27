<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FYP_CarRentalSystem.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formHeader">
        <h1>Login</h1>
        
    </div>
    

        <div>
            <table style="width: 100%; margin-top:20px;">
                
                <tr>
                    <td >
                        <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label></td>
                    <td >
                        <asp:TextBox runat="server" ID="UserName" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="UserNameRFV" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label></td>
                    <td >
                        <asp:TextBox runat="server" TextMode="Password" ID="Password" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="PasswordRFV" runat="server" ControlToValidate="Password" ErrorMessage="Password is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >&nbsp;</td>
                    <td >
                        <asp:CheckBox runat="server" Text="Remember me next time." ID="RememberMe"></asp:CheckBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td style="height: 66px" >
                        <%--ValidationGroup="Login1"--%>
                        <asp:Button runat="server" Text="Log In"  ID="LoginButton" OnClick="LoginButton_Click" UseSubmitBehavior="false" ></asp:Button>
                        
                    </td>
                    
                    <td style="height: 66px"></td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td >
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" OnClick="btn_Cancel_Click" />

                    </td>
                    
                    <td>&nbsp;</td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode ="BulletList" ShowSummary ="true" HeaderText="Errors:"/>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        If You are a new user <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Accounts/Register.aspx" runat="server">Register Here</asp:HyperLink>
                    </td>
                    
                    <td></td>
                    
                </tr>
            </table>
        </div>
</asp:Content>
