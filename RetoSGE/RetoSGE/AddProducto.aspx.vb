Imports System.Data.OleDb

Public Class AddProducto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ConnectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True"
        Dim conexion As New OleDbConnection(ConnectionString)
        Dim sentencia As String = "INSERT INTO PRODUCTS(ProductName, QuantityPerUnit, UnitPrice) VALUES ('" + TextBox1.Text + "' , '" + TextBox2.Text + "' ," + TextBox3.Text + ")"
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
End Class