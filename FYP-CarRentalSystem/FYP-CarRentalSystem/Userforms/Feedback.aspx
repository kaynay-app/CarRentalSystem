<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="formHeader">
        <h1>Feeback</h1>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Message:"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Columns="12" Rows="12" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Label ID="erorlabel" runat="server" Visible="false" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />

</asp:Content>
