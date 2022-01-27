Public Class CustomersColor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For i = 0 To GridView1.Rows.Count - 1
            Try
                Dim x As Integer = Convert.ToInt32(GridView1.Rows(i).Cells(3).Text)
                If x Mod 2 = 0 Then
                    GridView1.Rows(i).BackColor = Drawing.Color.Green
                Else
                    GridView1.Rows(i).BackColor = Drawing.Color.Yellow
                End If
            Catch ex As Exception
                GridView1.Rows(i).BackColor = Drawing.Color.Red
            End Try

        Next
    End Sub

End Class