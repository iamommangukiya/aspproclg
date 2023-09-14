
Partial Class USER_View_Profile
    Inherits System.Web.UI.Page

    Protected Sub btn_link_goback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_link_goback.Click
        Response.Redirect("~/USER/DashBoard.aspx")
    End Sub

   
    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub
End Class
