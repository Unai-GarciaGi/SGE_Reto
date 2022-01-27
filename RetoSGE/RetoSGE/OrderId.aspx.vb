Imports System.Data.OleDb

Public Class OrderId
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ConnectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True"
        Dim conexion As New OleDbConnection(ConnectionString)
        Dim sentencia As String = "SELECT distinct OrderID from OrderDetails"
        Dim dr As OleDbDataReader
        Dim adap1 As New OleDbDataAdapter(sentencia, conexion)
        Dim comando As New OleDbCommand(sentencia, conexion)
        Dim das1 As New DataSet
        Dim contador As Integer
        Try
            conexion.Open()
            adap1.Fill(das1, "tabla")
            contador = das1.Tables("tabla").Rows.Count
            For x = 0 To contador - 1
                listaOrders.Items.Add(das1.Tables("tabla").Rows.Item(x).Item(0).ToString)
            Next
        Catch ex As Exception
        Finally
            conexion.Close()
        End Try
    End Sub

    Private Sub listaOrders_SelectedIndexChanged(sender As Object, e As EventArgs) Handles listaOrders.SelectedIndexChanged
        Dim ConnectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True"
        Dim conexion As New OleDbConnection(ConnectionString)
        Dim sentencia As String = "SELECT * FROM OrderDetails WHERE OrderID = " & Convert.ToInt32(listaOrders.SelectedValue.ToString)
        Dim sentencia2 As String = "SELECT SUM(UnitPrice * Quantity * (1-Discount)) FROM OrderDetails WHERE OrderID = " & Convert.ToInt32(listaOrders.SelectedValue.ToString)
        'Dim dr As OleDbDataReader
        Dim adap1 As New OleDbDataAdapter(sentencia, conexion)
        Dim comando As New OleDbCommand(sentencia, conexion)
        Dim das1 As New DataSet
        Dim contador As Integer
        Try
            conexion.Open()
            Me.GridView1.Visible = True
            contador = adap1.Fill(das1, "tabla")
            GridView1.DataSource = das1.Tables("tabla")
            GridView1.DataBind()
            lblTotal.Text = contador
            Dim adap2 As New OleDbDataAdapter(sentencia2, conexion)
            Dim das2 As New DataSet
            adap2.Fill(das2, "tabla")
            lblPrecioTotal.Text = das2.Tables("tabla").Rows(0).Item(0).ToString() & "€"
        Catch ex As Exception
        Finally
            conexion.Close()
        End Try
    End Sub

    Private Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        For x = 0 To GridView1.Rows.Count - 1
            GridView1.Rows(x).BackColor = Drawing.Color.Transparent
        Next
        GridView1.SelectedRow.BackColor = Drawing.Color.LightGreen
        TextBox1.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text
    End Sub
End Class