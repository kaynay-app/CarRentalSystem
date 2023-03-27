<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="NewBrand.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.NewBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
    
        <div>
            <table">
                <tr>
                    <td class="auto-style1">Add New Brand:<asp:TextBox ID="txt_brand" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btn_Add" runat="server" OnClick="btn_Add_Click" Text="Add" />
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" />
                    </td>
                </tr>
            </table>
            <div >
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="CarBrand" HeaderText="CarBrand" SortExpression="CarBrand" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT DISTINCT [CarBrand] FROM [Brands]"></asp:SqlDataSource>
                
            </div>
        </div>
    
    </div>
</asp:Content>
