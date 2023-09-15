<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminLogin.aspx.vb" Inherits="Admin_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
      <style type="text/css">
        .linka
        {
            text-align:right;
            }
        body 
        {

         
            display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: url('../images/bg.jpg') no-repeat;
  background-size: cover;
  background-position: center;
        
        }
         .glassy-table {
                    border-radius: 10px;
  padding: 30px 40px;
  width: 400px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  border: 2px solid rgba(255, 255, 255, 0.2);
  background: transparent;
  backdrop-filter: blur(20px);
  
         }
       tr
       {
           padding:5px;
           margin:5px;}
           
        
       
        td
       {
           padding:5px;
           margin:5px;}
           
        
       
        input {
  font-size: 16px;

  padding: 10px 10px 10px 10px;
  text-align:center;
    
  
  
  height: 100%;
  color: white; /* Change text color to white */
  background: transparent;
  border: none;
  outline: none;
  border: 2px solid rgba(0, 0, 0, 0.473);
  border-radius: 40px;
}
       
        input:focus {
        border-color: white; /* Change border color to white */
          border: 2px solid rgba(255, 255, 255, 0.2);
}
           
   .csslbl
   {
       font-size:20px  !important;
   }   
           
    .btn {
  width: 100%;
  height: 45px;
  background: black;
  border: none;
  outline: none;
  color: White ;
  font-weight: bold;

  border-radius: 40px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
       </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>




      <div align="center" class="glassy-table">
    
    
    
        <table class="style1" 
            style="font-family: Bahnschrift; font-size: medium; font-weight: 400; font-style: normal" >
            <tr >
                <td colspan="2"  align="center" class="style11" >
                  
                   <h1 style="margin:0; padding:0" >Admin Login&nbsp;</h1></td>
                <td class="style2">
                    </td>
            </tr>
           
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" CssClass="csslbl" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Required Email" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

           
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5"  CssClass="csslbl" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpwd" ErrorMessage="Required Password" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
          
            <tr>
                <td class="style9" colspan="2" align="center" > 
                        &nbsp;</td>
                <td class="style2">
                    </td>
            </tr>
            <tr>
                <td class="style8" colspan="2" align="center" > 

                    <asp:Button ID="btnAlogin" runat="server" Text="Login" class="btn" Height="37px"     
                        Width="219px" />
                    <br />
                    <asp:Label ID="lblpwd" runat="server"></asp:Label>
                    <br />
                   
                </td>
                <td class="style2">
                    </td>
            </tr>
            </table>
    
    </div>
    
    </div>
    </form>
</body>
</html>
