<%@ Page Title="" Language="VB" MasterPageFile="~/pages/MasterPage.master" AutoEventWireup="false" CodeFile="admindash.aspx.vb" Inherits="pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
       <div class ="row  px-5 justify-content-center">
<h1 class="common_headline  justify-content-center px-5">Trusted Matrimony &amp; Matchmaking Service</h1>
  <div class="form-row d-flex  flex-direction-row px-5 serch" style="width: 100%;
    left: 0;
    right: 0;
    font-family: Roboto,sans-serif;
    background: rgba(0,0,0,.3);
   
   
    border: 50%;
    border-radius: 5px;
    padding: 1em;">

    <div class="form-group col-md-2 col-6">
      <label for="inputEmail4">I'm looking for a</label><br />
     <asp:DropDownList CssClass="styled-dropdown"
          ID="DropDownList3" runat="server">
         <asp:ListItem>Male</asp:ListItem>
         <asp:ListItem>Female</asp:ListItem>
      </asp:DropDownList>
    </div>
     <div class="form-group col-md-2 col-6">
      <label for="inputEmail4">age</label><br />
     <asp:DropDownList CssClass="styled-dropdown"
          ID="DropDownList2" runat="server">
         <asp:ListItem>23</asp:ListItem>
<asp:ListItem>24</asp:ListItem>
<asp:ListItem>25</asp:ListItem>
<asp:ListItem>26</asp:ListItem>
<asp:ListItem>27</asp:ListItem>
<asp:ListItem>28</asp:ListItem>
<asp:ListItem>29</asp:ListItem>
<asp:ListItem>30</asp:ListItem>
<asp:ListItem>31</asp:ListItem>
<asp:ListItem>32</asp:ListItem>
<asp:ListItem>33</asp:ListItem>
<asp:ListItem>34</asp:ListItem>
<asp:ListItem>23</asp:ListItem>
<asp:ListItem>35</asp:ListItem>
<asp:ListItem>36</asp:ListItem>
<asp:ListItem>37</asp:ListItem>
<asp:ListItem>38</asp:ListItem>
<asp:ListItem>39</asp:ListItem>
<asp:ListItem>40</asp:ListItem>
<asp:ListItem>41</asp:ListItem>
<asp:ListItem>42</asp:ListItem>
<asp:ListItem>43</asp:ListItem>
<asp:ListItem>44</asp:ListItem>
<asp:ListItem>43</asp:ListItem>
<asp:ListItem>45</asp:ListItem>
<asp:ListItem>46</asp:ListItem>
<asp:ListItem>47</asp:ListItem>
<asp:ListItem>48</asp:ListItem>
<asp:ListItem>49</asp:ListItem>
<asp:ListItem>50</asp:ListItem>

      </asp:DropDownList>
    </div>
    
    
     <div class="form-group col-md-2 col-6">
      <label for="inputEmail4">to age</label><br />

     <asp:DropDownList CssClass="styled-dropdown"
          ID="DropDownList1" runat="server">
          <asp:ListItem>23</asp:ListItem>
<asp:ListItem>24</asp:ListItem>
<asp:ListItem>25</asp:ListItem>
<asp:ListItem>26</asp:ListItem>
<asp:ListItem>27</asp:ListItem>
<asp:ListItem>28</asp:ListItem>
<asp:ListItem>29</asp:ListItem>
<asp:ListItem>30</asp:ListItem>
<asp:ListItem>31</asp:ListItem>
<asp:ListItem>32</asp:ListItem>
<asp:ListItem>33</asp:ListItem>
<asp:ListItem>34</asp:ListItem>
<asp:ListItem>23</asp:ListItem>
<asp:ListItem>35</asp:ListItem>
<asp:ListItem>36</asp:ListItem>
<asp:ListItem>37</asp:ListItem>
<asp:ListItem>38</asp:ListItem>
<asp:ListItem>39</asp:ListItem>
<asp:ListItem>40</asp:ListItem> 
<asp:ListItem>41</asp:ListItem>
<asp:ListItem>42</asp:ListItem>
<asp:ListItem>43</asp:ListItem>
<asp:ListItem>44</asp:ListItem>
<asp:ListItem>43</asp:ListItem>
<asp:ListItem>45</asp:ListItem>
<asp:ListItem>46</asp:ListItem>
<asp:ListItem>47</asp:ListItem>
<asp:ListItem>48</asp:ListItem>
<asp:ListItem>49</asp:ListItem>
<asp:ListItem>50</asp:ListItem>

      </asp:DropDownList>
    </div>
     <div class="form-group col-md-2 col-6">
      <label for="inputEmail4">a religion</label><br />
    <asp:DropDownList CssClass="styled-dropdown"
          ID="DropDownList4" runat="server">
          <asp:ListItem>Islam</asp:ListItem>
<asp:ListItem>Hinduism</asp:ListItem>
<asp:ListItem>Buddhism</asp:ListItem>
<asp:ListItem>Sikhism</asp:ListItem>
<asp:ListItem>Judaism</asp:ListItem>
<asp:ListItem>Other</asp:ListItem>
      </asp:DropDownList>
    </div>
    <div class="form-group col-md-2 col-6">
      <label for="inputEmail4">a mother toungh</label><br />
     <asp:DropDownList CssClass="styled-dropdown"
          ID="DropDownList5" runat="server">
          <asp:ListItem>Punjabi</asp:ListItem>
<asp:ListItem>Odia</asp:ListItem>
<asp:ListItem>Malayalam</asp:ListItem>
<asp:ListItem>Kannada</asp:ListItem>
<asp:ListItem>Gujarati</asp:ListItem>
<asp:ListItem>Urdu</asp:ListItem>
      </asp:DropDownList>
    </div>
    <div class=" col-md-2 col-12 btnWrap">
    <label class="" for="">&nbsp;</label>
        <asp:Button ID="btnSerch" runat="server" 
            CssClass="btn btn-primary form-control" Text="Let's Begin   " />
    </div>
    </div>


    </div>
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

