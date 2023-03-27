<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PagewitholdMasterpage.aspx.cs" Inherits="FYP_CarRentalSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="background-color: #e5e5e5; align-content:center;text-align:center; padding:10px; margin-top: 7px; width: 100%;">
        <h2>Select a car for rent</h2>
           
        <asp:ListView ID="ListView1"  runat="server" DataKeyNames="CarId" DataSourceID="SqlDataSource1" GroupItemCount="3" InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">
                    
                    <asp:Image ID="Image1" runat="server" Height="250" Width="250" ImageUrl='<%# "data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("Image")) %>'/>
                    <br />CarId:
                    <asp:Label ID="CarIdLabel" Visible="true" runat="server" Text='<%# Eval("CarId") %>' />
                    <br />Price(usd):
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />

                    <asp:Label ID="DetailLabel"  Visible="false" runat="server" Text='<%# Eval("Detail") %>' />
                    <asp:Label ID="PopularLabel" Visible="false" runat="server" Text='<%# Eval("Popular") %>' />
                    <asp:Label ID="DamageLabel" Visible="false" runat="server" Text='<%# Eval("Damage") %>' />
                    <asp:Label ID="AvailableLabel" Visible="false" runat="server" Text='<%# Eval("Available") %>' />
                    <asp:Label ID="ModelIdLabel" Visible="false" runat="server" Text='<%# Eval("ModelId") %>' />
                    <asp:Label ID="BrandIdLabel" Visible="false" runat="server" Text='<%# Eval("BrandId") %>' />
                    <asp:Label ID="CategoryIdLabel" Visible="false" runat="server" Text='<%# Eval("CategoryId") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" Width="250" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" Width="250"/>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Check Details" Width="250"/>
                    <br />
                    <a href='Booking.aspx?CarId=<%# Eval("CarId") %>'>Rent It Now!</a>
                    <%--<asp:Button ID="Button1" runat="server" Text="Book Now" Width="250" OnClick="Button1_Click"/>--%>
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">CarId:
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
                <%--<td runat="server" style="">Price(usd):
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
                    <br /></td>--%>
            </InsertItemTemplate>
            <ItemTemplate >
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                     <asp:Image ID="Image1" runat="server" Height="250" Width="250" ImageUrl='<%# "data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("Image")) %>'/>
                    <br />CarId:
                    <asp:Label ID="CarIdLabel" Visible="true" runat="server" Text='<%# Eval("CarId") %>' />
                    <br />Price(usd):
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />

                    <asp:Label ID="DetailLabel"  Visible="false" runat="server" Text='<%# Eval("Detail") %>' />
                    <asp:Label ID="PopularLabel" Visible="false" runat="server" Text='<%# Eval("Popular") %>' />
                    <asp:Label ID="DamageLabel" Visible="false" runat="server" Text='<%# Eval("Damage") %>' />
                    <asp:Label ID="AvailableLabel" Visible="false" runat="server" Text='<%# Eval("Available") %>' />
                    <asp:Label ID="ModelIdLabel" Visible="false" runat="server" Text='<%# Eval("ModelId") %>' />
                    <asp:Label ID="BrandIdLabel" Visible="false" runat="server" Text='<%# Eval("BrandId") %>' />
                    <asp:Label ID="CategoryIdLabel" Visible="false" runat="server" Text='<%# Eval("CategoryId") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" Width="250" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" Width="250"/>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Check Details" Width="250"/>
                    <br />
                    <%--<asp:HyperLink ID="HyperLink1" runat="server" Text="Book Now" NavigateUrl="~/Booking.aspx?CarId=<%# Eval("CarId") %>" ></asp:HyperLink>--%>
                    <a href='Booking.aspx?CarId=<%# Eval("CarId") %>'>Rent It Now!</a>
                    <%--<asp:Button ID="Button1" runat="server" Text="Book Now" Width="250" OnClick="Button1_Click"/>--%>
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" >LinkButton</asp:LinkButton>--%>
                </td>
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
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                     <asp:Image ID="Image1" runat="server" Height="250" Width="250" ImageUrl='<%# "data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("Image")) %>'/>
                    <br />CarId:
                    <asp:Label ID="CarIdLabel" Visible="true" runat="server" Text='<%# Eval("CarId") %>' />
                    <br />Price(usd):
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />

                    <asp:Label ID="DetailLabel"  Visible="false" runat="server" Text='<%# Eval("Detail") %>' />
                    <asp:Label ID="PopularLabel" Visible="false" runat="server" Text='<%# Eval("Popular") %>' />
                    <asp:Label ID="DamageLabel" Visible="false" runat="server" Text='<%# Eval("Damage") %>' />
                    <asp:Label ID="AvailableLabel" Visible="false" runat="server" Text='<%# Eval("Available") %>' />
                    <asp:Label ID="ModelIdLabel" Visible="false" runat="server" Text='<%# Eval("ModelId") %>' />
                    <asp:Label ID="BrandIdLabel" Visible="false" runat="server" Text='<%# Eval("BrandId") %>' />
                    <asp:Label ID="CategoryIdLabel" Visible="false" runat="server" Text='<%# Eval("CategoryId") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" Width="250" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" Width="250"/>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Check Details" Width="250"/>
                    <br />
                    <a href='Booking.aspx?CarId=<%# Eval("CarId") %>'>Rent It Now!</a>
                    <%--<asp:Button ID="Button1" runat="server" Text="Book Now" Width="250" OnClick="Button1_Click"/>--%>
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" DeleteCommand="DELETE FROM [Cars] WHERE [CarId] = @CarId"  SelectCommand="SELECT * FROM [Cars]" UpdateCommand="UPDATE [Cars] SET [Price] = @Price, [Detail] = @Detail, [Image] = @Image, [Popular] = @Popular, [Damage] = @Damage, [Available] = @Available, [ModelId] = @ModelId, [BrandId] = @BrandId, [CategoryId] = @CategoryId WHERE [CarId] = @CarId" InsertCommand="INSERT INTO [Cars] ([Price], [Detail], [Image], [Popular], [Damage], [Available], [ModelId], [BrandId], [CategoryId]) VALUES (@Price, @Detail, @Image, @Popular, @Damage, @Available, @ModelId, @BrandId, @CategoryId)">
            <DeleteParameters>
                <asp:Parameter Name="CarId" Type="Int32" />
            </DeleteParameters>
           
            <InsertParameters>
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Detail" Type="String" />
                <asp:Parameter Name="Image" Type="Object" />
                <asp:Parameter Name="Popular" Type="String" />
                <asp:Parameter Name="Damage" Type="String" />
                <asp:Parameter Name="Available" Type="String" />
                <asp:Parameter Name="ModelId" Type="Int32" />
                <asp:Parameter Name="BrandId" Type="Int32" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
            </InsertParameters>
           
            <UpdateParameters>
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Detail" Type="String" />
                <asp:Parameter Name="Image" Type="Object" />
                <asp:Parameter Name="Popular" Type="String" />
                <asp:Parameter Name="Damage" Type="String" />
                <asp:Parameter Name="Available" Type="String" />
                <asp:Parameter Name="ModelId" Type="Int32" />
                <asp:Parameter Name="BrandId" Type="Int32" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
                <asp:Parameter Name="CarId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
  
</asp:Content>
