<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="DamageCars.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.DamageCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lbl_user" runat="server" Text="userName"></asp:Label>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="CarId" DataSourceID="SqlDataSource1" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">CarId:
                <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' />
                <br />Price(usd):
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />Detail:
                <asp:Label ID="DetailLabel" runat="server" Text='<%# Eval("Detail") %>' />
                <br />Electric/Hybrid:
                <asp:Label ID="PopularLabel" runat="server" Text='<%# Eval("Popular") %>' />
                <br />Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
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
                <br />UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />Remarks:
                <asp:Label ID="RemarksLabel" runat="server" Text='<%# Eval("Remarks") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <br /></td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">CarId:
                <asp:Label ID="CarIdLabel1" runat="server" Text='<%# Eval("CarId") %>' />
                <br />Price(usd):
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <%--<br />Detail:
                <asp:TextBox ID="DetailTextBox" runat="server" Text='<%# Bind("Detail") %>' />
                <br />Electric/Hybrid:
                <asp:TextBox ID="PopularTextBox" runat="server" Text='<%# Bind("Popular") %>' />
                <br />Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />--%>
                <br />Accident History:
                <asp:TextBox ID="DamageTextBox" runat="server" Text='<%# Bind("Damage") %>' />
                <br />Available:
                <asp:TextBox ID="AvailableTextBox" runat="server" Text='<%# Bind("Available") %>' />
                <%--<br />ModelId:
                <asp:TextBox ID="ModelIdTextBox" runat="server" Text='<%# Bind("ModelId") %>' />
                <br />BrandId:
                <asp:TextBox ID="BrandIdTextBox" runat="server" Text='<%# Bind("BrandId") %>' />
                <br />CategoryId:
                <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                <br />UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />--%>
                <br />Remarks:
                <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
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
                <br />Electric/Hybrid:
                <asp:TextBox ID="PopularTextBox" runat="server" Text='<%# Bind("Popular") %>' />
                <br />Image:
                <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
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
                <br />UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />Remarks:
                <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">CarId:
                <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' />
                <br />Price(usd):
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />Detail:
                <asp:Label ID="DetailLabel" runat="server" Text='<%# Eval("Detail") %>' />
                <br />Electric/Hybrid:
                <asp:Label ID="PopularLabel" runat="server" Text='<%# Eval("Popular") %>' />
                <br />Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
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
                <br />UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />Remarks:
                <asp:Label ID="RemarksLabel" runat="server" Text='<%# Eval("Remarks") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
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
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">CarId:
                <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' />
                <br />Price(usd):
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />Detail:
                <asp:Label ID="DetailLabel" runat="server" Text='<%# Eval("Detail") %>' />
                <br />Electric/Hybrid:
                <asp:Label ID="PopularLabel" runat="server" Text='<%# Eval("Popular") %>' />
                <br />Image:
                <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
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
                <br />UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />Remarks:
                <asp:Label ID="RemarksLabel" runat="server" Text='<%# Eval("Remarks") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <br /></td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" DeleteCommand="DELETE FROM [Cars] WHERE [CarId] = @CarId" InsertCommand="INSERT INTO [Cars] ([Price], [Detail], [Popular], [Image], [Damage], [Available], [ModelId], [BrandId], [CategoryId], [UserName], [Remarks]) VALUES (@Price, @Detail, @Popular, @Image, @Damage, @Available, @ModelId, @BrandId, @CategoryId, @UserName, @Remarks)" SelectCommand="SELECT [CarId], [Price], [Detail], [Popular], [Image], [Damage], [Available], [ModelId], [BrandId], [CategoryId], [UserName], [Remarks] FROM [Cars] WHERE (([Damage] = @Damage) AND ([UserName] = @UserName))" UpdateCommand="UPDATE [Cars] SET [Price] = @Price,  [Damage] = @Damage, [Available] = @Available, [Remarks] = @Remarks WHERE [CarId] = @CarId">
        <DeleteParameters>
            <asp:Parameter Name="CarId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Detail" Type="String" />
            <asp:Parameter Name="Popular" Type="String" />
            <asp:Parameter Name="Image" Type="Object" />
            <asp:Parameter Name="Damage" Type="String" />
            <asp:Parameter Name="Available" Type="String" />
            <asp:Parameter Name="ModelId" Type="Int32" />
            <asp:Parameter Name="BrandId" Type="Int32" />
            <asp:Parameter Name="CategoryId" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Remarks" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="yes" Name="Damage" Type="String" />
            <asp:ControlParameter ControlID="lbl_user" Name="UserName" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Price" Type="String" />
            <%--<asp:Parameter Name="Detail" Type="String" />
            <asp:Parameter Name="Popular" Type="String" />--%>
            <%--<asp:Parameter Name="Image" Type="Object" />--%>
            <asp:Parameter Name="Damage" Type="String" />
            <asp:Parameter Name="Available" Type="String" />
            <%--<asp:Parameter Name="ModelId" Type="Int32" />
            <asp:Parameter Name="BrandId" Type="Int32" />
            <asp:Parameter Name="CategoryId" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />--%>
            <asp:Parameter Name="Remarks" Type="String" />
            <asp:Parameter Name="CarId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
