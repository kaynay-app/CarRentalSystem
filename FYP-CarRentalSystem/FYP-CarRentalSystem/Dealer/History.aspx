<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="FYP_CarRentalSystem.Dealer.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField  DataField="CarId"  HeaderText="ID" />
            <asp:BoundField  DataField="Price"  HeaderText="Price " />
            <asp:BoundField  DataField="Detail"  HeaderText="Detail" />
            <asp:BoundField  DataField="Image"  HeaderText="Image" />
            <asp:BoundField  DataField="Popular"  HeaderText="Popular" />
            <asp:BoundField  DataField="Damage"  HeaderText="Damage" />
            <asp:BoundField  DataField="Available"  HeaderText="Available" />
            <asp:BoundField  DataField="ModelId"  HeaderText="ModelId" />
            <asp:BoundField  DataField="BrandId"  HeaderText="BrandId" />
            <asp:BoundField  DataField="CategoryId"  HeaderText="CategoryId" />
            
        </Columns>
    </asp:GridView> 
   
</asp:Content>
