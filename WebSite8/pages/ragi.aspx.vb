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
                    Dim query As String = "INSERT INTO tbl_user (image_url, fname, mname, lname, age, gender, email, mno, height, weight, dob, religion, address, city, pincode, uname, password, confirm_password, degree, profession) VALUES (@imageUrl, @fname, @mname, @lname, @age, @gender, @email, @mno, @height, @weight, @dob, @religion, @address, @city, @pincode, @uname, @password, @confirmPassword, @degree, @profession)"
                    Dim cmd As New SqlCommand(query, con)
                    cmd.Parameters.AddWithValue("@imageUrl", imageUrl)
                    cmd.Parameters.AddWithValue("@fname", txtfname.Text)
                    cmd.Parameters.AddWithValue("@mname", txtmname.Text)
                    cmd.Parameters.AddWithValue("@lname", txtlname.Text)
                    cmd.Parameters.AddWithValue("@age", Convert.ToInt32(txtage.Text))
                    cmd.Parameters.AddWithValue("@gender", ddgender.SelectedItem.Text)
                    cmd.Parameters.AddWithValue("@email", txtemail.Text)
                    cmd.Parameters.AddWithValue("@mno", mno)
                    cmd.Parameters.AddWithValue("@height", txtheight.Text)
                    cmd.Parameters.AddWithValue("@weight", txtwhight.Text)
                    cmd.Parameters.AddWithValue("@dob", dob)
                    cmd.Parameters.AddWithValue("@religion", ddl_reg_religion.SelectedItem.Text)
                    cmd.Parameters.AddWithValue("@address", txtadd.Text)
                    cmd.Parameters.AddWithValue("@city", city)
                    cmd.Parameters.AddWithValue("@pincode", txtpincode.Text)
                    cmd.Parameters.AddWithValue("@uname", txtuname.Text)
                    cmd.Parameters.AddWithValue("@password", txtpwd.Text)
                    cmd.Parameters.AddWithValue("@confirmPassword", txtcpwd.Text)
                    cmd.Parameters.AddWithValue("@degree", txtgdegree.Text)
                    cmd.Parameters.AddWithValue("@profession", txtprofe.Text)
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
