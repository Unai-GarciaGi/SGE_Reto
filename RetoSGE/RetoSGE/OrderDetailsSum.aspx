<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="OrderDetailsSum.aspx.vb" Inherits="RetoSGE.OrderDetailsSum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT OrderID, ProductID, UnitPrice, Quantity, Discount, (UnitPrice * Quantity) * (1 - Discount) AS TOTAL FROM OrderDetails"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID,ProductID" DataSourceID="SqlDataSource1" AllowPaging="True" AutoPostBack ="True">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
            <asp:BoundField DataField="TOTAL" DataFormatString="{0:f}" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" />
        </Columns>
    </asp:GridView>
</asp:Content>
