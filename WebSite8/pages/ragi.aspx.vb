Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim imageUrl As String = ""
    Dim dob As String
    Dim city As String
    Dim mno As String

   
    Protected Sub btnRagister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRagister.Click
        Try
            dob = ddl_reg_date.SelectedItem.Text + "/" + ddl_reg_month.SelectedItem.Text + "/" + ddl_reg_year.SelectedItem.Text

            city = ddl_reg_city.SelectedItem.Text + ", Gujarat"
            mno = "+91" + txtmo.Text
            If FileUpload1.HasFile Then
                FileUpload1.SaveAs(Server.MapPath("~/image_store/") + FileUpload1.FileName)
                imageUrl = "~/image_store/" + FileUpload1.FileName

                If txtpwd.Text = txtcpwd.Text Then

                    cmd.CommandText = "Insert into tbl_user values('" & imageUrl & "','" & txtfname.Text & "', '" & txtmname.Text & "', '" & txtlname.Text & "', '" & ddgender.SelectedItem.Text & "', '" & txtemail.Text & "', '" & mno & "', '" & txtheight.Text & "','" & txtwhight.Text & "', '" & dob & "', '" & ddl_reg_religion.SelectedItem.Text & "', '" & txtadd.Text & "', '" & city & "', '" & txtpincode.Text & "', '" & txtuname.Text & "','" & txtpwd.Text & "','" & txtcpwd.Text & "','" & txtgdegree.Text & "','" & txtprofe.Text & "'  )"
                    'cmd.CommandText = "Insert into tbl_admin values('" & txt_reg_uname.Text & "','" & txt_reg_pwd.Text & "','" & txt_reg_cpwd.Text & "')"
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                    Response.Redirect("~/pages/login.aspx")
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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = conString
            cmd.Connection = con

        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
    End Sub
End Class
