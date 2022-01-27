<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="ModificarProducto.aspx.vb" Inherits="RetoSGE.ModificarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Modificar Registros<br /><br />
    Buscar por ProductsID   <asp:TextBox ID="txtID" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" /><br /><br />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <br /><br />
    ProductName:        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
    QuantityPerUnit:    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox><br /><br />
    UnitPrice:          <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="btnUpdate" runat="server" Text="Modificar Registro" />
</asp:Content>
