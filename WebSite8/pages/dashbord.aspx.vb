Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Partial Class pages_Default
    Inherits System.Web.UI.Page
    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim da As SqlDataAdapter
    Dim dt As DataTable

    ' ''Protected Sub datalist_user_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles datalist_user.ItemCommand
    ' ''Dim data As String = datalist_user.DataKeys(e.Item.ItemIndex).ToString()
    ' ''Session("uname_view") = data

    ' ''    Response.Redirect("./Viewprofile.aspx")
    ' ''End Sub

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



    '    Try
    '        con.ConnectionString = conString
    '        cmd.Connection = con
    '    Catch ex As Exception
    '        lblmsg.ForeColor = Drawing.Color.Red
    '        lblmsg.Text = ex.Message
    '    End Try
    '    If Session("username") Is Nothing Then
    '        ' Redirect to the login page
    '        Response.Redirect("login.aspx")
    '    End If
    '    If Not IsPostBack Then
    '        ' Retrieve values from cookies
    '        Dim selectedGender As String = If(Request.Cookies("SelectedGender") IsNot Nothing, Request.Cookies("SelectedGender").Value, "")
    '        Dim selectedReligion As String = If(Request.Cookies("SelectedReligion") IsNot Nothing, Request.Cookies("SelectedReligion").Value, "")
    '        Dim selectedMinAge As String = If(Request.Cookies("SelectedMinAge") IsNot Nothing, Request.Cookies("SelectedMinAge").Value, "")
    '        Dim selectedMaxAge As String = If(Request.Cookies("SelectedMaxAge") IsNot Nothing, Request.Cookies("SelectedMaxAge").Value, "")
    '        ' Check if the required cookie values are set
    '        If Not String.IsNullOrEmpty(selectedGender) AndAlso Not String.IsNullOrEmpty(selectedReligion) Then
    '            ' Construct the SQL query based on cookie values


    '            ' Define the base SQL query
    '            Dim query As String = "SELECT * FROM tbl_user WHERE gender = '" & selectedGender & "' AND religion = '" & selectedReligion & "'"

    '            ' Check if minimum and maximum age are specified
    '            If Not String.IsNullOrEmpty(selectedMinAge) AndAlso Not String.IsNullOrEmpty(selectedMaxAge) Then
    '                ' Add age range criteria
    '                query &= " AND age BETWEEN " & selectedMinAge & " AND " & selectedMaxAge
    '            ElseIf Not String.IsNullOrEmpty(selectedMinAge) Then
    '                ' Add minimum age criteria
    '                query &= " AND age >= " & selectedMinAge
    '            ElseIf Not String.IsNullOrEmpty(selectedMaxAge) Then
    '                ' Add maximum age criteria
    '                query &= " AND age <= " & selectedMaxAge
    '            End If

    '            ' Set the command text
    '            cmd.CommandText = query

    '            Try
    '                If con.State = ConnectionState.Closed Then
    '                    con.Open()
    '                End If

    '                da = New SqlDataAdapter(cmd)
    '                dt = New DataTable
    '                da.Fill(dt)

    '                ' Bind the retrieved data to your DataList control
    '                DataList1.DataSource = dt
    '                DataList1.DataBind()
    '            Catch ex As Exception
    '                lblmsg.ForeColor = Drawing.Color.Red
    '                lblmsg.Text = "* " + ex.Message
    '            Finally
    '                con.Close()
    '            End Try
    '        Else
    '            ' Handle the case where cookie values are not set (e.g., if the user directly accesses the dashboard page)
    '            lblmsg.ForeColor = Drawing.Color.Red
    '            lblmsg.Text = "Cookie values are not set. Please perform a search first."
    '        End If
    '    End If




    'End Sub

   
    Sub loadProfiles()
        If sddlgender.SelectedItem.Text = "Male" Then
            titleOfProfiles.Text = "Grooms"
        Else
            titleOfProfiles.Text = "Brides"
        End If
        Try
            'If stxtminage.Text = "" And stxtmaxage.Text = "" Then
            '    cmd.CommandText = "select * from tbluser where gender='" & sddlgender.SelectedItem.Text & "'"
            'ElseIf stxtminage.Text <> "" Then
            '    cmd.CommandText = "select * from tbluser where gender='" & sddlgender.SelectedItem.Text & "' and age>=" & stxtminage.Text & ""
            'ElseIf stxtmaxage.Text <> "" Then
            '    cmd.CommandText = "select * from tbluser where gender='" & sddlgender.SelectedItem.Text & "' and age<=" & stxtmaxage.Text & ""
            'Else
            '    cmd.CommandText = "select * from tbluser where gender='" & sddlgender.SelectedItem.Text & "' and age between " & stxtminage.Text & " and " & stxtmaxage.Text & ""
            'End If
            cmd.CommandText = "select * from tbl_user where gender='" & sddlgender.SelectedItem.Text & "'"

            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            DataList1.DataSource = dt
            DataList1.DataBind()
            If dt.Rows.Count = 0 Then
                titleofprofiles.Text = "No data Found!!"
            End If
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub

    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        Session("matchuid") = e.CommandArgument.ToString
        Response.Redirect("detailProfile.aspx")

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = conString
        cmd.Connection = con
        If Not IsPostBack Then

            loadProfiles()
        End If
        
    End Sub
    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs)
    '    ' Retrieve the CommandArgument value (uid) from the button
    '    Dim button As Button = DirectCast(sender, Button)


    '    Dim uid As String = button.CommandArgument

    '    ' You can use the uid value for further processing or redirection
    '    Response.Redirect("detailProfile.aspx?uid=" & uid)
    'End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
End Class

