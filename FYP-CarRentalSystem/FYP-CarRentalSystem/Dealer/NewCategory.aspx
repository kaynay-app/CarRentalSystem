<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="NewCategory.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.NewCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    
       <table style="width:100%;">
              
                 <tr>
                    <td class="auto-style1" style="width: 150px">Add New Category:</td>
                    <td>
                        <asp:TextBox ID="txt_category" runat="server"></asp:TextBox>
                    </td>
                </tr>
               
                
            </table>
        <br />
        <asp:Label ID="erorlabel" runat="server" Text="Label"></asp:Label>
        <br />
    <br />

        <asp:Button ID="btn_Add" runat="server" OnClick="btn_Add_Click" Text="Add" />
        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" />
        <br />
        <br />
        <div>
            <br />
            <asp:Label Text="Already Added Categories" runat="server" ></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CarCategory" HeaderText="CarCategory" SortExpression="CarCategory" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT DISTINCT [CarCategory] FROM [Categories]"></asp:SqlDataSource>
            <br />
        </div>

    </div>
</asp:Content>
