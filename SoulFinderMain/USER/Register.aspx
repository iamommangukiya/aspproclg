<%@ Page Title="" Language="VB" MasterPageFile="~/DashBoard.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <style type="text/css">
       /*Register Page CSS*/
        .body
        {
            background-image: url('../Images/img_Register.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .style13
        {
            height: 39px;
        }
        .style15
      {
          width: 101px;
      }
      .style16
      {
          font-family: Microsoft Sans Serif;
          font-size : 15px;
          font-weight: bold;
          color: White;
          width: 101px;
      }
      .style17
      {
          font-family: Microsoft Sans Serif;
          font-size : 15px;
          font-weight: bold;
          color: White;
          height: 23px;
      }
      .style19
      {
          width: 216px;
      }
      .style20
      {
          width: 46px;
      }
      .style21
      {
          width: 77px;
      }
      .style22
      {
          font-family: Microsoft Sans Serif;
          font-size : 15px;
          font-weight: bold;
          color: White;
          height: 23px;
          width: 77px;
      }
        </style>
 <div margin-top:5%">
        <table align="center" >
            <tr>
                <td align="center" style="font-family: 'Levenim MT'; font-size: 55px;
                    font-weight: bold; font-style: normal; color: #FFFFFF">
                    Registration
                </td>
            </tr>
            </table>
    </div>
    <div>
    
        <table class="style_Register_table" align="center" 
            style="margin-bottom: 20px; font-family: 'Microsoft Sans Serif'; font-size: medium; font-weight: bold; font-style: normal; color: #FFFFFF;">
           <tr>
                <td colspan="9" align="center" style="font-family: 'Levenim MT'; font-size: 25px;
                    font-weight: bold; font-style: normal; color: #FFFFFF">
                    Create a new account,Register yourself<br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="9" align="center" class="rounded_error_msg">
                    <asp:Label ID="lblmsg" runat="server" 
                        ForeColor="#FF4848">*Please Fill The Required Fields</asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="9" align="right">
                    ( * ) - Required fields<br />
                    (
                    <asp:Label ID="Label1" runat="server" BackColor="Red" 
                        CssClass="rounded-i-button" Font-Size="Small" ForeColor="White" Height="15px" 
                        Text="!" Width="5px"></asp:Label>
&nbsp;) - Error field</td>
            </tr>
           <tr>
                <td colspan="9" align="left" 
                    style="font-family: 'Levenim MT'; font-size: 15px;
                    font-weight: bold; font-style: italic; color: #FFFFFF; font-variant: normal; text-transform: capitalize;">
                    *Note:- you can not update your profile image so upload 
                    Image carefully.</td>
            </tr>
            <tr>
               <td align="justify" class="style_Register_table" colspan="9" 
                    
                    style="font-family: 'Levenim MT'; font-size: 25px; font-weight: bold; font-style: normal; color: #FF5E5E; background-color: #FFFFFF;padding-left:40px;">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Select Photo : 
                    <asp:FileUpload ID="FileUpload1" runat="server" 
                        CssClass="textbox_style_login" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        BackColor="Red" ControlToValidate="FileUpload1" CssClass="rounded-i-button" 
                        ForeColor="White" Height="20px" ValidationGroup="reg_grp" Width="10px">!</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="FileUpload1" Font-Size="Small" ForeColor="Red" 
                        ValidationGroup="reg_grp">Select an image</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="9" class="style13">
                    </td>
            </tr>
            <tr>
               <td align="justify" class="style_Register_table" colspan="9" 
                    
                    style="font-family: 'Levenim MT'; font-size: 25px; font-weight: bold; font-style: normal; color: #FF5E5E; background-color: #FFFFFF;padding-left:40px;">
                    Personal Details</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px" align="center">
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    First Name</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_fname" runat="server" 
                        CssClass="textbox_style" Width="190px"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="justify">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_fname" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="style16" style="padding: 10px" align="center">
                    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Middle Name</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_mname" runat="server" 
                       CssClass="textbox_style" Width="190px"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_mname" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Last Name</td>
                <td style="padding: 10px" class="style19">
                    <asp:TextBox ID="txt_reg_lname" runat="server" 
                       CssClass="textbox_style" Width="190px"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_lname" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Gender</td>
                <td class="text_style" style="padding: 10px;color:#ED7878;">
                    <asp:RadioButtonList ID="rdb_reg_gender" runat="server" 
                        RepeatDirection="Horizontal" ForeColor="White">
                        <asp:ListItem Value="0">Male</asp:ListItem>
                        <asp:ListItem Value="1">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="text_style" style="padding: 10px;color:#ED7878;" align="justify">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        BackColor="Red" ControlToValidate="rdb_reg_gender" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="style16"style="padding: 10px">
                    <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    E-mail</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_email" runat="server" 
                       CssClass="textbox_style" Width="170px"></asp:TextBox>
                    <br />
                    </td>
                <td style="padding: 10px" align="center" class="style20">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_email" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationExpression="^[a-z0-9_.]+@gmail\.com$" 
                        ValidationGroup="reg_grp" Width="8px">!</asp:RegularExpressionValidator>
                    </td>
                <td class="text_style"style="padding: 10px">
                    <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Mobile No.</td>
                <td style="padding: 10px" class="style19">
                    <asp:TextBox ID="txt_reg_mno" runat="server" 
                       CssClass="textbox_style" MaxLength="10" Width="170px"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style21">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_mno" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationExpression="^\d{10}$" 
                        ValidationGroup="reg_grp" Width="8px">!</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style17" style="padding: 10px">
                    </td>
                <td class="style17" style="padding: 10px;color:#ED7878;">
                </td>
                <td class="style17" style="padding: 10px;color:#ED7878;" align="justify">
                    &nbsp;</td>
                <td class="style17"style="padding: 10px" colspan="5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txt_reg_email" 
                        ForeColor="White" ValidationExpression="^[a-z0-9_.]+@gmail\.com$" 
                        ValidationGroup="reg_grp" Font-Size="Small">*Email must have only lowercase letters,digits,underscore,dots and @gmail.com.</asp:RegularExpressionValidator>
                    </td>
                <td class="style22"style="padding: 10px" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Height</td>
                <td class="text_style" style="padding: 10px;color:#ED7878;">
                    <asp:TextBox ID="txt_reg_height" runat="server" 
                        CssClass="textbox_style" Width="170px"></asp:TextBox>
                </td>
                <td class="text_style" style="padding: 10px;color:#ED7878;" align="justify">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_height" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="style16"style="padding: 10px">
                    <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Weight</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_weight" runat="server" 
                        CssClass="textbox_style"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_weight" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="text_style"style="padding: 10px">
                    Family Type</td>
                <td style="padding: 10px" class="style19">
                    <asp:RadioButtonList ID="rdb_reg_family" runat="server" 
                        RepeatDirection="Horizontal" ForeColor="White" CssClass="text_style">
                        <asp:ListItem Value="0">Joint</asp:ListItem>
                        <asp:ListItem Value="1">Nuclear</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    BirthDate</td>
                <td style="padding: 10px">
                    <asp:DropDownList ID="ddl_reg_date" runat="server" CssClass="textbox_style" 
                        Font-Size="Medium" Width="50px">
                        <asp:ListItem>DD</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem Value="02">02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddl_reg_month" runat="server" CssClass="textbox_style" 
                        Font-Size="Medium" Width="50px">
                        <asp:ListItem>MM</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddl_reg_year" runat="server" CssClass="textbox_style" 
                        Font-Size="Medium" Width="80px">
                        <asp:ListItem>YYYY</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem Value="1991"></asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem Value="1994"></asp:ListItem>
                        <asp:ListItem Value="1995"></asp:ListItem>
                        <asp:ListItem Value="1996"></asp:ListItem>
                        <asp:ListItem Value="1997"></asp:ListItem>
                        <asp:ListItem Value="1998"></asp:ListItem>
                        <asp:ListItem Value="1999"></asp:ListItem>
                        <asp:ListItem Value="2000"></asp:ListItem>
                        <asp:ListItem Value="2001"></asp:ListItem>
                        <asp:ListItem Value="2002"></asp:ListItem>
                        <asp:ListItem Value="2003"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="padding: 10px" align="justify">
                    &nbsp;</td>
                <td style="padding: 10px" class="style16">
                    <asp:Label ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Religion</td>
                <td style="padding: 10px">
                    <asp:DropDownList ID="ddl_reg_religion" runat="server" CssClass="textbox_style" 
                        Font-Size="Medium" Width="150px">
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
                <td style="padding: 10px" align="center" class="style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                        BackColor="Red" ControlToValidate="ddl_reg_religion" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px" 
                        InitialValue="Select">!</asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px" class="text_style">
                    SubCast</td>
                <td style="padding: 10px" class="style19">
                    <asp:TextBox ID="txt_reg_cast" runat="server" 
                       CssClass="textbox_style"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" class="text_style">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        BackColor="Red" ControlToValidate="ddl_reg_date" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px" 
                        InitialValue="DD">!</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        BackColor="Red" ControlToValidate="ddl_reg_month" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px" 
                        InitialValue="MM">!</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                        BackColor="Red" ControlToValidate="ddl_reg_year" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px" 
                        InitialValue="YYYY">!</asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px" class="text_style" align="justify">
                    &nbsp;</td>
                <td style="padding: 10px" class="style15">
                    &nbsp;</td>
                <td style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style20">
                    &nbsp;</td>
                <td style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" class="style19">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="8">
                    &nbsp;</td>
                <td align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
               <td align="justify" class="style_Register_table" colspan="9" 
                    
                    style="font-family: 'Levenim MT'; font-size: 25px; font-weight: bold; font-style: normal; color: #FF5E5E; background-color: #FFFFFF;padding-left:40px;">
                    Address Details</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Address</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_login_address" runat="server" 
                        CssClass="textbox_style" Height="70px" TextMode="MultiLine" Width="170px"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="justify">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        BackColor="Red" ControlToValidate="txt_login_address" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="style16" style="padding: 10px">
                    <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    City</td>
                <td style="padding: 10px">
                    <asp:DropDownList ID="ddl_reg_city" runat="server" CssClass="textbox_style" 
                        Font-Size="Medium" Width="150px">
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
                <td style="padding: 10px" align="center" class="style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                        BackColor="Red" ControlToValidate="ddl_reg_city" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px" 
                        InitialValue="Select">!</asp:RequiredFieldValidator>
                </td>
                <td class="text_style" style="padding: 10px">
                    State</td>
                <td style="padding: 10px" class="style19">
                    <asp:TextBox ID="txt_reg_state" runat="server" 
                       CssClass="textbox_style" Enabled="False" ReadOnly="True" ForeColor="White">Gujarat</asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Pin Code</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_pin" runat="server" 
                        CssClass="textbox_style" MaxLength="6"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="justify">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_pin" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationExpression="^\d{6}$" 
                        ValidationGroup="reg_grp" Width="8px">!</asp:RegularExpressionValidator>
                </td>
                <td class="style16" style="padding: 10px">
                    Area Code</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_area" runat="server" 
                       CssClass="textbox_style" MaxLength="6"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style20">
                    &nbsp;</td>
                <td class="text_style" style="padding: 10px">
                    LandLIne No.</td>
                <td style="padding: 10px" class="style19">
                    <asp:TextBox ID="landline" runat="server" 
                       CssClass="textbox_style" MaxLength="12"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" align="justify">
                    &nbsp;</td>
                <td class="style16" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style20">
                    &nbsp;</td>
                <td class="text_style" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" class="style19">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="8">
                    &nbsp;</td>
                <td align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
               <td align="justify" class="style_Register_table" colspan="9" 
                    
                    style="font-family: 'Levenim MT'; font-size: 25px; font-weight: bold; font-style: normal; color: #FF5E5E; background-color: #FFFFFF;padding-left:40px;">
                    Login Details</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    User Name </td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_uname" runat="server" 
                        CssClass="textbox_style"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="justify">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_uname" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="style16" style="padding: 10px">
                    <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
                   Password</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_pwd" runat="server" 
                       CssClass="textbox_style" TextMode="Password" MaxLength="10" Width="150px"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style20">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txt_reg_pwd" ForeColor="White" 
                        
                        ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&amp;+=!])(?!.*\s).{10}$" 
                        BackColor="Red" CssClass="rounded-i-button" Height="18px" Width="8px">!</asp:RegularExpressionValidator>
                </td>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Confirm Password</td>
                <td style="padding: 10px" class="style19">
                    <asp:TextBox ID="txt_reg_cpwd" runat="server" 
                       CssClass="textbox_style" TextMode="Password" MaxLength="10" Width="150px"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style21">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txt_reg_cpwd" ForeColor="White" 
                        
                        ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&amp;+=!])(?!.*\s).{10}$" 
                        BackColor="Red" CssClass="rounded-i-button" Height="18px" Width="8px">!</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" align="justify">
                    &nbsp;</td>
                <td class="style16" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" align="justify" class="rounded-button" colspan="3">
                    <span style="color: red; font-family: 'Microsoft Sans Serif'; font-size: small; font-weight: bold; font-style: normal; text-transform: capitalize;">
                    *the password must have at least one uppercase letter, one lowercase letter, one 
                    digit, one special character, no whitespace, and 10 characters long.</span></td>
                <td style="padding: 10px" align="justify">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="8">
                    &nbsp;</td>
                <td align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
               <td align="justify" class="style_Register_table" colspan="9" 
                    
                    style="font-family: 'Levenim MT'; font-size: 25px; font-weight: bold; font-style: normal; color: #FF5E5E; background-color: #FFFFFF;padding-left:40px;">
                    Educational Details</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    12th Stream</td>
                <td style="padding: 10px">
                    <asp:DropDownList ID="ddl_reg_stream" runat="server" CssClass="textbox_style" 
                        Font-Size="Medium" Width="150px">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>Commerce</asp:ListItem>
                        <asp:ListItem>Science</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="padding: 10px" align="justify">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        BackColor="Red" ControlToValidate="ddl_reg_stream" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px" 
                        InitialValue="Select">!</asp:RequiredFieldValidator>
                </td>
                <td class="style16" style="padding: 10px">
                    <asp:Label ID="Label20" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Graduation<br />
                    Degree</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_graduate" runat="server" 
                       CssClass="textbox_style"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_graduate" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="text_style" style="padding: 10px">
                    Post Graduation Degree</td>
                <td style="padding: 10px" class="style19">
                    <asp:TextBox ID="txt_reg_pgraduate" runat="server" 
                       CssClass="textbox_style"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    Profession</td>
                <td style="padding: 10px">
                    <asp:TextBox ID="txt_reg_profession" runat="server" 
                        CssClass="textbox_style"></asp:TextBox>
                </td>
                <td style="padding: 10px" align="justify">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        BackColor="Red" ControlToValidate="txt_reg_profession" CssClass="rounded-i-button" 
                        ForeColor="White" Height="18px" ValidationGroup="reg_grp" Width="8px">!</asp:RequiredFieldValidator>
                </td>
                <td class="style16" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style20">
                    &nbsp;</td>
                <td class="text_style" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" class="style19">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text_style" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" align="justify">
                    &nbsp;</td>
                <td class="style16" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style20">
                    &nbsp;</td>
                <td class="text_style" style="padding: 10px">
                    &nbsp;</td>
                <td style="padding: 10px" class="style19">
                    &nbsp;</td>
                <td style="padding: 10px" align="center" class="style21">
                    &nbsp;</td>
            </tr>
             <tr>
                <td colspan="8" align="center">
                    <asp:Button ID="btn_MRegister" runat="server" Text="Register" 
                        CssClass="rounded-button" ValidationGroup="reg_grp" />
                </td>
                <td align="center" class="style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="font-family: 'Microsoft Sans Serif'; font-size: 20px; font-weight: 600;
                    color: #FFFFFF" align="center" colspan="8">
                    Already have an account&nbsp;
                    <asp:LinkButton ID="btn_R_login" runat="server" Font-Bold="False" Font-Names="Levenim MT"
                        Font-Overline="False" Font-Underline="True" ForeColor="White">Login</asp:LinkButton>
                </td>
                <td class="style21" style="font-family: 'Microsoft Sans Serif'; font-size: 20px; font-weight: 600;
                    color: #FFFFFF" align="center">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

