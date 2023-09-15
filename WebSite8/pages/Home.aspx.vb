
Partial Class Home
    Inherits System.Web.UI.Page

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Get the selected values from dropdowns
       
    End Sub

    Protected Sub btnSerch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSerch.Click
        Dim selectedGender As String = DropDownList3.SelectedValue
        Dim selectedMinAge As String = DropDownList2.SelectedValue
        Dim selectedMaxAge As String = DropDownList1.SelectedValue
        Dim selectedReligion As String = DropDownList4.SelectedValue

        ' Create a new cookie for each selected value
        Dim genderCookie As New HttpCookie("SelectedGender", selectedGender)
        Dim minAgeCookie As New HttpCookie("SelectedMinAge", selectedMinAge)
        Dim maxAgeCookie As New HttpCookie("SelectedMaxAge", selectedMaxAge)
        Dim religionCookie As New HttpCookie("SelectedReligion", selectedReligion)

        ' Set the cookies to expire when the browser is closed
        genderCookie.Expires = DateTime.MinValue
        minAgeCookie.Expires = DateTime.MinValue
        maxAgeCookie.Expires = DateTime.MinValue
        religionCookie.Expires = DateTime.MinValue

        ' Add the cookies to the response
        Response.Cookies.Add(genderCookie)
        Response.Cookies.Add(minAgeCookie)
        Response.Cookies.Add(maxAgeCookie)
        Response.Cookies.Add(religionCookie)

        ' Redirect to the dashboard page
        Response.Redirect("dashbord.aspx")
    End Sub

End Class
