<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="OrderId.aspx.vb" Inherits="RetoSGE.OrderId" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="listaOrders" runat="server" AutoPostBack="True" ></asp:DropDownList><br /><br />
    Total: <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label><br /><br />
    Precio Total: <asp:Label ID="lblPrecioTotal" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GridView1" runat="server" autogenerateselectbutton="True" AutoPostBack="True"></asp:GridView><br /><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</asp:Content>
