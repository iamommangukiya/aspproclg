﻿<%@ Page Title="" Language="VB" MasterPageFile="~/DashBoard.master" AutoEventWireup="false" CodeFile="Login_Admin.aspx.vb" Inherits="Login_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style type="text/css">
       /*Login Page CSS*/
        .body
        {
            background-image: url('../Images/img_Login.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        </style>
     <div margin-top:5%">
        <table align="center" >
            <tr>
                <td align="center" style="font-family: 'Levenim MT'; font-size: 55px;
                    font-weight: bold; font-style: normal; color: #FFFFFF">
                    LogIn
                </td>
            </tr>
            </table>
    </div>
    <div align="center" style="margin: 0% 15%;">
        <table align="center" class="style_login_table" cellpadding="10px">
            <tr>
                <td colspan="2" align="center" style="font-family: 'Levenim MT'; font-size: 25px;
                    font-weight: bold; font-style: normal; color: #FFFFFF">
                    Admin Login</td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="rounded_error_msg">
                    <asp:Label ID="lblmsg" runat="server" 
                        ForeColor="#FF4848">*Please Fill The Required Fields</asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12" style="font-family: 'Microsoft Sans Serif'; font-size: 20px;
                    font-weight: 600; color: #FFFFFF" align="right">
                    User Name
                </td>
                <td class="style11" align="center">
                    <asp:TextBox ID="txt_login_uname" runat="server" 
                        CssClass="textbox_style_login" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12" style="font-family: 'Microsoft Sans Serif'; font-size: 20px;
                    font-weight: 600; color: #FFFFFF" align="right">
                    Password
                </td>
                <td class="style11" align="center">
                    <asp:TextBox ID="txt_login_pwd" runat="server"  TextMode="Password" 
                        CssClass="textbox_style_login" MaxLength="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <br />
                    <asp:Button ID="btn_MLogin" runat="server" Text="Login" CssClass="rounded-button" />
                    <br />
                </td>
            </tr>
            </table>
    </div>
</asp:Content>

