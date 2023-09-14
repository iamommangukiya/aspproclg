<%@ Page Title="" Language="VB" MasterPageFile="~/pages/MasterPage.master" AutoEventWireup="false" CodeFile="userpro.aspx.vb" Inherits="pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
      <div class="row glassy-table">
       <table class="table" >
         <tr>
            <td class="" align="center" style="width: 100% ; padding-top:50px ; width: 600px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="" Font-Bold="True" Font-Names="Microsoft Sans Serif">Proifile</asp:Label>
            </td>
        </tr>
       <tr>
          <td align="center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                    DataKeyNames="uname" DataSourceID="SqlDataSource1" Height="50px" Width="80%"
                    EnableTheming="True" Font-Names="Levenim MT" BackColor="" Font-Bold="True">
                    <AlternatingRowStyle BorderStyle="Solid" BorderWidth="2px" />
                    <EditRowStyle BorderColor="black" Font-Bold="True" 
                        ForeColor="black" BorderWidth="3px" BackColor="Black" />
                    <Fields>
                      
                        <asp:ImageField DataImageUrlField="image" >
                            <ControlStyle Height="200px" Width="200px" />
                            </asp:ImageField>
                        <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                        <asp:BoundField DataField="mname" HeaderText="Middle Name" SortExpression="mname" />
                        <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="email" HeaderText="Email ID" 
                            SortExpression="email" />
                        <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
                        <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
                        <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                        <asp:BoundField DataField="dob" HeaderText="DoB" SortExpression="dob" />
                        <asp:BoundField DataField="religion" HeaderText="Religion" SortExpression="religion" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                        <asp:BoundField DataField="graduation" HeaderText="Graduation" SortExpression="graduation" />
                        <asp:BoundField DataField="profession" HeaderText="Profession" SortExpression="profession" />
                    </Fields>
                    <FooterStyle BackColor="#FF6666" ForeColor="White" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                </asp:DetailsView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>"
                    SelectCommand="SELECT * FROM [tbl_user] WHERE ([uname] = @uname)">
                    <SelectParameters>
                        <asp:SessionParameter Name="uname" SessionField="uname_view" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            </tr>
       </table>
      </div>
    </div>
</asp:Content>

