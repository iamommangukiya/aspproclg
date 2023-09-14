Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class DashBoard_Admin
    Inherits System.Web.UI.Page

    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Text = "*All Profiles are shown here... ,Admin can 'Delete' it"

        Try
            con.ConnectionString = conString
            cmd.Connection = con

        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        End Try
        If IsPostBack = False Then
            filldatalist()
        End If
    End Sub
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
    'Sub fillgrid()
    '    Try

    '        con.Open()
    '        Dim uname_admin As String = Session("uname_admin")
    '        cmd.CommandText = "SELECT * FROM tbl_admin where uname=@uname_admin"
    '        cmd.Parameters.AddWithValue("@uname_admin", uname_admin)
    '        da = New SqlDataAdapter(cmd)
    '        dt = New DataTable
    '        da.Fill(dt)

    '        DetailsView1.DataBind()

    '    Catch ex As Exception
    '        lblmsg.ForeColor = Drawing.Color.Red
    '        lblmsg.Text = "* " + ex.Message
    '    End Try
    'End Sub

    
    Protected Sub btn_admin_profile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_admin_profile.Click
        Response.Redirect("~/ADMIN/Profile_Admin.aspx")
    End Sub


    Protected Sub datalist_user_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles datalist_user.ItemCommand
        Try
            Dim uname_profile As String = datalist_user.DataKeys(e.Item.ItemIndex).ToString()
            If con.State = ConnectionState.Closed Then
                con.Open()
            End If

            cmd.CommandText = "DELETE FROM tbl_user WHERE uname = @uname"
            cmd.Parameters.AddWithValue("@uname", uname_profile)
            cmd.ExecuteNonQuery()
            con.Close()
            filldatalist()
            Response.Redirect(Request.RawUrl)
        Catch ex As Exception
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = ex.Message
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
        End Try
    End Sub


    Protected Sub btn_admin_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_admin_search.Click
        Try
            Dim selectedGender As String = rdb_admin_gender.SelectedItem.Text
            Dim selectedReligion As String = ddl_admin_religion.SelectedItem.Text
            Dim selectedCity As String = ddl_admin_city.SelectedItem.Text + ", Gujarat"

            ' Modify the SelectCommand of the SqlDataSource dynamically
            SqlDataSource2.SelectParameters.Clear()
            Dim whereClause As String = ""

            If Not String.IsNullOrEmpty(selectedGender) Then
                whereClause &= " AND gender = @gender"
                SqlDataSource2.SelectParameters.Add("gender", selectedGender)
            End If

            If Not String.IsNullOrEmpty(selectedReligion) AndAlso selectedReligion <> "Select" Then
                whereClause &= " AND religion = @religion"
                SqlDataSource2.SelectParameters.Add("religion", selectedReligion)
            End If

            If Not String.IsNullOrEmpty(selectedCity) AndAlso selectedCity <> "Select" Then
                whereClause &= " AND city = @city"
                SqlDataSource2.SelectParameters.Add("city", selectedCity)
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



    'Protected Sub btn_admin_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_admin_search.Click
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


    Protected Sub btn_admin_clear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_admin_clear.Click
        ddl_admin_city.SelectedIndex = 0
        ddl_admin_religion.SelectedIndex = 0
        filldatalist()
        lblmsg_data.Text = "*****"
    End Sub
End Class
