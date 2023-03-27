<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="FYP_CarRentalSystem.Userforms.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField  DataField="Id"  HeaderText="ID" />
            <asp:BoundField  DataField="StartTime"  HeaderText="Start Time" />
            <asp:BoundField  DataField="EndTime"  HeaderText="End Time" />
            <asp:BoundField  DataField="CNICimg"  HeaderText="CNIC" />
            <asp:BoundField  DataField="Place"  HeaderText="Place" />
            <asp:BoundField  DataField="Charges"  HeaderText="Charges" />
            <asp:BoundField  DataField="CarId"  HeaderText="Car Id" />
           
            <asp:TemplateField>
                <ItemTemplate>
                    <a href='ReturnCar.aspx?CarId=<%# Eval("CarId") %>'>Return Now</a>
                </ItemTemplate>
            </asp:TemplateField> 
            
            
            
          
            
            
            
        </Columns>
    </asp:GridView> 
</asp:Content>
