<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BidPrd.aspx.cs" Inherits="BidPrd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bidder</title>
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
        
        
        <script>
function myFunction() {
    var x = document.getElementById("name").value;
    document.getElementById("uname").value=document.getElementById("name").value+Math.floor(Math.random() * (9999 - 5));
}
</script>


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

</style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("#phone").change(function () {
            var phone = document.getElementById('phone').value;
            var intRegex = /^(7|8|9)[0-9]{9}$/;
            if ((phone.length < 6) || (!intRegex.test(phone))) {
                alert('Please enter a valid phone number.');
				 $("#phone").focus();
                return false;
            }
        });
    });
</script>
<script>
    $(document).ready(function () {
        $("#mailid").change(function () {
            var email = document.getElementById('mailid').value;
            var emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
           if(!emailReg.test(email) || email == '')
                {
                alert('Please enter a valid email id.');
				 $("#mailid").focus();
                return false;
            }
        });
    });
</script>
    <script>
    $(document).ready(function () {
        $("#name").change(function () {
            document.getElementById('uname').value = document.getElementById('name').value + Math.floor((Math.random() * 900) + 1);

        });
    });
</script>
<script>
    $(document).ready(function () {
        $("#age").change(function () {
            var age = document.getElementById('age').value;
            var regage = /^[0-9]{2}$/;
            if (!regage.test(age)) {
                alert("invalid age");
				
				 $("#age").focus();
            }
        });
    });
</script>
    <style>
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
						
                           <li class="active">
								<a class="scroll" href="sellerpage.aspx" style="color:black">Selling</a>
							</li>
							<li>
								<a class="scroll" href="ViewPrd.aspx" style="color:black">View Productos</a>
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
	
       <div id="FormBody" style="padding:110px;background-size: cover;min-height:1100px;background-image:url('images/seller.png');">
           <div style="width:30%;float:left;margin:0;">.
            </div>

           <div style="width:40%;float:left;padding-left:1px;color:black;">
            
               <form id="form1" runat="server" method="post">
				<table class="style1" style="color:white;font-size:18px;font-weight:bold;">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="center" colspan="2">
                            <span style="font-weight:bolder;font-size:25px;color:green;">Bidding page  !!!</span></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            Product name:</td>
                        <td>&nbsp;
                        
                        <input type="text" placeholder="Enter your name" runat="server" name="named" id="name" onchange="myFunction()"  style="color:black"/>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                          Product id:</td>
                        <td>
                        &nbsp;
                        <input type="text" placeholder="Enter desired id" runat="server" id="uname" name="pswd" style="color:black"/>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                  <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            Buidding minimum cost:</td>
                        <td>
                        &nbsp;
                        <input type="text" placeholder="Confirm cost" runat="server" 
                                id="cost" name="cpswd" style="color:black"/>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
               <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            Date:</td>
                        <td>
                        &nbsp;
                        <input type="text" placeholder="date" runat="server" name="uname"
                                id="date" style="color:black"/>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                  <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right">
                            Seller name :</td>
                        <td>
                        &nbsp;
                        <input type="text" placeholder="Enter your Name" runat="server"  name="age"
                                id="sname" style="color:black"/>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
              
                           <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right" style="color:black">
                           Bidder Name :</td>
                        <td>
                        &nbsp;
                          <input type="text" placeholder="Enter your Name" runat="server"  name="age"
                                id="Bname" style="color:black"/>
                               
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
              
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td align="right"> 
                            <input id="reset" type="reset" value="Reset" runat="server" class="button button1" /></td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <input id="login" type="submit" value="Submit" runat="server"  class="button button1" /></td>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                   
                </table>
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