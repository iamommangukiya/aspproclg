<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ragister.aspx.vb"
Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
   
    <style>
    .glassy-table {
                    border-radius: 10px;
  padding: 30px 40px;
 
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  border: 2px solid rgba(255, 255, 255, 0.2);
  background: transparent;
  backdrop-filter: blur(20px);
  
         }</style>
    <title></title>
  </head>
  <body >
    <form id="form1" runat="server">
      <div
        class="container d-flex justify-content-center align-items-center"
        style="display: flex; justify-content: center; margin: 20px"
      >
        <div class="align-items-center  d-flex glassy-table  justify-content-center">
          <table>
            <tr>
              <td colspan="3"><h1>Ragistration</h1></td>
            </tr>
            <tr>
              <td colspan="3"><h4>Create a new account</h4></td>
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
                <asp:TextBox
                  ID="txtbirth"
                  runat="server"
                
                ></asp:TextBox>
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
           
            
           
          </table>
        </div>
      </div>
    </form>
  </body>
</html>
