<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <%--  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        function openModal() {
            $('#myModal').modal({ show: true });
         
        }

 </script>--%>
             <!-- Modal -->
<%--            <div class="modal fade" id="myModal" role="dialog" >
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
    from {bottom: 0; opacity: 0;} 
    to {bottom: 120px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 120px; opacity: 1;}
}

@-webkit-keyframes fadeout {
    from {bottom: 120px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 120px; opacity: 1;}
    to {bottom: 0; opacity: 0;}
}
    </style>


    <div class="formHeader">
        <h1>Booking Form</h1>
    </div>

    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Car Id:</td>
                <td>
                    <asp:DropDownList ID="dd_CarId" ForeColor="Black" runat="server" DataSourceID="SqlDataSource1" DataTextField="CarId" DataValueField="CarId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CarId] FROM [Cars] WHERE ([CarId] = @CarId)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="0" Name="CarId" QueryStringField="CarId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Car Type is required.">

                    </asp:RequiredFieldValidator>--%>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">Car Model:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" ForeColor="Black" runat="server" DataSourceID="SqlDataSource2" DataTextField="ModelId" DataValueField="ModelId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [ModelId] FROM [Cars] WHERE ([CarId] = @CarId)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="&quot;Please Select a Car&quot;" Name="CarId" QueryStringField="CarId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dd_Price" ErrorMessage="Car Price is required.">

                    </asp:RequiredFieldValidator>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Car Brand:</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" ForeColor="Black" runat="server" DataSourceID="SqlDataSource5" DataTextField="BrandId" DataValueField="BrandId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [BrandId] FROM [Cars] WHERE ([CarId] = @CarId)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="0" Name="CarId" QueryStringField="CarId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Car Type:</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" ForeColor="Black" runat="server" DataSourceID="SqlDataSource4" DataTextField="CategoryId" DataValueField="CategoryId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [CategoryId] FROM [Cars] WHERE ([CarId] = @CarId)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="CarId" QueryStringField="CarId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="upload_Image" ErrorMessage="Please upload Front Side of Valid CNIC Image">

                    </asp:RequiredFieldValidator></td>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Car Price(usd):</td>
                <td>
                    <asp:DropDownList ID="dd_Price" ForeColor="Black" runat="server" DataSourceID="SqlDataSource3" DataTextField="Price" DataValueField="Price">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT [Price] FROM [Cars] WHERE ([CarId] = @CarId)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="CarId" QueryStringField="CarId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode ="BulletList" ShowSummary ="true" HeaderText="Errors:"/>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Start Time: (e.g. 12:00)</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_strTime" ForeColor="Black" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_strTime" runat="server" ForeColor="Red" ErrorMessage="This is required"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Select Am / Pm</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddStrTime" ForeColor="Black" runat="server">
                        <asp:ListItem Value="Am">PM</asp:ListItem>
                        <asp:ListItem Value="Pm">AM</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;Start Date:
&nbsp;&nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_startDate" ForeColor="Black" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_startDate" runat="server" ForeColor="Red" ErrorMessage="This is required"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnStartDate" CausesValidation="false"  runat="server" OnClick="btnStartDate_Click" Text="Select Date" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="145px" ShowGridLines="True" Width="213px" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">End Time: (e.g. 12:00)</td>
                <td>
                    <asp:TextBox ID="txt_endTime" ForeColor="Black" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txt_endTime" runat="server" ForeColor="Red" ErrorMessage="This is required"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Select Am / Pm</td>
                <td>
                    <asp:DropDownList ID="ddEndTime" ForeColor="Black" runat="server">
                        <asp:ListItem Value="Am">PM</asp:ListItem>
                        <asp:ListItem Value="Pm">AM</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;End Date:&nbsp;&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_endDate" ForeColor="Black" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txt_endDate" runat="server" ForeColor="Red" ErrorMessage="This is required"></asp:RequiredFieldValidator>
                    
                </td>
                <td>
                    <asp:Button ID="btnEndDate" runat="server" Text="Select Date" OnClick="btnEndDate_Click" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="148px" OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" Width="214px" OnDayRender="Calendar2_DayRender">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_totalTime" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Total Charges:</td>
                <td>
                    <asp:TextBox ID="txt_charges" ForeColor="Black" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txt_charges" runat="server" ForeColor="Red" ErrorMessage="This is required"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Check Charges" OnClick="Button3_Click" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Upload Image of&nbsp; CNIC:</td>
                <td>
                    <asp:FileUpload ID="upload_Image" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="upload_Image" runat="server" ForeColor="Red" ErrorMessage="This is required"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="upload_Image" ErrorMessage="Please upload Front Side of Valid CNIC Image">

                    </asp:RequiredFieldValidator></td>--%>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">Place to Pick:</td>
                <td>
                    <asp:DropDownList ID="dd_Place" ForeColor="Black" runat="server" DataSourceID="SqlDataSource7" DataTextField="Place" DataValueField="Place">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CarRentalManagementDBConnectionString %>" SelectCommand="SELECT * FROM [Locations]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>

            </tr>



            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Book" OnClick="Button1_Click"  />
                    
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Userforms/Categorywise.aspx">Choose Another Car</asp:HyperLink>
                    
                    <%--&nbsp;<asp:Label ID="erorlabel" ForeColor="Red" runat="server" Text="Label" Visible="False"></asp:Label>--%>
                </td>
                <td>
                    <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode ="BulletList" ShowSummary ="true" HeaderText="Errors:"/>--%>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div id="snackbar">
                <p id="error_para" runat="server">
                    There is an error occured.
                </p>
            </div>

</asp:Content>
