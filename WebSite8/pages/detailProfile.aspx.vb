Imports System.Data.SqlClient
Imports System.Data
Partial Class pages_Default
    Inherits System.Web.UI.Page
    Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(conString)
    Dim da As SqlDataAdapter
    Dim dt As DataTable


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = conString
        cmd.Connection = con
        If Not IsPostBack Then
            ' Retrieve the user ID from the Session
            Dim uid As String = Session("matchuid")

            If Not String.IsNullOrEmpty(uid) Then
                ' Call a function to fetch user profile data by ID
                Dim userProfileData As DataTable = GetProfileData(uid)

                ' Bind the retrieved data to a DataList or other controls
                dlprofile.DataSource = userProfileData
                dlprofile.DataBind()
            Else
                ' Handle the case where the user ID is not available
                Response.Write("User ID not found.")

            End If
        End If
    End Sub
    Private Function GetProfileData(ByVal userId As String) As DataTable
        Dim conString As String = ConfigurationManager.ConnectionStrings("conString").ToString
        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand("SELECT * FROM tbl_user WHERE uid = @uid", con)
                cmd.Parameters.AddWithValue("@uid", userId)
                Dim da As New SqlDataAdapter(cmd)
                Dim dt As New DataTable()
                da.Fill(dt)
                Return dt
            End Using
        End Using
    End Function

End Class
