<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="ReturnCar.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.ReturnCar" %>
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

    <div class="formHeader">
        <h1>Return a Car</h1>
    </div>
    <div>
        <table style="width: 100%;">
            <tr>
                <td>Car Id:</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CarId" DataValueField="CarId">

    </asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarId] FROM [Bookings] WHERE ([CarId] = @CarId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CarId" QueryStringField="CarId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Enter Secret Code:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please Enter Code."></asp:RequiredFieldValidator></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td> <asp:Button ID="Button1" runat="server" Text="Return Now" OnClick="Button1_Click" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div id="snackbar">
        <p id="error_para" runat="server">
            There is an error occured.
        </p>
    </div>

    

    
   
    
</asp:Content>
