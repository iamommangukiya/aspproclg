<%@ Page Title="" EnableEventValidation="false" Language="VB" MasterPageFile="~/pages/MasterPage.master" AutoEventWireup="false" CodeFile="detailProfile.aspx.vb" Inherits="pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/basic.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="conatiner glassy-table">
        <asp:ImageButton ID="btnfav" runat="server" class="fav-btn" 
            ImageUrl="~/images/fav_outline.png" Visible="False"/>
        <asp:ImageButton ID="btnfavfill" runat="server" class="fav-btn" 
            ImageUrl="~/images/fav_fill.png" Visible="False" />
        <asp:DataList ID="dlprofile" CssClass="dlprofile" runat="server">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td align="center" colspan="2" class="pageTitle">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2">
                            <asp:Image ID="Image1" runat="server"  
                                Width="200px" Height="200px" class="profileImg" ImageUrl='<%# Eval("image") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mobile No.</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("mno") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            EmailID</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Date of Birth</td>
                        <td class="style2">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Age</td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Religion</td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("religion") %>'></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            City</td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" class="topicLable" Font-Bold="True" 
                                Font-Overline="False" Font-Size="20px" Font-Underline="True" 
                                Text="Work Details :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Profession</td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("profession") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Qualification</td>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("graduation") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" class="topicLable" Font-Bold="True" 
                                Font-Overline="False" Font-Size="20px" Font-Underline="True" 
                                Text="Physical Details :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Height</td>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("height") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Weight</td>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("weight") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

