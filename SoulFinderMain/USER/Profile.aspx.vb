Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class USER_Profile
    Inherits System.Web.UI.Page

    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim da As SqlDataAdapter
    Dim dt As DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Text = "*You Can Edit & Delete Your Profile"

        Try
            con.ConnectionString = conString
            cmd.Connection = con

        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
        If IsPostBack = False Then

            filldetailsview()
        End If

    End Sub
    Sub filldetailsview()
        Try
            con.Open()
            Dim unameData As String = Session("uname").ToString()
            cmd.CommandText = "SELECT * FROM tbl_user WHERE uname=@unameData"
            cmd.Parameters.AddWithValue("@unameData", unameData)
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            DetailsView1.DataBind()
        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        Finally
            con.Close()
        End Try
    End Sub






    Protected Sub DetailsView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewCommandEventArgs) Handles DetailsView1.ItemCommand

        If e.CommandName = "Edit" Then
            DetailsView1.ChangeMode(DetailsViewMode.Edit) ' Enable editing mode
        End If
    End Sub
    Protected Sub DetailsView1_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdateEventArgs) Handles DetailsView1.ItemUpdating
        Try
            Dim fname, mname, lname, gender, email, mno, height, weight, dob, religion, address, city, pincode, graduation, profession, uname As String
            fname = e.NewValues("fname").ToString()
            mname = e.NewValues("mname").ToString()
            lname = e.NewValues("lname").ToString()
            gender = e.NewValues("gender").ToString()
            email = e.NewValues("email").ToString()
            mno = e.NewValues("mno").ToString()
            height = e.NewValues("height").ToString()
            weight = e.NewValues("weight").ToString()
            dob = e.NewValues("dob").ToString()
            religion = e.NewValues("religion").ToString()
            address = e.NewValues("address").ToString()
            city = e.NewValues("city").ToString()
            pincode = e.NewValues("pincode").ToString()
            graduation = e.NewValues("graduation").ToString()
            profession = e.NewValues("profession").ToString()
            uname = Session("uname")
            'imageUrl = ""


            'Dim FileUpload1 As FileUpload = CType(DetailsView1.FindControl("FileUpload1"), FileUpload)
            'If FileUpload1.HasFile Then
            '    FileUpload1.SaveAs(Server.MapPath("~/image_store/") + FileUpload1.FileName)
            '    imageUrl = "~/image_store/" + FileUpload1.FileName
            'End If


            cmd.CommandText = "UPDATE tbl_user SET fname = @fname,mname = @mname,lname = @lname,gender = @gender,email = @email,mno = @mno,height = @height,weight = @weight,dob = @dob,religion = @religion,address = @address,city = @city,pincode = @pincode,graduation = @graduation,profession = @profession WHERE uname = @uname"
            ' cmd.Parameters.AddWithValue("@imageUrl", imageUrl)
            cmd.Parameters.AddWithValue("@fname", fname)
            cmd.Parameters.AddWithValue("@mname", mname)
            cmd.Parameters.AddWithValue("@lname", lname)
            cmd.Parameters.AddWithValue("@gender", gender)
            cmd.Parameters.AddWithValue("@email", email)
            cmd.Parameters.AddWithValue("@mno", mno)
            cmd.Parameters.AddWithValue("@height", height)
            cmd.Parameters.AddWithValue("@weight", weight)
            cmd.Parameters.AddWithValue("@dob", dob)
            cmd.Parameters.AddWithValue("@religion", religion)
            cmd.Parameters.AddWithValue("@address", address)
            cmd.Parameters.AddWithValue("@city", city)
            cmd.Parameters.AddWithValue("@pincode", pincode)
            cmd.Parameters.AddWithValue("@graduation", graduation)
            cmd.Parameters.AddWithValue("@profession", profession)
            cmd.Parameters.AddWithValue("@uname", uname)
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
            cmd.ExecuteNonQuery()
            con.Close()
            filldetailsview()
        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
    End Sub
    Protected Sub btn_dlt_account_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_dlt_account.Click
        Try

            Dim uname As String '= cmd.ExecuteScalar()
            uname = Session("uname")
            cmd.CommandText = "delete from tbl_user where uname=@uname"
            cmd.Parameters.AddWithValue("@uname", uname)
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
            cmd.ExecuteNonQuery()
            con.Close()
            'fillgrid()
            Response.Redirect("~/USER/Login.aspx")

        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
    End Sub

    
    Protected Sub btn_link_goback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_link_goback.Click
        Response.Redirect("~/USER/DashBoard.aspx")
    End Sub

    Protected Sub DetailsView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub
End Class
