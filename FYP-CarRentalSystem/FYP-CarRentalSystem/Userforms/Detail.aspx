<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="CarId" DataSourceID="SqlDataSource1" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFFFF;color: #284775;">CarId:
                <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' />
                <br />Price(usd):
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />Detail:
                <asp:Label ID="DetailLabel" runat="server" Text='<%# Eval("Detail") %>' />
                <br />Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                <br />Electric/Hybrid:
                <asp:Label ID="PopularLabel" runat="server" Text='<%# Eval("Popular") %>' />
                <br />Accident History:
                <asp:Label ID="DamageLabel" runat="server" Text='<%# Eval("Damage") %>' />
                <br />Available:
                <asp:Label ID="AvailableLabel" runat="server" Text='<%# Eval("Available") %>' />
                <br />ModelId:
                <asp:Label ID="ModelIdLabel" runat="server" Text='<%# Eval("ModelId") %>' />
                <br />BrandId:
                <asp:Label ID="BrandIdLabel" runat="server" Text='<%# Eval("BrandId") %>' />
                <br />CategoryId:
                <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                <br /></td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #999999;">CarId:
                <asp:Label ID="CarIdLabel1" runat="server" Text='<%# Eval("CarId") %>' />
                <br />Price(usd):
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />Detail:
                <asp:TextBox ID="DetailTextBox" runat="server" Text='<%# Bind("Detail") %>' />
                <br />Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />Electric/Hybrid:
                <asp:TextBox ID="PopularTextBox" runat="server" Text='<%# Bind("Popular") %>' />
                <br />Accident History:
                <asp:TextBox ID="DamageTextBox" runat="server" Text='<%# Bind("Damage") %>' />
                <br />Available:
                <asp:TextBox ID="AvailableTextBox" runat="server" Text='<%# Bind("Available") %>' />
                <br />ModelId:
                <asp:TextBox ID="ModelIdTextBox" runat="server" Text='<%# Bind("ModelId") %>' />
                <br />BrandId:
                <asp:TextBox ID="BrandIdTextBox" runat="server" Text='<%# Bind("BrandId") %>' />
                <br />CategoryId:
                <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">Price(usd):
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />Detail:
                <asp:TextBox ID="DetailTextBox" runat="server" Text='<%# Bind("Detail") %>' />
                <br />Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                <br />Electric/Hybrid:
                <asp:TextBox ID="PopularTextBox" runat="server" Text='<%# Bind("Popular") %>' />
                <br />Accident History:
                <asp:TextBox ID="DamageTextBox" runat="server" Text='<%# Bind("Damage") %>' />
                <br />Available:
                <asp:TextBox ID="AvailableTextBox" runat="server" Text='<%# Bind("Available") %>' />
                <br />ModelId:
                <asp:TextBox ID="ModelIdTextBox" runat="server" Text='<%# Bind("ModelId") %>' />
                <br />BrandId:
                <asp:TextBox ID="BrandIdTextBox" runat="server" Text='<%# Bind("BrandId") %>' />
                <br />CategoryId:
                <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #E0FFFF;color: #333333;">CarId:
                <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' />
                <br />Price(usd):
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />Detail:
                <asp:Label ID="DetailLabel" runat="server" Text='<%# Eval("Detail") %>' />
                <br />Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                <br />Electric/Hybrid:
                <asp:Label ID="PopularLabel" runat="server" Text='<%# Eval("Popular") %>' />
                <br />Accident History:
                <asp:Label ID="DamageLabel" runat="server" Text='<%# Eval("Damage") %>' />
                <br />Available:
                <asp:Label ID="AvailableLabel" runat="server" Text='<%# Eval("Available") %>' />
                <br />ModelId:
                <asp:Label ID="ModelIdLabel" runat="server" Text='<%# Eval("ModelId") %>' />
                <br />BrandId:
                <asp:Label ID="BrandIdLabel" runat="server" Text='<%# Eval("BrandId") %>' />
                <br />CategoryId:
                <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                <br /></td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">CarId:
                <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' />
                <br />Price(usd):
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />Detail:
                <asp:Label ID="DetailLabel" runat="server" Text='<%# Eval("Detail") %>' />
                <br />Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                <br />Electric/Hybrid:
                <asp:Label ID="PopularLabel" runat="server" Text='<%# Eval("Popular") %>' />
                <br />Accident History:
                <asp:Label ID="DamageLabel" runat="server" Text='<%# Eval("Damage") %>' />
                <br />Available:
                <asp:Label ID="AvailableLabel" runat="server" Text='<%# Eval("Available") %>' />
                <br />ModelId:
                <asp:Label ID="ModelIdLabel" runat="server" Text='<%# Eval("ModelId") %>' />
                <br />BrandId:
                <asp:Label ID="BrandIdLabel" runat="server" Text='<%# Eval("BrandId") %>' />
                <br />CategoryId:
                <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
                <br /></td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT * FROM [Cars] WHERE ([CarId] = @CarId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CarId" QueryStringField="CarId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
