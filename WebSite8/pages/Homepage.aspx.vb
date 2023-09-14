
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged

    End Sub

  
    Protected Sub btnSerch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSerch.Click
        If Session("UserId") IsNot Nothing Then
            ' User is logged in, redirect to the result page
            Response.Redirect("ResultPage.aspx")
        Else
            ' User is not logged in, show the login modal or take appropriate action
            ' You can use JavaScript to open the modal here
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ShowLoginModal", "$('#myModal').modal('show');", True)
        End If
    End Sub
End Class
