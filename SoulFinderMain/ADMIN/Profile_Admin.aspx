<%@ Page Title="" Language="VB" MasterPageFile="~/DashBoard.master" AutoEventWireup="false" CodeFile="Profile_Admin.aspx.vb" Inherits="ADMIN_Profile_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style_login_table" style="margin-top: 1%">
        <tr>
            <td align="center" 
                
                
                style="font-family: 'Levenim MT'; font-size: 30px; font-weight: bold;
                font-style: normal; color: #FF5E5E; background-color: #FFFFFF; width: 129px;" 
                class="rounded-button">
                Admin Profile
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
            <td align="center" class="style12" style="width: 129px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/img_Admin.png" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style12" style="width: 129px">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal"
                    Height="50px" Width="296px" EnableTheming="True" Font-Names="Levenim MT" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    Font-Bold="True">
                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="uname" HeaderText="User Name :" 
                            SortExpression="uname" />
                        <asp:BoundField DataField="pwd" HeaderText="Password :" SortExpression="pwd" />
                        <asp:BoundField DataField="cpwd" HeaderText="Confirm Password :" 
                            SortExpression="cpwd" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>"
                    
                    SelectCommand="SELECT [uname], [pwd], [cpwd] FROM [tbl_admin] WHERE ([id] = @id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="rounded_error_msg" align="center" width="100%">
                <asp:Label ID="lblmsg" runat="server"
                    ForeColor="#FF4848" Font-Bold="True" Font-Names="Microsoft Sans Serif" 
                    Width="100%">*No Need To Create Profile For An Admin</asp:Label>
            </td>
            </tr>
    </table>
</asp:Content>

