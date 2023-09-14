<%@ Page Title="" Language="VB" MasterPageFile="~/pages/MasterPage.master" AutoEventWireup="false" CodeFile="Homepage.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* Add CSS styles for the background image and search bar */
    .bg {
            background-image: url('../images/b1g1.jpg'); /* Replace 'your-background-image.jpg' with your actual image file path */
            background-size: cover;
            height:70vh;
            backgrou    nd-repeat: no-repeat;
        }
          .bg::before {
            content: "";
            background-color: rgba(0, 0, 0, 0.5); /* Adjust the opacity (0.5) to control darkness */
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
                    height:70vh;
            
              
        }

        /* Adjust the search bar's position and style */
        .serch {

            border-radius: 3px;
            color : White;
            padding-top: 50vh;
            position: relative;
            z-index: 1; /* Ensure the search bar is on top of the background */
        }

        /* Add any other styles you need */
        .common_headline {
            color: white; /* Change text color to make it visible on the background */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
      <div class="bg container-fluid g-0">
 
            <%--<img class="bg-img" src="images/b1g1.jpg" />--%>
        
  
<div class ="row  px-5 justify-content-center">
<h1 class="common_headline  justify-content-center px-5">Trusted Matrimony &amp; Matchmaking Service</h1>
  <div class="form-row d-flex  flex-direction-row px-5 serch" style="width: 100%;
    left: 0;
    right: 0;
    font-family: Roboto,sans-serif;
    background: rgba(0,0,0,.3);
    margin: 45vh;
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
   
    </div>  
    </div>
    <div class="py-4    ">
    <div data-testid="live_heading" class="justify-content-center" style="color: #ff5a60;
    font-family: Raleway,sans-serif!important;
    font-size: 35px;
    font-weight: 500;
    margin-bottom: 57px;
    text-align: center;
}">Stop Swiping, Start Live-ing!</div> <br>
    <div class="justify-content-center d-flex flex-direction-column" ><img data-testid="live_mobile_img" class="ShaadiLive_liveImg__sDEzD" width="420" height="433" alt="live" src="../images/shaadiLiveImage.png">
  
   
    <div data-testid="live_subheading" class="" style="color: #ff5a60;
    font-family: Raleway,sans-serif!important;
    font-size: 25px;
    font-weight: 500;
    margin-bottom: 57px;
    text-align: center;">
    Up to 10 meetings | In 1 hour |For 5 minutes each</div>
</div>
 </div>
 <div class="">
    <div class="container" style="background-color:inherit">
        <h2 data-testid="feature_heading" class="text-center " style="color: #ff5a60;
    font-family: Raleway,sans-serif!important;
    font-size: 35px;
    font-weight: 500;
    margin-bottom: 57px;
    text-align: center;">Find your Special Someone</h2>
        <div class="row" data-testid="feature_items">
            <div data-testid="sign_up_feature" class="col-sm-4 text-center"><a title="Create your Matrimony Profile"
                    id="sign_up_icon" href="" class="FeaturesItem_sign_up__gs5QE"><span
                        class=""></span></a>
                <div class=""><a id="sign_up_link"
                        class="" href="">Sign Up</a>
                    <div>Register for free &amp; put up your Matrimony Profile</div>
                </div>
            </div>
            <div d class="col-sm-4 text-center">
            <a title="Connect with Matrimony Profiles"
                    id="connect_icon" ><span
                        class=""></span></a>
                <div class="FeaturesItem_special_someone_wrap__Oo_By"><a id="connect_link"
                        class="FeaturesItem_link__mM0wg" href="">Connect</a>
                    <div>Select &amp; Connect with Matches you like</div>
                </div>
            </div>
            <div data-testid="interact_feature" class="col-sm-4 text-center"><a
                    title="Become a Premium Member &amp; Find Matrimony Profiles" id="interact_icon" href=""
                    class="FeaturesItem_interact__ZElyh"><span class="FeaturesItem_interact_span__dFOsk"></span></a>
                <div class="FeaturesItem_special_someone_wrap__Oo_By"><a id="interact_link"
                        class="FeaturesItem_link__mM0wg" href="">Interact</a>
                    <div>Become a Premium Member &amp; Start a Conversation</div>
                </div>
            </div>
        </div>
    </div>
   
    
  
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function openLoginModal() {
            var loginUrl = 'login.aspx';

            // Open a new window or tab
            window.open(loginUrl, '_blank');
        }
    </script>
</asp:Content>

