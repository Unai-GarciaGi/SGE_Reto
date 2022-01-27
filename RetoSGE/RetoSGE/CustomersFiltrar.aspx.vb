Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        For x = 0 To GridView1.Rows.Count - 1
            GridView1.Rows(x).BackColor = Drawing.Color.Transparent
        Next
        GridView1.SelectedRow.BackColor = Drawing.Color.LightGreen
        TextBox1.Text = GridView1.SelectedRow.Cells(4).Text.ToString
        TextBox2.Text = GridView1.SelectedRow.Cells(3).Text.ToString
        TextBox3.Text = GridView1.SelectedRow.Cells(2).Text.ToString
    End Sub
End Class