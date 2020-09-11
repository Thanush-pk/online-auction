<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewPrd.aspx.cs" Inherits="ViewPrd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head >
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
				        <b>E-Bidding </b>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				        <li><a href="SelPage.aspx">Home</a></li>
                            <li><a href="ViewPrd.aspx">View Product</a></li>
				                   <li><a href="SellerGrant.aspx">Approved Products</a></li>
				          <li><a href="Ulogin.aspx">Logout</a></li>
				     
				        
				        </ul>
				      </nav><!-- #nav-menu-container -->					      		  
					</div>
				</div>
			</header>
       <div id="FormBody" style="padding:110px;background-size: cover;min-height:900px;background-image:url('images/seller.png');">
           <div style="width:30%;float:left;margin:0;">.
            </div>
           <h3 style="color:white">Product List</h3>
           <div style="width:40%;float:left;padding-left:1px;color:black;">
            	
             <form id="form1" runat="server" method="post">
			 <asp:GridView ID="adgrid3" runat="server" AutoGenerateColumns="false"  EmptyDataText="There are no data records to display."     STYLE="margin-top:10%;margin-left:-10%; color:white;"  GridLines="Horizontal" Width="800px" 
           BorderColor="WindowText" BorderStyle="Solid" BorderWidth="4px" EnableModelValidation="True" > <%--OnRowCommand="adgrid_RowCommand1"--%>
            <Columns>
        <asp:BoundField DataField="Prdname"        HeaderText="Product"     ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
             <asp:BoundField DataField="Pid"        HeaderText="ID"     ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
     
             <asp:BoundField DataField="Bcost"         HeaderText="Cost"      ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
            
             <asp:BoundField DataField="date"       HeaderText="Date"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
             <asp:BoundField DataField="Pname"    HeaderText="Seller Name"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>

				<asp:TemplateField HeaderText="Image"  HeaderStyle-ForeColor="White" ItemStyle-HorizontalAlign="center" ItemStyle-Width="80px" ItemStyle-Height="40px">
            <ItemTemplate>
                <asp:Image ID="img2" runat="server" height="100px" Width="80px" ImageUrl='<%# String.Format("~/images/{0}",Eval("File")) %>'/>
            </ItemTemplate>
        </asp:TemplateField>  

	 <asp:BoundField DataField="Ldate"    HeaderText="Last Date"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
                <%--   <asp:ButtonField Text="Delete" CommandName="select" ItemStyle-Width="150" />--%>

            
              <%--  <asp:TemplateField>
<ItemTemplate>

<asp:LinkButton ID="lbDelete" runat="server"  CommandName="Delete" Text="Delete"/>
</ItemTemplate>

</asp:TemplateField>--%>
                 
      </Columns>
         </asp:GridView>




                </form>
            </div>
      </div>

	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<script type="text/javascript" src="js/all.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>

	<!-- js -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!--// script for responsive tabs -->
	<!-- Smooth-Scrolling-JavaScript -->
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll, .navbar li a, .footer li a").click(function (event) {
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //Smooth-Scrolling-JavaScript -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>


	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>

</html>