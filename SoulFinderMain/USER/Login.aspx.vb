Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class Login
    Inherits System.Web.UI.Page
    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Text = "*Please Fill The Required Fields"
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

                cmd.CommandText = "SELECT uname, pwd,gender FROM tbl_user WHERE uname = @uname AND pwd = @pwd"
                cmd.Parameters.AddWithValue("@uname", txt_login_uname.Text)
                cmd.Parameters.AddWithValue("@pwd", txt_login_pwd.Text)

                If con.State = ConnectionState.Closed Then
                    con.Open()
                End If
                dr = cmd.ExecuteReader()

                If dr.HasRows Then
                    ' Authentication successful
                    dr.Read()
                    Session("uname") = dr("uname").ToString()
                    'Dim gender As String = dr("gender").ToString()

                    'If gender = "Male" Then
                    '    Session("Gender") = "Female"
                    'ElseIf gender = "Female" Then
                    '    Session("Gender") = "Male"
                    'End If

                    ' Redirect to the dashboard page
                    Response.Redirect("~/USER/DashBoard.aspx")
                Else
                    ' Authentication failed
                    lblmsg.ForeColor = Drawing.Color.Red
                    lblmsg.Text = "*Invalid Username or Password"
                End If



                dr.Close()
            Catch ex As Exception
                lblmsg.ForeColor = Drawing.Color.Red
                lblmsg.Text = ex.Message
            Finally
                con.Close()
            End Try
        End If
        'Try
        '    cmd.CommandText = "Select uname from tbl_user where uname='" & txt_login_uname.Text & "' and pwd='" & txt_login_pwd.Text & "'"
        '    con.Open()
        '    Dim uname As String = cmd.ExecuteScalar()


        '    If txt_login_uname.Text = uname Then
        '        Session("uname") = txt_login_uname.Text
        '        Response.Redirect("~/DashBoard.aspx")
        '    Else
        '        lblmsg.ForeColor = Drawing.Color.Red
        '        lblmsg.Text = "*User Not Found"
        '    End If
        'Catch ex As Exception
        '    lblmsg.ForeColor = Drawing.Color.Red
        '    lblmsg.Text = ex.Message
        'End Try
    End Sub

    Protected Sub btn_L_register_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_L_register.Click
        Response.Redirect("~/USER/Register.aspx")
    End Sub

    Protected Sub btn_L_admin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_L_admin.Click
        Response.Redirect("~/ADMIN/Login_Admin.aspx")
    End Sub
End Class
