<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feed.aspx.cs" Inherits="Feed" %>

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
				        <li><a href="buyerpage.aspx">Home</a></li>
                            <li><a href="BidView.aspx">Bid Product</a></li>
				           <li><a href="Seller.aspx">Approved Products</a></li> <li><a href="Feed.aspx">Feedback</a></li>
				          <li><a href="Ulogin.aspx">Logout</a></li>
				     
				        
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
							<h6 class="text-white">Powered By  </h6>
							<h1 class="text-white">E-Bidding</h1>
							
						</div>
						<div class="col-lg-4 col-md-6 banner-right">
							<ul class="nav nav-tabs" id="myTab" role="tablist">
							  <li class="nav-item">
							    <a class="nav-link active" id="flight-tab" data-toggle="tab" href="#flight" role="tab" aria-controls="flight" aria-selected="true">Feedback</a>
							  </li>
							
							 
							</ul>
							<div class="tab-content" id="myTabContent">
							<form class="form-wrap"  id="form2" runat="server" >
									<input type="text" class="form-control" id="uname" runat="server" name="name" placeholder="User Name " onfocus="this.placeholder = ''" onblur="this.placeholder = 'uname '"/>									
									<input type="text" class="form-control" id="pswd" runat="server" name="to" placeholder="Feedback" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Feedback '" style="width:300px;height:100px"/>
									<asp:Button ID="Button1" runat="server"  class="primary-btn text-uppercase" Text="Submit" onclick="Button1_Click" />								
								</form>		
									
									
																	
								
							  <div class="tab-pane fade" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
														  	
							  </div>
							 <%-- <div class="tab-pane fade" id="holiday" role="tabpanel" aria-labelledby="holiday-tab">
								<form class="form-wrap"  id="form3" runat="server">
									<input type="text" class="form-control" name="name" id="Aemail" runat="server" placeholder="Email " onfocus="this.placeholder = ''" onblur="this.placeholder = 'From '"/>									
									<input type="password" class="form-control" id="Apswd" runat="server" name="to" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'To '"/>
										<input type="submit" class="primary-btn text-uppercase" value="submit" />									
								</form>							  	
							  </div>--%>
							</div>
						</div>
					</div>
				</div>					
			</section>
			<!-- End banner Area -->

			<!-- Start popular-destination Area -->
			
			<!-- End popular-destination Area -->
			

			<!-- Start price Area -->
			
			<!-- End price Area -->
			

			<!-- Start other-issue Area -->
			
			<!-- End other-issue Area -->
			

			<!-- Start testimonial Area -->
		   
		    <!-- End testimonial Area -->

			<!-- Start home-about Area -->
			
			
	
			<!-- Start blog Area -->
			
			<!-- End recent-blog Area -->			

			<!-- start footer Area -->		
			
			<!-- End footer Area -->	

			<script src="ds/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="ds/js/popper.min.js"></script>
			<script src="ds/js/vendor/bootstrap.min.js"></script>			
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
	</html>