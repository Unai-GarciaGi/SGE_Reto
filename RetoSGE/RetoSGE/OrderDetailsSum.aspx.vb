Public Class OrderDetailsSum
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        For x = 0 To GridView1.Rows.Count - 1
            GridView1.Rows(x).Cells(5).Text = Convert.ToDouble(GridView1.Rows(x).Cells(2).Text) * Convert.ToInt32(GridView1.Rows(x).Cells(3).Text) * (1 - Convert.ToDouble(GridView1.Rows(x).Cells(4).Text))
        Next
    End Sub



End Class