<%@ Page Title="" Language="VB" MasterPageFile="~/pages/MasterPage.master" AutoEventWireup="false" CodeFile="ragi.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
      <div
   
        class="container d-flex justify-content-center align-items-center glassy-table"
        style="display: flex; justify-content: center; margin: 90px ;padding:15px;  
            
      >
        <div class="align-items-center  d-flex glassy-table  justify-content-center" style="height:100vh;">
          
      
      
          <table>
            <tr>
              <td colspan="3"><h1>Ragistration</h1></td>
            </tr>
            <tr>
              <td colspan="3"><h4>Create a new account</h4></td>
            </tr>
            <tr>
            <td colspan="2">Profile pic</td>
            <td colspan="4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
              <td>Firstname</td>
              <td><asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
              <td>Lastname</td>
              <td><asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
              <td>Middle Name</td>
              <td><asp:TextBox ID="txtmname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
              <td>gender</td>
              <td>
                <asp:DropDownList
                  CssClass="styled-dropdown"
                  ID="ddgender"
                  runat="server"
                >
                  <asp:ListItem>Male</asp:ListItem>
                  <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
              </td>
              <td>email</td>
              <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
              <td>Mobile no</td>
              <td><asp:TextBox ID="txtmo" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
              <td>height</td>
              <td><asp:TextBox ID="txtheight" runat="server"></asp:TextBox></td>
              <td>weight</td>
              <td><asp:TextBox ID="txtwhight" runat="server"></asp:TextBox></td>
              <td>Family type</td>
              <td>
                <asp:DropDownList
                  CssClass="styled-dropdown"
                  ID="ddfamily"
                  runat="server"
                >
                  <asp:ListItem>Joint</asp:ListItem>
                  <asp:ListItem>Nucliar</asp:ListItem>
                </asp:DropDownList>
              </td>
            </tr>
            <tr>
              <td>Birth date</td>
              <td>
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
              <td>Religion</td>
              <td>
                <asp:DropDownList
                  ID="ddl_reg_religion"
                  runat="server"
                  CssClass="textbox_style"
                  Font-Size="Medium"
                  Width="150px"
                >
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
              <td>Sub cast</td>
              <td><asp:TextBox ID="txtcast" runat="server"></asp:TextBox></td>
            </tr>
            <td>age</td>
              <td><asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
            <tr>
            </tr>
            <td colspan="3">
              <h2>Address Details</h2>
            </td>
            <tr>
              <td>Address</td>
              <td>
                <asp:TextBox
                  ID="txtadd"
                  runat="server"
                  TextMode="MultiLine"
                ></asp:TextBox>
              </td>
              <td>city</td>
              <td>
                <asp:DropDownList
                  ID="ddl_reg_city"
                  runat="server"
                  CssClass="textbox_style"
                  Font-Size="Medium"
                  Width="150px"
                >
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
              <td>state</td>
              <td>
                <asp:TextBox
                  ID="txt_reg_state"
                  runat="server"
                  CssClass="textbox_style"
                  Enabled="False"
                  ReadOnly="True"
                  ForeColor="White"
                  >Gujarat</asp:TextBox
                >
              </td>
            </tr>
            <tr>
              <td>Pin code</td>
              <td>
                <asp:TextBox
                  ID="txtpincode"
                  runat="server"
                 
                ></asp:TextBox>
              </td>
              <td>Area Code</td>
              <td>
                <asp:TextBox
                  ID="txtacode"
                  runat="server"
              
                ></asp:TextBox>
              </td>
              <td>Landline no</td>
              <td>
                <asp:TextBox
                  ID="txtlanline"
                  runat="server"
                  
                ></asp:TextBox>
              </td>
            </tr>
            <tr>
              <td colspan="3">
                <h2>Login Details</h2>
              </td>
            </tr>
            <tr>
              <td>user Name</td>
              <td><asp:TextBox ID="txtuname" runat="server"></asp:TextBox></td>
              <td>Password</td>
              <td>
                <asp:TextBox
                  ID="txtpwd"
                  runat="server"
                  TextMode="Password"
                ></asp:TextBox>
              </td>
              <td>Conform password</td>
              <td>
                <asp:TextBox
                  ID="txtcpwd"
                  runat="server"
                  TextMode="Password"
                ></asp:TextBox>
              </td>
            </tr>
            <tr>
              <td colspan="3">
                <h2>Educational Details</h2>
              </td>
            </tr>
            <tr>
              <td>12thstream</td>
              <td>
                <asp:DropDownList
                  CssClass="styled-dropdown"
                  ID="ddstream"
                  runat="server"
                >
                  <asp:ListItem>Science</asp:ListItem>
                  <asp:ListItem>Commers</asp:ListItem>
                  <asp:ListItem>Arts</asp:ListItem>
                  <asp:ListItem>deploma</asp:ListItem>
                </asp:DropDownList>
              </td>
              <td>graduation degree</td>
              <td><asp:TextBox ID="txtgdegree" runat="server"></asp:TextBox></td>
              <td>Post graduation degree</td>
              <td><asp:TextBox ID="txtpdegree" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
              <td>Profession</td>
              <td><asp:TextBox ID="txtprofe" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
             <td colspan="6">
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
             <td>
                 <asp:Button ID="btnRagister" runat="server" Text="Button" CssClass="btn btn-dark" />
             </td>
             </tr>
          </table>
      

        </div>
      </div>

</asp:Content>

