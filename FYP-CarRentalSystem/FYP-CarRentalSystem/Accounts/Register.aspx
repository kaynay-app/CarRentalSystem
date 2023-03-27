<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FYP_CarRentalSystem.Register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="formHeader">
    <h1>Register</h1>
</div>
    <div>
    
        <div>
            <br />
            <table style="width:100%;">

                <tr>
                    <td class="auto-style11">UserName:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txt_UserName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="UserNameRFV" runat="server" ControlToValidate="txt_UserName" ErrorMessage="User name is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">First Name:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_FirstName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style4">Last Name:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_LastName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td >Email Id:</td>
                    <td >
                        <asp:TextBox ID="txt_Email" runat="server" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="EmailRFV" runat="server" ControlToValidate="txt_Email" ErrorMessage="Email is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Contact No:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txt_ContactNo" runat="server"   ></asp:TextBox>
                    </td>
                    <td class="auto-style10">
<asp:RequiredFieldValidator ID="ContactRFV" runat="server" ControlToValidate="txt_ContactNo" ErrorMessage="Contact No is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Address:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_Address" runat="server"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator ID="AddressRFV" runat="server" ControlToValidate="txt_Address" ErrorMessage="Address is required.">

                        </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style4">Alternative Email:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_AltEmail" runat="server" ></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Alternative Contact No:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_AltContact" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Driver Licence No:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_DriverLN" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_Pasword" Width="100%" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator ID="PasswordRFV" runat="server" ControlToValidate="txt_Pasword" ErrorMessage="Password is required.">

                        </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register " />
&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="lbl_result" runat="server" Text="Label" ToolTip="Its Error" ForeColor="Red"></asp:Label>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode ="BulletList" ShowSummary ="true" HeaderText="Errors:"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    
    </div>
    Already Registered <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Accounts/Login.aspx" runat="server">Login here.</asp:HyperLink>
</asp:Content>
