Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class ADMIN_Profile_Admin
    Inherits System.Web.UI.Page
    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim da As SqlDataAdapter
    Dim dt As DataTable



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = conString
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
    End Sub

    Protected Sub btn_link_goback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_link_goback.Click
        Response.Redirect("~/ADMIN/DashBoard_Admin.aspx")
    End Sub
End Class
