<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="ReturnCar.aspx.cs" Inherits="FYP_CarRentalSystem.Accountant.ReturnCar" %>

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
    <table style="width: 100%;">
        <tr>
            <td style="width: 196px">Select User:</td>
            <td style="width: 277px">
                <asp:DropDownList ID="dd_Users" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [UserName] FROM [Bookings] WHERE ([ReturnedDate] IS NULL)"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">Car Id:</td>
            <td style="width: 277px">
                <asp:DropDownList ID="dd_cars" runat="server" DataSourceID="SqlDataSource2" DataTextField="CarId" DataValueField="CarId" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarId] FROM [Bookings] WHERE ([UserName] = @UserName)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dd_Users" Name="UserName" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">Rented Date:</td>
            <td style="width: 277px">
                <asp:DropDownList ID="dd_startTime" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="StartTime" DataValueField="StartTime">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [StartTime] FROM [Bookings] WHERE ([CarId] = @CarId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dd_cars" Name="CarId" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">Returning Date:</td>
            <td style="width: 277px">
                <asp:TextBox ID="txt_returnTime" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txt_returnTime" runat="server" ErrorMessage="This is Required."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">Car Price(usd):</td>
            <td style="width: 277px">
                <asp:DropDownList ID="dd_carPrice" runat="server" DataSourceID="SqlDataSource3" DataTextField="Price" DataValueField="Price" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [Price] FROM [Cars] WHERE ([CarId] = @CarId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dd_cars" Name="CarId" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">Car Damage (yes/no):</td>
            <td style="width: 277px">
                <asp:CheckBox ID="chkbox_damage" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">What&#39;s Accident History:</td>
            <td style="width: 277px">
                <asp:TextBox ID="txt_damagecoment" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">Rental Cost:</td>
            <td style="width: 277px">
                <asp:TextBox ID="txt_amounttorecover" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txt_amounttorecover" runat="server" ErrorMessage="This is Required."></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Calculate Amount" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td style="width: 196px">Damage Cost:</td>
            <td style="width: 277px">
                <asp:TextBox ID="txt_amountofdamage" Text="0" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txt_amountofdamage" runat="server" ErrorMessage="This is Required. Enter 0 in case of no damage."></asp:RequiredFieldValidator>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">Secret Code:</td>
            <td style="width: 277px">
                <asp:TextBox ID="secretCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="secretCode" runat="server" ErrorMessage="This is Required. Click on Generate Code."></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Generate" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td style="width: 196px">&nbsp;</td>
            <td style="width: 277px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">&nbsp;</td>
            <td style="width: 277px">
                <asp:Button ID="Button1" runat="server" Text="Return Now" OnClick="Button1_Click" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">&nbsp;</td>
            <td style="width: 277px">

                <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>


            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 196px">&nbsp;</td>
            <td style="width: 277px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" HeaderText="Errors:" ShowSummary="true" ForeColor="Red" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div id="snackbar">
        <p id="error_para" runat="server">
            There is an error occured.
        </p>
    </div>

</asp:Content>
