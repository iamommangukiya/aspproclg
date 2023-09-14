<%@ Page Title="" Language="VB" MasterPageFile="~/DashBoard.master" AutoEventWireup="false" CodeFile="View Profile.aspx.vb" Inherits="USER_View_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style_login_table" style="margin-top: 1%">
        <tr>
            <td align="center" style="font-family: 'Levenim MT'; font-size: 55px;
                color: #FFFFFF; font-weight: bold; font-style: normal;">
                Profile
            </td>
        </tr>
        <tr>
            <td align="center" class="rounded-button" style="width: 100%">
                &nbsp;
                <asp:LinkButton ID="btn_link_goback" runat="server" Font-Bold="True" 
                    Font-Names="Levenim MT" Font-Size="Large" Font-Underline="False">Click Here To Go Back...</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100%; height: 12px;">
            </td>
        </tr>
        <tr>
            <td class="rounded_error_msg" align="center" style="width: 100%">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#FF4848" Font-Bold="True" Font-Names="Microsoft Sans Serif">*Details of profile which you have been selected</asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    DataKeyNames="uname" DataSourceID="SqlDataSource1" Height="50px" Width="80%"
                    EnableTheming="True" Font-Names="Levenim MT" BackColor="White" BorderColor="#3E7CFF"
                    BorderStyle="Solid" BorderWidth="3px" Font-Bold="True">
                    <EditRowStyle BackColor="White" BorderColor="#3E7CFF" Font-Bold="True" 
                        ForeColor="#FF6666" BorderWidth="3px" />
                    <Fields>
                        <%--<asp:TemplateField HeaderText="Profile Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>'
                            Width="100px" AlternateText="*Profile image not found" ForeColor="Red" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </EditItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:ImageField DataImageUrlField="image" HeaderText="Profile Image">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                        <asp:BoundField DataField="mname" HeaderText="Middle Name" SortExpression="mname" />
                        <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="email" HeaderText="Email ID" 
                            SortExpression="email" />
                        <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
                        <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
                        <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                        <asp:BoundField DataField="dob" HeaderText="DoB" SortExpression="dob" />
                        <asp:BoundField DataField="religion" HeaderText="Religion" SortExpression="religion" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                        <asp:BoundField DataField="graduation" HeaderText="Graduation" SortExpression="graduation" />
                        <asp:BoundField DataField="profession" HeaderText="Profession" SortExpression="profession" />
                    </Fields>
                    <FooterStyle BackColor="#FF6666" ForeColor="White" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>"
                    SelectCommand="SELECT * FROM [tbl_user] WHERE ([uname] = @uname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="uname" SessionField="uname_view" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

