﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Uregister.aspx.cs" Inherits="Uregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>E-BIDDING</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="ds/css/linearicons.css">
			<link rel="stylesheet" href="ds/css/font-awesome.min.css">
			<link rel="stylesheet" href="ds/css/bootstrap.css">
			<link rel="stylesheet" href="ds/css/magnific-popup.css">
			<link rel="stylesheet" href="ds/css/jquery-ui.css">				
			<link rel="stylesheet" href="ds/css/nice-select.css">							
			<link rel="stylesheet" href="ds/css/animate.min.css">
			<link rel="stylesheet" href="ds/css/owl.carousel.css">				
			<link rel="stylesheet" href="ds/css/main.css">
            <script>
function myFunction() {
    var x = document.getElementById("name").value;
    document.getElementById("uname").value=document.getElementById("name").value+Math.floor(Math.random() * (9999 - 5));
}
</script>
		</head>
		<body>	
			<header id="header">
				<div class="header-top">
					<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-left">
			  						
			  			</div>
			  			<div class="col-lg-6 col-sm-6 col-6 header-top-right">
							<div class="header-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>
							</div>
			  			</div>
			  		</div>			  					
					</div>
				</div>
				<div class="container main-menu">
					<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <b>E-Bidding</b>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
                             <li><a href="Home.aspx">Home</a></li>
				          <li><a href="index.aspx">Register</a></li>
				          <li><a href="Ulogin.aspx">Login</a></li>
				     
				         
				        
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header><!-- #header -->
			
			<!-- start banner Area -->
			<section class="banner-area relative">
				<div class="overlay overlay-bg"></div>				
				<div class="container">
					<div class="row fullscreen align-items-center justify-content-between">
						<div class="col-lg-6 col-md-6 banner-left">
							<h6 class="text-white">Powered By</h6>
							<h1 class="text-white">E-Bidding</h1>
							
						</div>
						<div class="col-lg-4 col-md-6 banner-right" style="margin-top:10%">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
							  <li class="nav-item">
							    <a class="nav-link active" id="flight-tab" data-toggle="tab" href="#flight" role="tab" aria-controls="flight" aria-selected="true">Register</a>
							  </li>
							
							 
							</ul>
							<div class="tab-content" id="myTabContent">
							  <div class="tab-pane fade show active" id="flight" role="tabpanel" aria-labelledby="flight-tab">
								<form class="form-wrap" id="form1" runat="server">
									<input type="text" class="form-control" id="name" runat="server"  name="name" placeholder="Name " onfocus="this.placeholder = ''" onblur="this.placeholder = 'From '" onchange="myFunction()"/>	
                                    <input type="text" class="form-control" id="uname" runat="server"  name="name" placeholder="User Name " onfocus="this.placeholder = ''" onblur="this.placeholder = 'username '"/>										
									<input type="password" class="form-control" id="pswd" runat="server"  name="to" placeholder="Password " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password '"/>
									
                                    

                                         <select id="gender" class="form-control" runat="server">
                 <option>--Select--</option>
                 <option>Male</option>
                 <option>Female</option>
             </select>
                                    
                                   <input type="text" class="form-control" id="address" runat="server"  name="name" placeholder="Address " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Adress '"/>										
									
                                    
                                    
                                    
                                                    <select id="tou" class="form-control" runat="server">
                 <option>--Select--</option>
                 <option>Seller</option>
                 <option>Buyer</option>
             </select>
                               
                                    
                                    
                                    <input type="text" class="form-control" id="email" runat="server" name="Password" placeholder="Email " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email '"/>
									
										<input type="text" class="form-control" id="phnum" runat="server" name="name" placeholder="Phone number " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone number '"/>
													
									


                                    	<asp:Button ID="Button2" runat="server"  class="primary-btn text-uppercase" Text="Reset" OnClick="Button2_Click"  />


									<asp:Button ID="Button1" runat="server"  class="primary-btn text-uppercase" Text="Submit"   OnClientClick="return Validator()" OnClick="Button1_Click"/>


                                    
																	
								</form>
							  </div>
				
							</div>
						</div>
					</div>
				</div>					
			</section>
		

			<script src="ds/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="ds/js/popper.min.js"></script>
			<script src="vjs/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>		
 			<script src="ds/js/jquery-ui.js"></script>					
  			<script src="ds/js/easing.min.js"></script>			
			<script src="ds/js/hoverIntent.js"></script>
			<script src="ds/js/superfish.min.js"></script>	
			<script src="ds/js/jquery.ajaxchimp.min.js"></script>
			<script src="ds/js/jquery.magnific-popup.min.js"></script>						
			<script src="ds/js/jquery.nice-select.min.js"></script>					
			<script src="ds/js/owl.carousel.min.js"></script>							
			<script src="ds/js/mail-script.js"></script>	
			<script src="ds/js/main.js"></script>	
		</body>
    <script>
     function Validator() {
         debugger;
         var flag = true;

         var unamer = document.getElementById('uname').value;
         var intRegexunamer = /^[A-Za-z0-9 ]+$/;
         if (!intRegexunamer.test(unamer)) {
             alert('Please enter a valid username.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

         var namer = document.getElementById('name').value;
         var intRegexnamer = /^[A-Za-z ]+$/;
         if (!intRegexnamer.test(namer)) {
             alert('Please enter a valid name.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }


         var phone = document.getElementById('phone').value;
         var intRegex = /^(7|8|9)[0-9]{9}$/;
         if (!intRegex.test(phone)) {
             alert('Please enter a valid phone number.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

         var age = document.getElementById('dob').value;

         if (dob=="") {
             alert('Please enter a valid Date.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

  


         var email = document.getElementById('email').value;
         var emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
         if (!emailReg.test(email) || email == '') {
             alert('Please enter a valid email id.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }



         var pswd = document.getElementById('pswd').value;
   

         var pswdPattern = /^[A-Za-z0-9]{5,8}$/;
         if (!pswdPattern.test(pswd)) {
             alert('Please enter 8 characters password.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }



         var pswd = document.getElementById('adrs').value;


         var pswdPattern = /^[A-Za-z0-9]{99}$/;
         if (!pswdPattern.test(pswd)) {
             alert('Please enter Address');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }



         return flag;
     }
 </script>
	</html>