Imports System.Data.SqlClient
Imports System.Data

Partial Class login
    Inherits System.Web.UI.Page
   
    Dim ConnectionString As String = ConfigurationManager.ConnectionStrings("conString").ToString()
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
    Dim dr As SqlDataReader


       

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       

        Try
            con.ConnectionString = ConnectionString
            cmd.Connection = con

            Session.Clear()
        Catch ex As Exception

        End Try



        End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            cmd.CommandText = " select * from tbl_user where uname= '" & txtemail.Text & "' and pwd ='" & txtpwd.Text & "'"
            con.Open()
            Dim uid As Object = cmd.ExecuteScalar()

            dr = cmd.ExecuteReader()
            If uid IsNot Nothing Then
                Session("username") = txtemail.Text
                Session("uid") = uid.ToString() ' Store uid in the Session
                Response.Redirect("~/pages/dashbord.aspx")
            Else
                lblpwd.Text = "Invalid Username and Password"
            End If
        Catch ex As Exception

            lblpwd.Text = ex.Message

        End Try
        con.Close()

     





    End Sub
End Class


