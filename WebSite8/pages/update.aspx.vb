Imports System.Data.SqlClient
Imports System.Data
Partial Class pages_update
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Dim dr As SqlDataReader
    Dim constring As String = ConfigurationManager.ConnectionStrings("conString").ToString

    Dim filepath As String
    Sub loadData()

        Try
            Dim uid As Integer = Session("uid")

            cmd.CommandText = "select * from tbl_user where uid=" & uid & ""
            con.Open()
            dr = cmd.ExecuteReader()

            If dr.HasRows Then
                While (dr.Read())
                    utxtname.Text = dr("uname").ToString
                    utxtage.Text = dr("age").ToString
                    utxtmobile.Text = dr("mobile").ToString
                    utxtdob.Text = dr("dob").ToString
                    uddlgender.SelectedValue = dr("gender").ToString
                    utxtemail.Text = dr("email").ToString
                    filepath = dr("profile_image").ToString
                    uprofileimg.ImageUrl = filepath
                    uddlreligion.SelectedValue = dr("religion").ToString
                    uddlmothertongue.SelectedValue = dr("mother_tongue").ToString
                    uddlcity.SelectedValue = dr("city").ToString
                    utxtoccupation.Text = dr("occupation").ToString
                    utxtqualification.Text = dr("qualification").ToString
                    utxtheight.Text = dr("height").ToString
                    utxtweight.Text = dr("weight").ToString
                    utxtnoofmember.Text = dr("total_family_members").ToString
                    utxtnoofbrother.Text = dr("no_of_brothers").ToString
                    utxtnoofsister.Text = dr("no_of_sisters").ToString
                    ureqddlgender.SelectedValue = dr("req_gender").ToString
                    ureqtxtminage.Text = dr("req_min_age").ToString
                    ureqtxtmaxage.Text = dr("req_max_age").ToString
                    ureqddlreligion.SelectedValue = dr("req_religion").ToString
                    ureqddlcity.SelectedValue = dr("req_city").ToString
                End While
            End If
            con.Close()
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = constring
        cmd.Connection = con
        Try
            If IsPostBack = False Then
                loadData()
            End If
        Catch ex As Exception
            Response.Write(ex.Message)

        End Try
    End Sub
End Class
