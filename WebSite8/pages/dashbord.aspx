<%@ Page Title="" Language="VB" MasterPageFile="~/pages/MasterPage.master" AutoEventWireup="false" CodeFile="dashbord.aspx.vb" Inherits="pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 1359px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class ="container-fluied">
<h1>
    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label></h1>
 <table>
      <tr>
        <td class="style1" align=""center">
         
        </td>
      </tr>
      <tr>
      </tr>
      <tr>
        <td class="style1">
             <asp:DataList ID="datalist_user" runat="server" CellPadding="1" DataKeyField="uname"
                    DataSourceID="SqlDataSource2" RepeatDirection="Horizontal"
                    Font-Bold="True" Font-Names="Levenim MT" RepeatColumns="4" 
                    BorderColor="#51A8FF" BorderStyle="Ridge" BorderWidth="3px" CellSpacing="3" 
                    CssClass="style_dashboard_table" HorizontalAlign="Center">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#DEDFDE" BorderColor="Gray" BorderStyle="Solid" 
                        BorderWidth="3px" CssClass="bio" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Wrap="True" ForeColor="Black" Width="25%" />
                    <ItemTemplate >
                        &nbsp;<asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>'
                            Width="150px" AlternateText="*Profile Image Not Found" ForeColor="Red"  />
                        <br />
                        Name:
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        &nbsp;<asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                        <br />
                        Gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />
                        Height:
                        <asp:Label ID="heightLabel" runat="server" Text='<%# Eval("height") %>' />
                        <br />
                        Weight:
                        <asp:Label ID="weightLabel" runat="server" Text='<%# Eval("weight") %>' />
                        <br />
                        DoB:
                        <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
                        <br />
                        Religion:
                        <asp:Label ID="religionLabel" runat="server" Text='<%# Eval("religion") %>' />
                        <br />
                        City:
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                        <br />
                        Graduation:
                        <asp:Label ID="graduationLabel" runat="server" Text='<%# Eval("graduation") %>' />
                        <br />
                        Profession:
                        <asp:Label ID="professionLabel" runat="server" Text='<%# Eval("profession") %>' />
                        <br />
                        <asp:LinkButton ID="btn_dlt_account" runat="server" BorderStyle="Solid" 
                            CssClass="btn btn-dark" Font-Names="Arial" Font-Underline="False" 
                            ForeColor="White" Width="130px" >View Profile...</asp:LinkButton>
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:conString %>" 
                 SelectCommand="SELECT * FROM [tbl_user]"></asp:SqlDataSource>
        </td>
      </tr>
    </table>
</div>


</asp:Content>

