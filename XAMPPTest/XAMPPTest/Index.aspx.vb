Imports MySql.Data.MySqlClient

Public Class Index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Creamos un string para conectarnos dandole el servidor, las credenciales y la base de datos
        Dim connectionString As String = "Server=localhost;userid=root;password=;Database=northwind"
        'Creamos la conexion utilizando la string anterior
        Dim conexion As New MySqlConnection(connectionString)
        Try
            'Abrimos la conexion
            conexion.Open()
            Label1.Text = "Mysql server version: " & conexion.ServerVersion
            Dim query As String = "SELECT company, first_name, last_name FROM customers"
            'PARTE 1 -> LECTOR SOLO HACIA ADELANTE
            'Creo una MySqlCommand con la conexion
            'Dim cmd As MySqlCommand = conexion.CreateCommand()
            'Asigno al comando la query
            'cmd.CommandText = query
            'Creo el reader con el comando, es de tipo MySqlDataReader
            'Dim lector As MySqlDataReader = cmd.ExecuteReader
            'Y comienzo a leer del lector solo hacia adelante
            'While lector.Read()
            'lector.getString(0) -> Devuelve el primer string (en este caso company)
            'End While
            'PARTE 2 -> DATA ADAPTER
            'Creo un MySqlDataAdapter con la query y la conexion
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(query, conexion)
            'Creo un dataset
            Dim ds As DataSet = New DataSet()
            'Lleno el dataset utilizando el adapter
            da.Fill(ds, "customers")
            'A partir de aquí funciona como cualquier otro dataset
            'Puedo sacar la tabla completa
            Dim tabla As DataTable = ds.Tables("customers")
            'De esta tabla puedo luego ir sacando sus filas
            Dim fila As DataRow = tabla.Rows(0)
            'Y de esa fila el dato que quiera
            Label2.Text = fila.ItemArray(0).ToString
            Label3.Text = fila.ItemArray(1).ToString
            Label4.Text = fila.ItemArray(2).ToString
        Catch ex As Exception

        End Try
    End Sub

End Class