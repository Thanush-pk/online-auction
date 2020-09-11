<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BidderView.aspx.cs" Inherits="BidderView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Relief Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />

	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:200,200i,300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">
        
        
  


    <style>
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {background-color: #4CAF50;} /* Green */


        body{
            background-image:url("images/bg1.jpg");
              background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
height:1100px;
}




    </style>
</head>

<body>
	<div class="top_header" id="home">
		<!-- Fixed navbar -->
		<nav class="navbar navbar-default navbar-fixed-top" style="background-color:green;">
			<div class="nav_top_fx_w3layouts_agileits">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					    aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
					
					<div class="logo_wthree_agile">
						<h1>
							
						</h1>
					</div>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<div class="nav_right_top">
											<ul class="nav navbar-nav">
							
                           <li>
								<a class="scroll" href="buyerpage.aspx" style="color:black">Home</a>
							</li>
							
							<li>
								<a class="scroll" href="index.aspx" style="color:black">Logout</a>
							</li>
							

						</ul>
					</div>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
		<div class="clearfix"></div>
	</div>

       <div id="FormBody" style="padding:110px;background-size: cover;min-height:900px;background-image:url('images/seller.png');">
           <div style="width:60%;float:left;margin:0;">.
            </div>
           <h3>Product List</h3>
           <div style="width:40%;float:left;padding-left:1px;color:black;">
            	
             <form id="form1" runat="server" method="post">
			 <asp:GridView ID="adgrid3" runat="server" AutoGenerateColumns="false"  EmptyDataText="There are no data records to display."     STYLE="margin-top:10%;margin-left:-10%; color:white;"  GridLines="Horizontal" Width="800px" 
           BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" EnableModelValidation="True"> <%--OnRowCommand="adgrid_RowCommand1"--%>
            <Columns>


                 <asp:BoundField DataField="Bid"    HeaderText="Bidder Name"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
        <asp:BoundField DataField="Prdname"        HeaderText="Product"     ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
             <asp:BoundField DataField="Pid"        HeaderText="ID"     ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
     
             <asp:BoundField DataField="Bcost"         HeaderText="Cost"      ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
            
             <asp:BoundField DataField="date"       HeaderText="Date"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
             <asp:BoundField DataField="Pname"    HeaderText="Seller Name"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>


                

            
               <%--   <asp:TemplateField>
<ItemTemplate>

<asp:LinkButton ID="lbDelete" runat="server"  CommandName="Delete" Text="Delete"/>
</ItemTemplate>

</asp:TemplateField>--%>
                 
      </Columns>
         </asp:GridView>

                 <hr />


                      <h2>Admin</h2>
                 	 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"   EmptyDataText="There are no data records to display."     STYLE="margin-top:10%;margin-left:-10%; color:white;"  GridLines="Horizontal" Width="800px" 
           BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" EnableModelValidation="True"> <%--OnRowCommand="adgrid_RowCommand1"--%>
            <Columns>
                 <asp:BoundField DataField="ProdId"        HeaderText="ID"     ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
                 <asp:BoundField DataField="ProdName"        HeaderText="ProdName"     ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
            
     
             <asp:BoundField DataField="ldate"         HeaderText="ldate"      ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
            
             <asp:BoundField DataField="Desc"       HeaderText="Desc"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>
             <asp:BoundField DataField="YOM"    HeaderText="YOM"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>

				 <asp:BoundField DataField="ProdType"    HeaderText="ProdType"  ItemStyle-Width="80px" ItemStyle-Height="40px"   ControlStyle-BackColor="Wheat"/>

                 
               <%--   <asp:TemplateField>
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