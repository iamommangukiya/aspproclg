<%@ Page Title=""  EnableEventValidation="true" Language="VB" MasterPageFile="~/pages/MasterPage.master" AutoEventWireup="false" CodeFile="dashbord.aspx.vb" Inherits="pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/basic.css" rel="stylesheet" type="text/css" />
    <style>
        p
        {
            text-align: center;
            margin: 20px auto;
        }
        .style1
        {
            width: 95%;
            background-color: #c9c7c1;
            border-radius: 20px;
            color:black;
            margin-top: 20px;
            margin-left: 20px;
            padding: 20px 0px;   
        }
        .style2
        {
            height: 24px;
        }
        td
        {
            padding: 5px 0px;
            margin-left: 40px;
        }
                
        .style3 td
        {
            width: 20%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-row d-flex  flex-direction-row px-5 serch justify-content-center" style="width: 1000px;
    left: 0;
    right: 0;
    font-family: Roboto,sans-serif;
    background: rgba(0,0,0,.3);
    margin-top: 20vh;
    border: 50%;
    border-radius: 5px;
    padding: 1em;">
   
    
    <div class="form-group col-md-2 col-6">
      <label for="inputEmail4">gender</label><br />
     <asp:DropDownList CssClass="styled-dropdown"
          ID="sddlgender" runat="server">
         <asp:ListItem>Male</asp:ListItem>
         <asp:ListItem>Female</asp:ListItem>
      </asp:DropDownList>
    </div>
     <div class="form-group col-md-2 ">
      <label for="inputEmail4">age</label><br />
     <asp:DropDownList CssClass="styled-dropdown"
          ID="stxtminage" runat="server">
             <asp:ListItem Value="Null">select</asp:ListItem>
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
    
    
     <div class="form-group col-md-2 ">
      <label for="inputEmail4">to age</label><br />

     <asp:DropDownList CssClass="styled-dropdown"
          ID="stxtmaxage" runat="server">
          <asp:ListItem Value="Null">select </asp:ListItem>
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

    <div class=" col-md-2 col-12 btnWrap">
    <label class="" for="">&nbsp;</label>
        <asp:Button ID="btnsearch" runat="server" 
            CssClass="btn btn-primary form-control" Text="Find" />
    </div>
    </div>
<div class ="container-fluied">
      <%--  <table class="style3">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Search for a Perfect Partner :" 
                            Font-Size="Large" Font-Underline="True" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Gender<br />
                        <asp:DropDownList ID="sddlgender" runat="server" class="textField">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        Age<br />
                        <asp:TextBox ID="stxtminage" type="number" runat="server" class="textField" placeholder="Min"
                            Width="30%"></asp:TextBox>
&nbsp;to
                        <asp:TextBox ID="stxtmaxage" type="number" runat="server" class="textField" placeholder="Max"
                            Width="30%"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnsearch" runat="server" Text="Search" class="textField buttons" 
                            Width="80%" />
                    </td>
                    
                    <td></td>
                    <td></td>
                </tr>
            </table>--%>

        
        
        <center>
            <br />
            <br />
            <asp:Label ID="titleOfProfiles" runat="server" Text="" 
                class="pageTitle"></asp:Label></center>

                  <div class="profiles glassy-table">
             <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" 
                 RepeatDirection="Horizontal" Width="100%">
                 <ItemTemplate >
                     <table class="style1">
                         <tr>
                             <td align="center" rowspan="4" valign="middle" width="200px">
                                 <asp:Image ID="Image1" runat="server" Height="120px" class="profileImg"
                                     ImageUrl='<%# Eval("image") %>' Width="120px" />
                             </td>
                             <td>
                                 <asp:Label ID="name" runat="server" Text='<%# Eval("fname") %>' Font-Size="X-Large"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("profession") %>'></asp:Label>
                                 &nbsp;&#183;&nbsp;
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("graduation") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="style2">
                                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 Age:
                                 <asp:Label ID="Label5" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td align="center">
                                 <asp:Button ID="Button1" runat="server" Text="View Profile" 
                                     class="text-buttons" Width="80%" CommandArgument='<%# Eval("uid") %>'/>
                                 &nbsp;</td>
                             <asp:Button ID="upbtn" runat="server" Text="up Profile" 
                                     class="text-buttons" Width="80%" CommandArgument='<%# Eval("uid") %>'/>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
             <asp:Label ID="noOfUser" runat="server" Text=""></asp:Label>
        &nbsp;<asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </div>

                </div>



</asp:Content>

