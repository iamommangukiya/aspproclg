
Partial Class DashBoard
    Inherits System.Web.UI.MasterPage

    Protected Sub btn_home_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_home.Click
        Response.Redirect("~/USER/Home.aspx")
    End Sub

    Protected Sub btn_login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_login.Click
        Response.Redirect("~/USER/Login.aspx")
    End Sub

    Protected Sub btn_register_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_register.Click
        Response.Redirect("~/USER/Register.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class

