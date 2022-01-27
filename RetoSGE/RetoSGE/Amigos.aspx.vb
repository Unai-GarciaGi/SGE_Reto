Public Class WebForm5
    Inherits System.Web.UI.Page

    Private Sub WebForm5_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender
        If Me.GridView1.SelectedIndex >= 0 Then
            Me.DetailsView1.Visible = True
        Else
            Me.DetailsView1.Visible = False
        End If
    End Sub
End Class