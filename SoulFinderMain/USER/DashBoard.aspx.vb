Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class DashBoard
    Inherits System.Web.UI.Page

    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim da As SqlDataAdapter
    Dim dt As DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Text = "*You Can Edit & Delete Profile"

        Try
            con.ConnectionString = conString
            cmd.Connection = con

        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
        If IsPostBack = False Then
            'changes
            filldatalist()
            filldetailsview()
        End If

    End Sub
    'changes
    Sub filldatalist()
        Try
            cmd.CommandText = "select * from tbl_user"
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
            cmd.ExecuteNonQuery()
            con.Close()
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)

            datalist_user.DataBind()
        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "* " + ex.Message
        End Try
    End Sub
    'Sub filldatalist()
    '    Try

    '        con.Open()
    '        Dim Gender As String = Session("Gender")
    '        cmd.CommandText = "SELECT * FROM tbl_user where gender=@Gender"
    '        cmd.Parameters.AddWithValue("@Gender", Gender)
    '        da = New SqlDataAdapter(cmd)
    '        dt = New DataTable
    '        da.Fill(dt)

    '        datalist_user.DataBind()

    '    Catch ex As Exception
    '        lblmsg.ForeColor = Drawing.Color.Red
    '        lblmsg.Text = ex.Message
    '    End Try
    'End Sub
    Sub filldetailsview()
        Try
            con.Open()
            Dim uname As String = Session("uname").ToString()
            cmd.CommandText = "SELECT * FROM tbl_user WHERE uname=@uname"
            cmd.Parameters.AddWithValue("@uname", uname)
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

        Response.Redirect("~/USER/Profile.aspx")
        'DetailsView1.ChangeMode(DetailsViewMode.Edit) ' Enable editing mode

    End Sub


    'Protected Sub DetailsView1_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdateEventArgs) Handles DetailsView1.ItemUpdating
    '    Try
    '        Dim fname, mname, lname, gender, email, mno, height, weight, dob, religion, address, city, pincode, graduation, profession, uname As String
    '        fname = e.NewValues("fname").ToString()
    '        mname = e.NewValues("mname").ToString()
    '        lname = e.NewValues("lname").ToString()
    '        gender = e.NewValues("gender").ToString()
    '        email = e.NewValues("email").ToString()
    '        mno = e.NewValues("mno").ToString()
    '        height = e.NewValues("height").ToString()
    '        weight = e.NewValues("weight").ToString()
    '        dob = e.NewValues("dob").ToString()
    '        religion = e.NewValues("religion").ToString()
    '        address = e.NewValues("address").ToString()
    '        city = e.NewValues("city").ToString()
    '        pincode = e.NewValues("pincode").ToString()
    '        graduation = e.NewValues("graduation").ToString()
    '        profession = e.NewValues("profession").ToString()
    '        uname = Session("uname")
    '        'imageUrl = ""


    '        'Dim FileUpload1 As FileUpload = CType(DetailsView1.FindControl("FileUpload1"), FileUpload)
    '        'If FileUpload1.HasFile Then
    '        '    FileUpload1.SaveAs(Server.MapPath("~/image_store/") + FileUpload1.FileName)
    '        '    imageUrl = "~/image_store/" + FileUpload1.FileName
    '        'End If


    '        cmd.CommandText = "UPDATE tbl_user SET fname = @fname,mname = @mname,lname = @lname,gender = @gender,email = @email,mno = @mno,height = @height,weight = @weight,dob = @dob,religion = @religion,address = @address,city = @city,pincode = @pincode,graduation = @graduation,profession = @profession WHERE uname = @uname"
    '        ' cmd.Parameters.AddWithValue("@imageUrl", imageUrl)
    '        cmd.Parameters.AddWithValue("@fname", fname)
    '        cmd.Parameters.AddWithValue("@mname", mname)
    '        cmd.Parameters.AddWithValue("@lname", lname)
    '        cmd.Parameters.AddWithValue("@gender", gender)
    '        cmd.Parameters.AddWithValue("@email", email)
    '        cmd.Parameters.AddWithValue("@mno", mno)
    '        cmd.Parameters.AddWithValue("@height", height)
    '        cmd.Parameters.AddWithValue("@weight", weight)
    '        cmd.Parameters.AddWithValue("@dob", dob)
    '        cmd.Parameters.AddWithValue("@religion", religion)
    '        cmd.Parameters.AddWithValue("@address", address)
    '        cmd.Parameters.AddWithValue("@city", city)
    '        cmd.Parameters.AddWithValue("@pincode", pincode)
    '        cmd.Parameters.AddWithValue("@graduation", graduation)
    '        cmd.Parameters.AddWithValue("@profession", profession)
    '        cmd.Parameters.AddWithValue("@uname", uname)
    '        If con.State = ConnectionState.Closed Then
    '            con.Open()
    '        End If
    '        cmd.ExecuteNonQuery()
    '        con.Close()
    '        filldetailsview()
    '    Catch ex As Exception
    '        lblmsg.ForeColor = Drawing.Color.Red
    '        lblmsg.Text = ex.Message
    '    End Try
    'End Sub


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

   
    
    Protected Sub datalist_user_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles datalist_user.ItemCommand
        Dim data As String = datalist_user.DataKeys(e.Item.ItemIndex).ToString()
        Session("uname_view") = data

        Response.Redirect("~/USER/View Profile.aspx")
    End Sub

    'changes
    
    Protected Sub btn_user_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_user_search.Click
        Try
            Dim selectedGender As String = rdb_user_gender.SelectedItem.Text
            Dim selectedReligion As String = ddl_user_religion.SelectedItem.Text
            Dim selectedCity As String = ddl_user_city.SelectedItem.Text + ", Gujarat"

            ' Modify the SelectCommand of the SqlDataSource dynamically
            SqlDataSource2.SelectParameters.Clear()
            Dim whereClause As String = ""

            If Not String.IsNullOrEmpty(selectedGender) Then
                whereClause &= " OR gender = @gender"
                SqlDataSource2.SelectParameters.Add("gender", selectedGender)
            End If

            If Not String.IsNullOrEmpty(selectedReligion) AndAlso selectedReligion <> "Select" Then
                whereClause &= " AND religion = @religion"
                SqlDataSource2.SelectParameters.Add("religion", selectedReligion)
                'Else
                '    lblmsg_data.Text &= "\nPlease Select Proper Religion"
            End If

            If Not String.IsNullOrEmpty(selectedCity) AndAlso selectedCity <> "Select" Then
                whereClause &= " AND city = @city"
                SqlDataSource2.SelectParameters.Add("city", selectedCity)
                'Else
                '    lblmsg_data.Text = lblmsg_data.Text + "\nPlease Select Proper City"
            End If

            If whereClause.Length > 0 Then
                ' Remove the leading "AND" from the whereClause
                whereClause = whereClause.Substring(4)
            End If

            SqlDataSource2.SelectCommand = "SELECT * FROM tbl_user WHERE " & whereClause

            ' Rebind the DataList
            datalist_user.DataBind()

            ' Check if data is found
            If datalist_user.Items.Count = 0 Then
                lblmsg_data.Font.Size = 20
                lblmsg_data.Text = "*No Data Found"
            Else
                ' Clear the "No Data Found" message when data is found
                lblmsg_data.Text = "*****"
            End If
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub



    'Protected Sub btn_user_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_admin_search.Click
    '      Dim selectedGender As String = rdb_admin_gender.SelectedItem.Text
    '      Dim selectedReligion As String = ddl_admin_religion.SelectedItem.Text
    '      Dim selectedCity As String = ddl_admin_city.SelectedItem.Text + ", Gujarat"

    '      ' Modify the SelectCommand of the SqlDataSource dynamically
    '      SqlDataSource2.SelectCommand = "SELECT * FROM tbl_user WHERE gender = @gender AND religion = @religion AND city = @city"
    '      SqlDataSource2.SelectParameters.Clear()
    '      SqlDataSource2.SelectParameters.Add("gender", selectedGender)
    '      SqlDataSource2.SelectParameters.Add("religion", selectedReligion)
    '      SqlDataSource2.SelectParameters.Add("city", selectedCity)


    '      ' Rebind the DataList
    '      datalist_user.DataBind()
    '  End Sub


    Protected Sub btn_user_clear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_user_clear.Click
        ddl_user_city.SelectedIndex = 0
        ddl_user_religion.SelectedIndex = 0
        filldatalist()
        lblmsg_data.Text = "*****"
    End Sub

    Protected Sub s_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
End Class
