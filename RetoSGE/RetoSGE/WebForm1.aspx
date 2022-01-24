<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm1.aspx.vb" Inherits="RetoSGE.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
<asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Conectar" />
    <br />
</asp:Content>
