<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="index" %>
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
        window.location = 'index.aspx';
    });
});

$(document).ready(function () {
    $("#contact").click(function () {
        window.location = 'contact.aspx';
    });
});

$(document).ready(function () {
    $("#faq").click(function () {
        window.location = 'faq.aspx';
    });
});

$(document).ready(function () {
    $("#register").click(function () {
        window.location = 'register.aspx';
    });
});

$(document).ready(function () {
    $("#login").click(function () {
        window.location = 'login.aspx';
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
            	<a href="#">
                	<img src="images/templatemo_logo.jpg" id="logo_img" alt="dragonfruit website template" title="Dragonfruit Template" />
                	<h1 id="logo_text">Online Bidding</h1>
                </a>
            </div>
            <div class="col-sm-8 hidden-xs">
                <ul class="nav nav-justified">
                    <li><a id="home" href="index.aspx">Home</a></li>                   
            <li><a id="login" href="login.aspx" style="background-position: 0 0px;background-color: #f15556;color: #ffffff;">Login</a></li>
            <li><a id="register" href="register.aspx">Register</a></li>
            <li><a id="faq" href="faq.aspx">FAQ's</a></li>
            <li><a id="contact" href="contact.aspx">Contact</a></li>
                 </ul>
            </div>
            <div class="col-xs-8 visible-xs">
                <a href="#" id="mobile_menu"><span class="glyphicon glyphicon-th-list"></span></a>
            </div>
        </div>
    </div>
</div>
    <div style="padding-top:70px;min-height:50px;background-color:#b3b3ff;">
        <div class="col-md-3" style="background-color:#b3b3ff;">.</div>
        <div class="col-md-6" style="background-color:#b3b3ff;">
            <div class="col-md-12 text-center"><h2  style="font-weight:bold;">Login Page</h2></div>
            <form id="lform" runat="server">
  <div class="imgcontainer">
    <img src="images/img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" id="uname" runat="server" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="pswd" runat="server" required>
      
    <button type="submit" onserverclick="Login" id="blogin" runat="server">Login</button>
      <div class="" style="background-color:#f1f1f1">
        <span class="psw">Forgot <a href="#">password?</a></span>
       </div>
  </div>

  
</form>
        </div>
        <div class="col-md-3">.</div>
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