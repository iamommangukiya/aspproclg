<%@ Page Title="" Language="VB" MasterPageFile="~/DashBoard.master" AutoEventWireup="false"
    CodeFile="DashBoard.aspx.vb" Inherits="DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style_dashboard_table" cellspacing="10px" align="center">
        <tr>
            <td align="center" colspan="2" style="font-family: 'Levenim MT'; font-size: 55px;
                color: #FFFFFF; font-weight: bold; font-style: normal;">
                DashBoard
            </td>
        </tr>
        <tr>
            <td align="center" style="font-family: 'Levenim MT'; font-size: 30px; font-weight: bold;
                font-style: normal; color: #FF5E5E; background-color: #FFFFFF;" 
                class="rounded-button">
                Profile
            </td>
            <td align="justify" style="font-family: 'Levenim MT'; font-size: 30px; font-weight: bold;
                font-style: normal; color: #FF5E5E; background-color: #FFFFFF; padding-left: 40px;"
                class="rounded-button">
                BioDatas</td>
        </tr>
        <tr>
            <td class="style16" align="center" width="70px">
                <asp:Label ID="lblmsg" runat="server"
                    ForeColor="#FF4848" Font-Bold="True" Font-Names="Microsoft Sans Serif"></asp:Label>
            </td>
            <td class="style17">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" valign="top" rowspan="2" >
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    DataKeyNames="uname" DataSourceID="SqlDataSource1" ForeColor="Black"
                    Height="50px" Width="125px" EnableTheming="True" Font-Names="Levenim MT" 
                    BorderColor="#FF5959" BorderStyle="Solid" BorderWidth="3px" 
                    CellSpacing="2" CssClass="rounded-button">
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
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
                        <asp:ImageField AlternateText="*Profile Picture Does Not Found" DataImageUrlField="image"
                            HeaderText="Profile Picture">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                        <asp:BoundField DataField="mname" HeaderText="Middle Name" SortExpression="mname" />
                        <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="uname" HeaderText="User Name" SortExpression="uname" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="graduation" HeaderText="Graduation" 
                            SortExpression="graduation" />
                        <asp:BoundField DataField="profession" HeaderText="Profession" 
                            SortExpression="profession" />
                    </Fields>
                    <FooterStyle BackColor="#FF6666" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Width="100%" CssClass="rounded-button" />
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF6464" 
                            Font-Bold="True" Font-Italic="False" Font-Size="Large" ForeColor="White" 
                            Width="100%">More Details...</asp:LinkButton>
                    </FooterTemplate>
                    <HeaderStyle BackColor="#FF5959" Font-Bold="True" ForeColor="White" 
                        Font-Size="18pt" />
                    <HeaderTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("mname") %>'></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                    </HeaderTemplate>
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>"
                    
                    SelectCommand="SELECT [image], [fname], [mname], [lname], [email], [mno], [uname], [graduation], [profession], [city] FROM [tbl_user] WHERE ([uname] = @uname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="uname" SessionField="uname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Button ID="btn_dlt_account" runat="server" CssClass="rounded-button" Font-Size="Medium"
                    Text="Delete Account" ForeColor="#FF4848" Width="100%" />
            </td>
            <td 
                align="center">
                <table align="center" bgcolor="#FF5959" class="rounded-button" 
                    style="color: #FF5959; background-color: #FFFFFF; border: medium solid #FF5959; padding: 10px; width: 539px;">
                    <tr>
                        <td align="justify" colspan="2" 
                            style="font-size: x-large; font-family: 'Microsoft Sans Serif'; font-weight: bold; font-style: normal; color: #3385FF" 
                            width="60%">
                            Searching ...</td>
                        <td align="justify" 
                            style="font-size: x-large; font-family: 'Microsoft Sans Serif'; font-weight: bold; font-style: normal; color: #3385FF">
                            &nbsp;</td>
                        <td class="style17" rowspan="2">
                            <asp:Button ID="btn_user_search" runat="server" CssClass="rounded-button"
                            Text="Search" BackColor="#FF6464" ForeColor="White" Width="100%" 
                                ValidationGroup="user_search" />
                        </td>
                    </tr>
                    <tr>
                        <td align="justify" class="style21" width="60%">
                            Gender</td>
                        <td class="style20">
                    <asp:RadioButtonList ID="rdb_user_gender" runat="server" 
                        RepeatDirection="Horizontal" ForeColor="#FF5959">
                        <asp:ListItem Value="0">Male</asp:ListItem>
                        <asp:ListItem Value="1">Female</asp:ListItem>
                    </asp:RadioButtonList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="justify" class="style21" width="60%">
                            Religion</td>
                        <td class="style20">
                    <asp:DropDownList ID="ddl_user_religion" runat="server" CssClass="textbox_style" 
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
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="ddl_user_religion" Font-Size="Small" InitialValue="Select" 
                                ValidationGroup="user_search">*Select Properly</asp:RequiredFieldValidator>
                        </td>
                        <td class="style17" rowspan="2">
                            <asp:Button ID="btn_user_clear" runat="server" CssClass="rounded-button"
                            Text="Clear Search" BackColor="#FF6464" ForeColor="White" Width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td align="justify" class="style22" width="60%">
                            City</td>
                        <td class="style19">
                    <asp:DropDownList ID="ddl_user_city" runat="server" CssClass="textbox_style" 
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
                        <td class="style23">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="ddl_user_city" Font-Size="Small" InitialValue="Select" 
                                ValidationGroup="user_search">*Select Properly</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td 
                align="center">
                <asp:DataList ID="datalist_user" runat="server" CellPadding="1" DataKeyField="uname"
                    DataSourceID="SqlDataSource2" RepeatDirection="Horizontal"
                    Font-Bold="True" Font-Names="Levenim MT" RepeatColumns="3" 
                    BorderColor="#51A8FF" BorderStyle="Ridge" BorderWidth="3px" CellSpacing="3" 
                    CssClass="style_dashboard_table">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#DEDFDE" BorderColor="#FF5959" BorderStyle="Solid" 
                        BorderWidth="3px" CssClass="rounded-button" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Wrap="True" ForeColor="Black" />
                    <ItemTemplate>
                        &nbsp;<asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>'
                            Width="150px" AlternateText="*Profile Image Not Found" ForeColor="Red" CssClass="style_dashboard_profile_image" />
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
                        <asp:LinkButton ID="s" runat="server" BorderStyle="Solid" 
                            CssClass="rounded-button" Font-Names="Arial" Font-Underline="False" 
                            ForeColor="White" Width="130px" BackColor="#FF5B5B" onclick="s_Click">View Profile...</asp:LinkButton>
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>"
                    SelectCommand="SELECT * FROM [tbl_user]" 
                    ProviderName="<%$ ConnectionStrings:conString.ProviderName %>"></asp:SqlDataSource>
                    <asp:Label ID="lblmsg_data" runat="server" 
                        ForeColor="#FF5959" CssClass="rounded-button" 
                        Font-Names="Microsoft Sans Serif" Font-Size="20pt">*****</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14" align="center">
                &nbsp;</td>
            <td class="style15" align="center">
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
        
        
        
        .style14
        {
            width: 16%;
        }
        .style15
        {
            width: 81%;
        }
        
        
        
        .style16
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
            width: 170px;
            height: 38px;
        }
        .style17
        {
            width: 81%;
            height: 38px;
        }
        .style21
        {
            width: 182px;
        }
        .style20
        {
            width: 238px;
        }
        .style19
        {
            height: 24px;
            width: 238px;
        }
        .style22
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
            width: 182px;
            height: 38px;
        }
        .style23
        {
            height: 24px;
        }
    </style>
</asp:Content>
