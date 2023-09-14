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

    Protected Sub datalist_user_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles datalist_user.ItemCommand
        Dim data As String = datalist_user.DataKeys(e.Item.ItemIndex).ToString()
        Session("uname_view") = data

        Response.Redirect("./Viewprofile.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


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
   
End Class
