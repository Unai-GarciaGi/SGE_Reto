<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="CustomersFiltrar.aspx.vb" Inherits="RetoSGE.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    PAÍS:
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="Country" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [Country] FROM [Customers]"></asp:SqlDataSource>
    <br />
    CIUDAD:
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="City" DataValueField="City" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT DISTINCT [City] FROM [Customers] WHERE ([Country] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Country" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" HtmlEncode="False" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [CustomerID], [CompanyName], [City], [Country] FROM [Customers] WHERE (([Country] = ?) AND ([City] = ?))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Country" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="City" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    COUNTRY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    CITY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    COMPANY NAME:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</asp:Content>
