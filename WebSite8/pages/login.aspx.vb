﻿Imports System.Data.SqlClient
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
        'Try
        '    cmd.CommandText = " select id from tbl_user where uname= '" & txtemail.Text & "' and pwd ='" & txtpwd.Text & "'"
        '    con.Open()
        '    dr = cmd.ExecuteScalar()
        '    If dr.HasRows Then

        '        dr.Read()
        '        Session("uname") = dr("name").ToString()



        '        Response.Redirect("~/pages/dashbord.aspx")

        '    Else
        '        MsgBox("false info")


        '    End If
        'Catch ex As Exception

        'End Try
        Try

            cmd.CommandText = "SELECT uname, pwd,gender FROM tbl_user WHERE uname = @uname AND pwd = @pwd"
            cmd.Parameters.AddWithValue("@uname", txtemail.Text)
            cmd.Parameters.AddWithValue("@pwd", txtpwd.Text)

            If con.State = ConnectionState.Closed Then
                con.Open()
            End If
            dr = cmd.ExecuteReader()

            If dr.HasRows Then
                ' Authentication successful
                dr.Read()
                Session("uname") = dr("uname").ToString()
                'Dim gender As String = dr("gender").ToString()

                'If gender = "Male" Then
                '    Session("Gender") = "Female"
                'ElseIf gender = "Female" Then
                '    Session("Gender") = "Male"
                'End If

                ' Redirect to the dashboard page
                Response.Redirect("~/pages/dashbord.aspx")
            Else



            End If
            con.Close()
        Catch ex As Exception
            MsgBox(ex.InnerException)


        End Try





        dr.Close()
    End Sub
End Class

