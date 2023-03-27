<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="NewModel.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.NewModel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <div>
    <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Add New Model:<asp:TextBox ID="txt_model" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" id="erorlabel">
                        <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btn_Add" runat="server" OnClick="btn_Add_Click" Text="Add" />
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="CarModel" HeaderText="CarModel" SortExpression="CarModel" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT DISTINCT [CarModel] FROM [Models]"></asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
       
        </div>
    
    </div>
</asp:Content>
