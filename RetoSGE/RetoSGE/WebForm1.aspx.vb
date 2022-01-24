Imports System.Data.OleDb
Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Master.FindControl("Menu1").Visible = False
    End Sub

    Private Sub Login1_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles Login1.Authenticate
        'Dim Conexion As New SqlConnection("Server=LOCALHOST;DataBase= Northwind;Integrated Security=true")
        'If Conexion.State = ConnectionState.Closed Then
        'conexion.Open()
        'End If
        Dim ConnectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Northwind.mdb;Persist Security Info=True"
        Dim conexion As New OleDbConnection(ConnectionString)
        Dim sentencia As String = "SELECT Count(*) FROM employees WHERE FirstName = '" + Login1.UserName + "' And LastName = '" +
        Login1.Password + "'"
        Dim dr As OleDbDataReader
        Dim comando As New OleDbCommand(sentencia, conexion)
        Try
            conexion.Open()
            dr = comando.ExecuteReader
            If dr.HasRows Then
                Response.Redirect("VerProductos.aspx")
            End If
        Catch ex As Exception
        Finally
            dr.Close()
            conexion.Close()
        End Try
    End Sub
End Class