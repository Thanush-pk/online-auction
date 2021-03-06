﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="index" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Online Bidding</title>
    <meta name="description" content="" />
    <!-- templatemo 411 dragonfruit -->
    <meta name="author" content="templatemo">
    <!-- Favicon-->
    <link rel="shortcut icon" href="./favicon.png" />		
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Camera -->
    <link href="css/camera.css" rel="stylesheet">
    <!-- Template  -->
    <link href="css/templatemo_style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



      <style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 25%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script>
$(document).ready(function(){
    $("#home").click(function(){
        window.location = 'adminhome.aspx';
    });
});

$(document).ready(function () {
    $("#products").click(function () {
        window.location = 'products.aspx';
    });
});

$(document).ready(function () {
    $("#technician").click(function () {
        window.location = 'users.aspx';
    });
});

$(document).ready(function () {
    $("#vidfaq").click(function () {
        window.location = 'AdminGrant.aspx';
    });
});


$(document).ready(function () {
    $("#viewfeedback").click(function () {
        window.location = 'viewfeedback.aspx';
    });
});

$(document).ready(function () {
    $("#logout").click(function () {
        window.location = 'Ulogin.aspx';
    });
});
$(document).ready(function () {
    $("#xyz").click(function () {
        window.location = 'AdminViewbid.aspx';
    });
});
</script>
  </head>
<body>
    <div id="templatemo_mobile_menu">
        <ul class="nav nav-pills nav-stacked">
            <li><a href="index.aspx"><i class="glyphicon glyphicon-home"></i> &nbsp; Home</a></li>
            <li><a href="login.aspx"><i class="glyphicon glyphicon-briefcase"></i> &nbsp; Login</a></li>
            <li><a href="register.aspx"><i class="glyphicon glyphicon-bullhorn"></i> &nbsp; Register</a></li>
            <li><a href="faq.aspx"><i class="glyphicon glyphicon-calendar"></i> &nbsp; FAQ's</a></li>
            <li><a rel="nofollow" href="videos.aspx"><i class="glyphicon glyphicon-export"></i> &nbsp; Others</a></li>
            <li><a href="contact.aspx"><i class="glyphicon glyphicon-phone-alt"></i> &nbsp; Contact</a></li>
        </ul>
</div>
<div class="container_wapper">
    <div id="templatemo_banner_menu">
        <div class="container-fluid">
            <div class="col-xs-4 templatemo_logo">
            	<a href="index.aspx">
                	<img src="images/templatemo_logo.jpg" id="logo_img" alt="dragonfruit website template" title="Dragonfruit Template" />
                	<h1 id="logo_text">Online Bidding</h1>
                </a>
            </div>
            <div class="col-sm-8">
                <ul class="nav nav-justified">
                    <li><a id="home" href="index.aspx" style="background-position: 0 0px;background-color: #f15556;color: #ffffff;">Home</a></li>                   
            <li><a id="products" href="login.aspx">Products</a></li>
            <li><a id="technician" href="register.aspx">Users</a></li>
           <li><a id="xyz" href="AdminViewbid.aspx">View bid</a></li>
                    <li><a id="viewfeedback" href="viewfeedback.aspx">FeedBack</a></li>
        <%--   <li><a id="vidfaq" href="AdminGrant.aspx">Bidded Product</a></li>--%>
       
            <li><a id="logout" href="contact.aspx">Logout</a></li>
                 </ul>
            </div>
            <div class="col-xs-8 visible-xs">
                <a href="#" id="mobile_menu"><span class="glyphicon glyphicon-th-list"></span></a>
            </div>
        </div>
    </div>
</div>
    <div style="padding-top:200px;min-height:560px;background-color:#b3b3ff;" class="col-md-12">
        <div class="col-md-12">

            <div class="col-md-3 text-center" style="color:black;">
                <a href="products.aspx" style="color:black;font-weight:bold;">
                    <img src="images/products.png" style="width:200px;height:200px;" /><br />
                    Products Management
                </a>                
            </div>

            <!--<div class="col-md-3 text-center" style="color:black;">
                <a href="otherdata.aspx" style="color:black;font-weight:bold;">
                    <img src="images/vfaq.png" style="width:200px;height:200px;" /><br />
                    Knowledge Management
                </a>                
            </div>

            <div class="col-md-3 text-center" style="color:black;">
                <a href="users.aspx" style="color:black;font-weight:bold;">
                    <img src="images/technician.png" style="width:200px;height:200px;" /><br />
                    Retailer & Technician Management
                </a>                
            </div>


            <div class="col-md-3 text-center" style="color:black;">
                <a href="assigntasks.aspx" style="color:black;font-weight:bold;">
                    <img src="images/tasks.png" style="width:200px;height:200px;" /><br />
                    Tasks Management
                </a>                
            </div>-->
        </div>
    </div>
<div id="templatemo_footer">
    <div>
        <p id="footer">Copyright &copy; <script>document.write(new Date().getFullYear());</script>  Online Bidding</p>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.singlePageNav.min.js"></script>
<script src="js/unslider.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
<script src="js/templatemo_script.js"></script>
</body>
</html>