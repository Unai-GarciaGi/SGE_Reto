<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="EliminarProducto.aspx.vb" Inherits="RetoSGE.EliminarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Borrar Registros<br /><br />
    Buscar por ProductsID   <asp:TextBox ID="txtID" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" /><br /><br />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <br /><br />
    <asp:Button ID="btnEliminar" runat="server" Text="Borrar Registro" />
</asp:Content>
