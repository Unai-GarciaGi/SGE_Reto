<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Amigos.aspx.vb" Inherits="RetoSGE.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AmigosString %>" ProviderName="<%$ ConnectionStrings:AmigosString.ProviderName %>" SelectCommand="SELECT * FROM [Contactos_local]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            <asp:BoundField DataField="FechaNacimiento" DataFormatString="{0:d}" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
            <asp:CheckBoxField DataField="Carnet" HeaderText="Carnet" SortExpression="Carnet" />
            <asp:BoundField DataField="Cuota" DataFormatString="{0:f}" HeaderText="Cuota" SortExpression="Cuota" />
            <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="~/imagenes/{0}" HeaderText="Foto">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AmigosString %>" ProviderName="<%$ ConnectionStrings:AmigosString.ProviderName %>" SelectCommand="SELECT * FROM [Contactos_local]"></asp:SqlDataSource>
<br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
        <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
        <asp:CheckBoxField DataField="Carnet" HeaderText="Carnet" SortExpression="Carnet" />
        <asp:BoundField DataField="Cuota" HeaderText="Cuota" SortExpression="Cuota" />
        <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto" />
    </Fields>
</asp:DetailsView>
</asp:Content>
