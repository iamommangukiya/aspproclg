Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter


   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim check As String = Session("adminname")
        If check = "" Then
            Response.Redirect("AdminLogin.aspx")

        else
        Try
            con.ConnectionString = ConfigurationManager.ConnectionStrings("conString").ToString
            cmd.Connection = con
            filldata()
        Catch ex As Exception

            End Try
        End If

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim vemail As String
        vemail = GridView1.DataKeys(e.RowIndex).Value
        Try
            cmd.CommandText = "delete  from tbl_user where email= '" & vemail & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            filldata()


        Catch ex As Exception

        End Try
    End Sub

    Sub filldata()
        Try
            cmd.CommandText = "select fname as FName ,uname as UserName, lname as Lname ,mno as Mobileno ,gender as Gender , email as Email from tbl_user"
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try


    End Sub


    Protected Sub adLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles adLogout.Click
        Session.Clear() ' Clears all session variables
        Session.Abandon() ' Destroys the session
        Response.Redirect("AdminLogin.aspx") ' Redirect to the login page or any other page as needed
    End Sub
End Class
