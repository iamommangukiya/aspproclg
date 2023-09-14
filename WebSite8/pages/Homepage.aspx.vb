
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged

    End Sub

  
    Protected Sub btnSerch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSerch.Click

        Response.Redirect("dashbord.aspx")
     
    End Sub
End Class
