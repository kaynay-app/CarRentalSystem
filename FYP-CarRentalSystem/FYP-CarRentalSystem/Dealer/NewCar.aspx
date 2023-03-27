<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="NewCar.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.NewCar" %>

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
    </style>
    <div>

        <div>
            <br />
            <br />
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Car Brand:</td>
                    <td>
                        <asp:DropDownList ID="dd_carBrand" runat="server" DataSourceID="SqlDataSource1" DataTextField="CarBrand" DataValueField="BrandId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarBrand], [BrandId] FROM [Brands] ORDER BY [BrandId]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="carBrandRFV" runat="server" ControlToValidate="dd_carBrand" ErrorMessage="Car Brand is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Car Model:</td>
                    <td>
                        <asp:DropDownList ID="dd_carModel" runat="server" DataSourceID="SqlDataSource2" DataTextField="CarModel" DataValueField="ModelId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarModel], [ModelId] FROM [Models] ORDER BY [ModelId]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dd_carModel" ErrorMessage="Car Model is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Car Category:</td>
                    <td>
                        <asp:DropDownList ID="dd_carCategory" runat="server" DataSourceID="SqlDataSource3" DataTextField="CarCategory" DataValueField="CategoryId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarCategory], [CategoryId] FROM [Categories] ORDER BY [CategoryId]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dd_carCategory" ErrorMessage="Car Category is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Car Price (Rs):</td>
                    <td>
                        <asp:TextBox ID="txt_carPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_carPrice" ErrorMessage="Car Price is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Car Detail:</td>
                    <td>
                        <asp:TextBox ID="txt_carDetail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_carDetail" ErrorMessage="Car Detail is required.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Electric/Hybrid:</td>
                    <td>
                        <asp:CheckBox ID="cb_IsPopular" runat="server" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1">Accident History:</td>
                    <td>
                        <asp:CheckBox ID="cb_IsDamage" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Available:</td>
                    <td>
                        <asp:CheckBox ID="cb_IsAvailable" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Car Image:</td>
                    <td>
                        <asp:FileUpload ID="upload_Image" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="upload_Image" ErrorMessage="Please upload image of Car.">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

            </table>
            <br />
            <asp:Label ID="erorlabel" runat="server" Text="Label"></asp:Label>
            <div id="snackbar">
                <p id="error_para" runat="server">
                    There is an error occured.
                </p>
            </div>
            <%--//validation summary--%>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" ShowSummary="true" HeaderText="Errors:" />

            <br />
            <br />
        </div>

    </div>
    <div>


        <asp:Button ID="btn_Create" runat="server" Text="Create" OnClick="btn_Create_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" />


    </div>
</asp:Content>
