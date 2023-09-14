<%@ Page Title="" Language="VB" MasterPageFile="~/DashBoard.master" AutoEventWireup="false"
    CodeFile="DashBoard_Admin.aspx.vb" Inherits="DashBoard_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style_dashboard_table" cellspacing="10px" align="center">
        <tr>
            <td align="center" style="font-family: 'Levenim MT'; font-size: 55px; color: #FFFFFF;
                font-weight: bold; font-style: normal;" width="70px">
                DashBoard
            </td>
        </tr>
        <tr>
            <td align="center" style="font-family: 'Levenim MT'; font-size: 55px; color: #FFFFFF;
                font-weight: bold; font-style: normal;" width="70px">
                <asp:Button ID="btn_admin_profile" runat="server" Text="Admin's Profile" CssClass="rounded-button"
                    Width="274px" />
            </td>
        </tr>
        <tr>
            <td align="justify">
            </td>
        </tr>
        <tr>
            <td align="center" style="font-family: 'Levenim MT'; font-size: 30px; font-weight: bold;
                font-style: normal; color: #FF5E5E; background-color: #FFFFFF; padding-left: 40px;"
                class="rounded-button">
                All Profiles
            </td>
        </tr>
        <tr>
                <td align="center" class="style23">
                    <asp:Label ID="lblmsg" runat="server" 
                        ForeColor="#FF4848">*Please Fill The Required Fields</asp:Label>
                </td>
            </tr>
        <tr>
            <td align="center">
                <table align="center" bgcolor="#FF5959" class="rounded-button" 
                    style="color: #FF5959; background-color: #FFFFFF; border: medium solid #FF5959; padding: 10px">
                    <tr>
                        <td align="justify" colspan="3" 
                            
                            style="font-size: x-large; font-family: 'Microsoft Sans Serif'; font-weight: bold; font-style: normal; color: #3385FF">
                            Searching ...</td>
                        <td class="style17" rowspan="2">
                            <asp:Button ID="btn_admin_search" runat="server" CssClass="rounded-button"
                            Text="Search" BackColor="#FF6464" ForeColor="White" Width="100%" 
                                ValidationGroup="admin_search" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            Gender</td>
                        <td class="style20">
                    <asp:RadioButtonList ID="rdb_admin_gender" runat="server" 
                        RepeatDirection="Horizontal" ForeColor="#FF5959">
                        <asp:ListItem Value="0">Male</asp:ListItem>
                        <asp:ListItem Value="1">Female</asp:ListItem>
                    </asp:RadioButtonList>
                        </td>
                        <td class="style24">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21">
                            Religion</td>
                        <td class="style20">
                    <asp:DropDownList ID="ddl_admin_religion" runat="server" CssClass="textbox_style" 
                        Font-Size="Medium" Width="170px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Hindu</asp:ListItem>
                        <asp:ListItem>Muslim</asp:ListItem>
                        <asp:ListItem>Christian</asp:ListItem>
                        <asp:ListItem>Shikh</asp:ListItem>
                        <asp:ListItem>Parsi</asp:ListItem>
                        <asp:ListItem>Jain</asp:ListItem>
                        <asp:ListItem>Buddhist</asp:ListItem>
                        <asp:ListItem>Inter-Religion</asp:ListItem>
                        <asp:ListItem>No Religion</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="style24">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="ddl_admin_religion" Font-Size="Small" InitialValue="Select" 
                                ValidationGroup="admin_search">*Select Properly</asp:RequiredFieldValidator>
                        </td>
                        <td class="style17" rowspan="2">
                            <asp:Button ID="btn_admin_clear" runat="server" CssClass="rounded-button"
                            Text="Clear Search" BackColor="#FF6464" ForeColor="White" Width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            City</td>
                        <td class="style19">
                    <asp:DropDownList ID="ddl_admin_city" runat="server" CssClass="textbox_style" 
                        Font-Size="Medium" Width="170px">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Amreli</asp:ListItem>
                        <asp:ListItem>Anand</asp:ListItem>
                        <asp:ListItem>Aravalli</asp:ListItem>
                        <asp:ListItem>Botad</asp:ListItem>
                        <asp:ListItem>Banaskantha</asp:ListItem>
                        <asp:ListItem>Bharuch</asp:ListItem>
                        <asp:ListItem>Bhavnagar</asp:ListItem>
                        <asp:ListItem>Chhota Udaipur</asp:ListItem>
                        <asp:ListItem>Dahod</asp:ListItem>
                        <asp:ListItem>Dang</asp:ListItem>
                        <asp:ListItem>Devbhoomi Dwarka</asp:ListItem>
                        <asp:ListItem>Gandhinagar</asp:ListItem>
                        <asp:ListItem>Gir Somnath</asp:ListItem>
                        <asp:ListItem>Jamnagar</asp:ListItem>
                        <asp:ListItem>Junagadh</asp:ListItem>
                        <asp:ListItem>Kheda</asp:ListItem>
                        <asp:ListItem>Kutch</asp:ListItem>
                        <asp:ListItem>Mehsana</asp:ListItem>
                        <asp:ListItem>Mahisagar</asp:ListItem>
                        <asp:ListItem>Morbi</asp:ListItem>
                        <asp:ListItem>Narmada</asp:ListItem>
                        <asp:ListItem>Navsari</asp:ListItem>
                        <asp:ListItem>Panchmahal</asp:ListItem>
                        <asp:ListItem>Patan</asp:ListItem>
                        <asp:ListItem>Porbandar</asp:ListItem>
                        <asp:ListItem>Rajkot</asp:ListItem>
                        <asp:ListItem>Sabarkantha</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Surendranagar</asp:ListItem>
                        <asp:ListItem>Tapi</asp:ListItem>
                        <asp:ListItem>Vadodara</asp:ListItem>
                        <asp:ListItem>Valsad</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="style25">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="ddl_admin_city" Font-Size="Small" InitialValue="Select" 
                                ValidationGroup="admin_search">*Select Properly</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style15" style="padding: 10px; margin: 10px;" align="justify">
                <asp:DataList ID="datalist_user" runat="server" CellPadding="3" DataKeyField="uname"
                    DataSourceID="SqlDataSource2" RepeatDirection="Horizontal"
                    Font-Bold="True" Font-Names="Levenim MT" 
                    BorderColor="White" BorderStyle="Ridge" BorderWidth="3px" CellSpacing="2" 
                    RepeatColumns="4" CssClass="style_dashboard_table">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <ItemStyle BackColor="#DEDFDE" ForeColor="Black" BorderColor="#FF5959" 
                        BorderStyle="Solid" CssClass="rounded-button" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <ItemTemplate>
                        &nbsp;<asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>'
                            Width="150px" AlternateText="*Profile Image Not Found" ForeColor="Red" CssClass="style_dashboard_profile_image" />
                        <br />
                        Name:
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        &nbsp;<asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
                        &nbsp;<asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                        <br />
                        User Name:
                        <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' />
                        <br />
                        Password:<asp:Label ID="pwdLabel" runat="server" Text='<%# Eval("pwd") %>'></asp:Label>
                        <br />
                        Gender:
                        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
                        <br />
                        Email:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                        <br />
                        Mobile no:
                        <asp:Label ID="mnoLabel" runat="server" Text='<%# Eval("mno") %>' />
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
                        Address:
                        <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        <br />
                        City:
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                        <br />
                        Pincode:
                        <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                        <br />
                        Graduation:
                        <asp:Label ID="graduationLabel" runat="server" 
                            Text='<%# Eval("graduation") %>' />
                        <br />
                        Profession:
                        <asp:Label ID="professionLabel" runat="server" Text='<%# Eval("profession") %>' />
                        <br />
                        <asp:Button ID="btn_admin_dlt" runat="server" CssClass="rounded-button"
                            Text="Delete Profile" BackColor="#FF6464" ForeColor="White" Width="100%" />
                        <br />
                    </ItemTemplate>
                  
                    <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                  
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>"
                    SelectCommand="SELECT * FROM [tbl_user]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
                <td align="center" class="style22">
                    <asp:Label ID="lblmsg_data" runat="server" 
                        ForeColor="#FF5959" CssClass="rounded-button" 
                        Font-Names="Microsoft Sans Serif" Font-Size="20pt"></asp:Label>
                </td>
            </tr>
        <tr>
            <td class="style15">
                &nbsp;
            </td>
        </tr>
    </table>
    <style type="text/css">
        /*dashboard Page CSS*/
        .body
        {
            background-image: url('../Images/img_DashBoard.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        
        
        
        .style15
        {
            width: 81%;
        }
        
        
        
        
        .style16
        {
            height: 24px;
            width: 143px;
        }
        .style17
        {
            width: 233px;
        }
        .style19
        {
            height: 24px;
            width: 201px;
        }
        .style20
        {
            width: 201px;
        }
        .style21
        {
            width: 143px;
        }
        .style22
        {
            height: 24px;
        }
        .style23
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 5px 10px;
            font-size: 15px;
            font-weight : bold;
            font-family: Microsoft Sans Serif;
            border-radius: 5px; /* Adjust the border radius value */;
            background-color: #fff;
            color: #EB6363;
            cursor: pointer;
            height: 38px;
        }
        .style24
        {
            width: 40px;
        }
        .style25
        {
            height: 24px;
            width: 40px;
        }
    </style>
</asp:Content>
