<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="AddProducto.aspx.vb" Inherits="RetoSGE.AddProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Añadir registros
    <br />
    <br />
    Nombre del producto: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Cantidad por unidad: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    Precio unitario: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
</asp:Content>
