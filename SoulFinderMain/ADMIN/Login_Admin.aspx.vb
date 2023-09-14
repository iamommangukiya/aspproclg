Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class Login_Admin
    Inherits System.Web.UI.Page
    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = conString
            cmd.Connection = con

        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub
    Protected Sub btn_MLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_MLogin.Click
        If String.IsNullOrEmpty(txt_login_uname.Text) And String.IsNullOrEmpty(txt_login_pwd.Text) Then
            lblmsg.Text = "*Please Enter The Username or Password"
        ElseIf String.IsNullOrEmpty(txt_login_uname.Text) Then
            lblmsg.Text = "*Please Enter The Username"
        ElseIf String.IsNullOrEmpty(txt_login_pwd.Text) Then
            lblmsg.Text = "*Please Enter The Password"
        Else
            Try
                cmd.CommandText = "SELECT id,uname FROM tbl_admin WHERE uname = @uname AND pwd = @pwd"
                cmd.Parameters.AddWithValue("@uname", txt_login_uname.Text)
                cmd.Parameters.AddWithValue("@pwd", txt_login_pwd.Text)
                If con.State = ConnectionState.Closed Then
                    con.Open()
                End If
                dr = cmd.ExecuteReader()

                If dr.HasRows Then
                    dr.Read()
                    Session("id") = dr("id").ToString
                    Response.Redirect("~/ADMIN/DashBoard_Admin.aspx")
                Else
                    lblmsg.ForeColor = Drawing.Color.Red
                    lblmsg.Text = "*Invalid Username or Password"
                End If
                dr.Close()
                con.Close()
            Catch ex As Exception
                lblmsg.ForeColor = Drawing.Color.Red
                lblmsg.Text = ex.Message
            End Try
        End If
    End Sub
End Class
