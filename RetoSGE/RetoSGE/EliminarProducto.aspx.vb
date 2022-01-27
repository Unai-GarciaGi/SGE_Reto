Imports System.Data.OleDb

Public Class EliminarProducto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Private Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim ConnectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True"
        Dim conexion As New OleDbConnection(ConnectionString)
        Dim sentencia As String = "DELETE FROM Products WHERE ProductID = '" & txtID.Text & "'"
        Dim dr As OleDbDataReader
        Dim comando As New OleDbCommand(sentencia, conexion)
        Try
            conexion.Open()
            comando.ExecuteNonQuery()
        Catch ex As Exception
        Finally
            conexion.Close()
        End Try
    End Sub

    Private Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim ConnectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True"
        Dim conexion As New OleDbConnection(ConnectionString)
        Dim sentencia As String = "SELECT ProductID, ProductName, QuantityPerUnit, UnitPrice FROM Products WHERE ProductID = " & Convert.ToInt32(txtID.Text)
        Dim dr As OleDbDataReader
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
        Catch ex As Exception
        Finally
            conexion.Close()
        End Try
    End Sub
End Class