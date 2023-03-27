<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="FYP_CarRentalSystem.Dealer.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function myFunction() {
            var x = document.getElementById("snackbar");
            x.className = "show";
            setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
        }
    </script>
    <style>
        #snackbar {
            visibility: hidden;
            min-width: 250px;
            margin-left: -125px;
            background-color: green;
            color: white;
            text-align: center;
            border-radius: 10px;
            padding: 20px;
            position: fixed;
            z-index: 1;
            left: 50%;
            bottom: 120px;
            font-size: 20px;
        }

            #snackbar.show {
                visibility: visible;
                -webkit-animation: fadein 0.8s, fadeout 0.8s 4.5s;
                animation: fadein 0.8s, fadeout 0.8s 4.5s;
            }

        @-webkit-keyframes fadein {
            from {
                bottom: 0;
                opacity: 0;
            }

            to {
                bottom: 120px;
                opacity: 1;
            }
        }

        @keyframes fadein {
            from {
                bottom: 0;
                opacity: 0;
            }

            to {
                bottom: 120px;
                opacity: 1;
            }
        }

        @-webkit-keyframes fadeout {
            from {
                bottom: 120px;
                opacity: 1;
            }

            to {
                bottom: 0;
                opacity: 0;
            }
        }

        @keyframes fadeout {
            from {
                bottom: 120px;
                opacity: 1;
            }

            to {
                bottom: 0;
                opacity: 0;
            }
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
    <div class="formHeader">
        <h1>Update Cars</h1>
    </div>
    <table style="width: 100%;">
        <tr>
            <td>Car Id:</td>
            <td>
                <asp:DropDownList ID="dd_carid" runat="server" DataSourceID="SqlDataSource1" DataTextField="CarId" DataValueField="CarId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarId] FROM [Cars] WHERE ([CarId] = @CarId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="CarId" QueryStringField="CarId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Brand:</td>
            <td>
                <asp:DropDownList ID="dd_brands" runat="server" DataSourceID="SqlDataSource2" DataTextField="CarBrand" DataValueField="BrandId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT * FROM [Brands]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Model:</td>
            <td>
                <asp:DropDownList ID="dd_model" runat="server" DataSourceID="SqlDataSource3" DataTextField="CarModel" DataValueField="ModelId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT * FROM [Models]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Category:</td>
            <td>
                <asp:DropDownList ID="dd_category" runat="server" DataSourceID="SqlDataSource4" DataTextField="CarCategory" DataValueField="CategoryId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Price(usd):</td>
            <td>
                <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Detail:</td>
            <td>
                <asp:TextBox ID="txt_detail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Electric/Hybrid:</td>
            <td>
                <asp:CheckBox ID="cb_Popular" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Available</td>
            <td>
                <asp:CheckBox ID="cb_Available" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Accident History:</td>
            <td>
                <asp:CheckBox ID="cb_Damage" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" BorderColor="Red" BorderStyle="Double" BorderWidth="10px" Height="335px" Width="410px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Change Image:</td>
            <td>
                <asp:FileUpload ID="upload_Image" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
     <div id="snackbar">
                <p id="error_para" runat="server">
                    There is an error occured.
                </p>
            </div>
</asp:Content>
