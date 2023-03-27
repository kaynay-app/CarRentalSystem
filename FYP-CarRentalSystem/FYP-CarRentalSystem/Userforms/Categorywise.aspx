<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Categorywise.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>Choose a Category</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CarCategory" DataValueField="CategoryId" AutoPostBack="true">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="CarId" DataSourceID="SqlDataSource2" GroupItemCount="3">
                    <AlternatingItemTemplate>
                        <td runat="server" style="background-color: #FFF8DC;">

                            <asp:Image ID="Image1" runat="server" Height="250" Width="250" ImageUrl='<%# "data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("Image")) %>' />
                            <br />
                            CarId:
                    <asp:Label ID="CarIdLabel" Visible="true" runat="server" Text='<%# Eval("CarId") %>' />
                            <br />
                            Price(usd):
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />

                            <asp:Label ID="DetailLabel" Visible="false" runat="server" Text='<%# Eval("Detail") %>' />
                            <asp:Label ID="PopularLabel" Visible="false" runat="server" Text='<%# Eval("Popular") %>' />
                            <asp:Label ID="DamageLabel" Visible="false" runat="server" Text='<%# Eval("Damage") %>' />
                            <asp:Label ID="AvailableLabel" Visible="false" runat="server" Text='<%# Eval("Available") %>' />
                            <asp:Label ID="ModelIdLabel" Visible="false" runat="server" Text='<%# Eval("ModelId") %>' />
                            <asp:Label ID="BrandIdLabel" Visible="false" runat="server" Text='<%# Eval("BrandId") %>' />
                            <asp:Label ID="CategoryIdLabel" Visible="false" runat="server" Text='<%# Eval("CategoryId") %>' />
                            <br />
                            <a class="linkclass" href='<%#Page.ResolveUrl("~/Userforms/Detail.aspx?CarId=")+Eval("CarId") %>'>Check Details</a>
                            <br />
                            <a class="linkclass" href='<%#Page.ResolveUrl("~/Userforms/Booking.aspx?CarId=")+Eval("CarId") %>'>Rent It Now</a>
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
                        <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                            <tr>
                                <td>Desired Car is not available at this time.</td>
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
                            <br />
                            Detail:
                            <asp:TextBox ID="DetailTextBox" runat="server" Text='<%# Bind("Detail") %>' />
                            <br />
                            Image:
                            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                            <br />
                            Electric/Hybrid:
                            <asp:TextBox ID="PopularTextBox" runat="server" Text='<%# Bind("Popular") %>' />
                            <br />
                            Accident History:
                            <asp:TextBox ID="DamageTextBox" runat="server" Text='<%# Bind("Damage") %>' />
                            <br />
                            Available:
                            <asp:TextBox ID="AvailableTextBox" runat="server" Text='<%# Bind("Available") %>' />
                            <br />
                            ModelId:
                            <asp:TextBox ID="ModelIdTextBox" runat="server" Text='<%# Bind("ModelId") %>' />
                            <br />
                            BrandId:
                            <asp:TextBox ID="BrandIdTextBox" runat="server" Text='<%# Bind("BrandId") %>' />
                            <br />
                            CategoryId:
                            <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br />
                        </td>
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
                            <a class="linkclass" href='<%#Page.ResolveUrl("~/Userforms/Detail.aspx?CarId=")+Eval("CarId") %>'>Check Details</a>
                            <br />
                            <a class="linkclass" href='<%#Page.ResolveUrl("~/Userforms/Booking.aspx?CarId=")+Eval("CarId") %>'>Rent It Now</a>
                </td>
            </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
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
                            <a class="linkclass" href='<%#Page.ResolveUrl("~/Userforms/Detail.aspx?CarId=")+Eval("CarId") %>'>Check Details</a>
                            <br />
                            <a class="linkclass" href='<%#Page.ResolveUrl("~/Userforms/Booking.aspx?CarId=")+Eval("CarId") %>'>Rent It Now</a>
                </td>
            </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT * FROM [Cars] WHERE ([CategoryId] = @CategoryId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="CategoryId" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>

    </table>

</asp:Content>
