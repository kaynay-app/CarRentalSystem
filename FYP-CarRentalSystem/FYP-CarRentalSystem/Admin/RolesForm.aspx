<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="RolesForm.aspx.cs" Inherits="FYP_CarRentalSystem.Admin.Roles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        function openModal() {
            $('#myModal').modal({ show: true });

        }

 </script>--%>

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
        <h1>Manage Roles</h1>
    </div>

    <table style="width: 100%;">
        <tr>
            <td style="width: 178px">Add Users to Roles</td>
            <td style="width: 184px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px">User</td>
            <td style="width: 184px">Roles</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px">
                <asp:ListBox ID="LB_Users" ForeColor="Black" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName" AutoPostBack="True"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [Id], [UserName] FROM [Users]"></asp:SqlDataSource>
            </td>
            <td style="width: 184px">
                <asp:ListBox ID="LB_Roles" ForeColor="Black" runat="server" DataSourceID="SqlDataSource2" DataTextField="Roles" DataValueField="Roles" AutoPostBack="True" ></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [Roles] FROM [Roles]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add User to Role" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 178px">
                &nbsp;</td>
            <td style="width: 184px">
                &nbsp;</td>
            <td>
                <%--&nbsp;</td>--%>
        </tr>
        <tr>
            <td colspan="2">Remove User from Role</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px">User</td>
            <td style="width: 184px">Roles</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px">
                <asp:ListBox ID="ListBox5" ForeColor="Black" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="ListBox5_SelectedIndexChanged"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [UserName], [Id] FROM [Users]"></asp:SqlDataSource>
            </td>
            <td style="width: 184px">
                <asp:ListBox ID="ListBox6" ForeColor="Black" runat="server" AutoPostBack="True"></asp:ListBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Remove User from role" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>

    <!-- Modal -->
         <%--   <div class="modal fade" id="myModal" role="dialog" data-backdrop="static">
                <div class="modal-dialog modal-sm">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Message</h4>
                        </div>
                        <div class="modal-body">
                            <p id="modal_para" runat="server">Some text in the modal.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>--%>
    <div id="snackbar">
        <p id="error_para" runat="server">
            There is an error occured.
        </p>
    </div>

</asp:Content>
