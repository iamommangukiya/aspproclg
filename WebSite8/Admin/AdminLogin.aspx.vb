Imports System.Data.SqlClient
Imports System.Data
Partial Class Admin_Default2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader




    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try

            Session("adminname").Abandon()




        Catch ex As Exception

        End Try
        Try
            con.ConnectionString = ConfigurationManager.ConnectionStrings("conString").ToString
            cmd.Connection = con

        Catch ex As Exception
            lblpwd.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnAlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAlogin.Click
        Try
            cmd.CommandText = "select * from tbl_admin where aname = '" & txtemail.Text & "' and apass ='" & txtpwd.Text & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                Session("adminname") = txtemail.Text
                Response.Redirect("AdmindashBord.aspx")
            End If


        Catch ex As Exception
            lblpwd.Text = ex.Message

        End Try
        con.Close()

    End Sub
End Class
