Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class Register
    Inherits System.Web.UI.Page
    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim imageUrl As String = ""
    Dim dob As String
    Dim city As String
    Dim mno As String


    Protected Sub btn_MRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_MRegister.Click
        Try
            dob = ddl_reg_date.SelectedItem.Text + "/" + ddl_reg_month.SelectedItem.Text + "/" + ddl_reg_year.SelectedItem.Text
            city = ddl_reg_city.SelectedItem.Text + ", Gujarat"
            mno = "+91" + txt_reg_mno.Text
            If FileUpload1.HasFile Then
                FileUpload1.SaveAs(Server.MapPath("~/image_store/") + FileUpload1.FileName)
                imageUrl = "~/image_store/" + FileUpload1.FileName

                If txt_reg_pwd.Text = txt_reg_cpwd.Text Then

                    cmd.CommandText = "Insert into tbl_user values('" & imageUrl & "','" & txt_reg_fname.Text & "', '" & txt_reg_mname.Text & "', '" & txt_reg_lname.Text & "', '" & rdb_reg_gender.SelectedItem.Text & "', '" & txt_reg_email.Text & "', '" & mno & "', '" & txt_reg_height.Text & "','" & txt_reg_weight.Text & "', '" & dob & "', '" & ddl_reg_religion.SelectedItem.Text & "', '" & txt_login_address.Text & "', '" & city & "', '" & txt_reg_pin.Text & "', '" & txt_reg_uname.Text & "','" & txt_reg_pwd.Text & "','" & txt_reg_cpwd.Text & "','" & txt_reg_graduate.Text & "','" & txt_reg_profession.Text & "'  )"
                    'cmd.CommandText = "Insert into tbl_admin values('" & txt_reg_uname.Text & "','" & txt_reg_pwd.Text & "','" & txt_reg_cpwd.Text & "')"
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                    Response.Redirect("~/USER/Login.aspx")
                Else
                    lblmsg.ForeColor = Drawing.Color.Red
                    lblmsg.Text = "*Does Not Match Password & Confirm Password"
                End If

            Else
                lblmsg.ForeColor = Drawing.Color.Red
                lblmsg.Text = "*Please Select Image"
            End If

        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
    End Sub

    Protected Sub btn_R_login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_R_login.Click
        If IsPostBack = True Then
            Response.Redirect("~/USER/Login.aspx")
        End If
    End Sub



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = conString
            cmd.Connection = con

        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
        'If IsPostBack = False Then
        '    fillgrid()
        'End If
    End Sub

    'Sub fillgrid()
    '    Try
    '        cmd.CommandText = "SELECT * FROM tbl_user ORDER BY id"
    '        da = New SqlDataAdapter(cmd)
    '        dt = New DataTable
    '        da.Fill(dt)
    '        datali()
    '    Catch ex As Exception
    'lblmsg.ForeColor = Drawing.Color.Red
    '    End Try
    'End Sub

    'Protected Sub btn_MRegister0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_MRegister0.Click
    '    Try
    '        cmd.CommandText = "Insert into tbl_admin values('" & txt_reg_uname.Text & "','" & txt_reg_pwd.Text & "','" & txt_reg_cpwd.Text & "')"
    '        con.Open()
    '        cmd.ExecuteNonQuery()
    '        con.Close()

    '    Catch ex As Exception
    'lblmsg.ForeColor = Drawing.Color.Red
    '        lblmsg.Text = ex.Message
    '    End Try
    'End Sub
End Class
