<%@ Page Title="" Language="C#" MasterPageFile="~/ShortForm.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FYP_CarRentalSystem.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>

    <h1>
        Welcome to Car Rental Management System
    </h1>
    <p>
        We are working as a partner between the User and Dealer. You are at right place if you want to rent a car at reasonable and cheap prices for days as much as you want. 
        If you want to provide a car for rent you can be register with us as a dealer. 
    </p>

    <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="/Images/333.jpg" style="width:100%"/> 
  <div class="text">Honda</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="/Images/444.jpg" style="width:100%"/>
  <div class="text">Dodge</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="/Images/555.jpg" style="width:100%"/>
  <div class="text">Toyota</div>
</div>

</div>
<br/>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>

    <script type="text/javascript">
        var x = document.getElementsByClassName("rightcolumn");
        x.style.display = "none";
    </script>
<div>

</div>

   <%-- <style type="text/css">
        .head{
            background-color:#083b82;
            color:white;
            text-align:justify;
            margin:5px;
            
            
    border: 2px solid red;
    padding: 10px;
    border-radius: 25px;
        }
        .para{
            margin:15px;
            padding:5px;
            background-color:#cfc7d8;
        }
    </style>
    <div>
        <h1 class="head">
            We are working as a partner between User and Dealer. You are at right place if you want to rent a car at reasonable and cheap prices for days as much as you want. 
        If you want to provide a car for rent you can be register with us as a dealer. 
        </h1>
    </div>
    <br />
    <br />
    <h2 class="head">
       Dealer: 
    </h2>
    <p class="para"> If you have cars that you want to be rented by the peoples living in Pakistan. This is the right time to take start up now.  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Accounts/Register.aspx">Register Now</asp:HyperLink> as a Dealer.</p>
    <br />
    <br />
    <h2 class="head">
       User: 
    </h2>
    <p class="para"> If you want to go with friends at a cool place but you don't have attractive vehicle to go. Regiser with us and take cars to go at reasonable prices.  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Accounts/Register.aspx">Register Now</asp:HyperLink> as a customer.</p>

    <p class="para">If you have already registered you can <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Accounts/Login.aspx" runat="server">Login</asp:HyperLink> here.</p>--%>
    
</asp:Content>
