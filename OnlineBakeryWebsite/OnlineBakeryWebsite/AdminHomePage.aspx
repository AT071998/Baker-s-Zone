<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="OnlineBakeryWebsite.AdminHomePage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="css/jquery.fancybox.css">
     <link href="truly-simple/style.css" rel="stylesheet" />
   <link href="truly-simple/style.css" rel="stylesheet" />
    <link href="css/Custome.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous">

    </script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script>
   
    <style type="text/css">
        .auto-style1 {
            left: 0;
            top: 0;
        }
    </style>

    <!--[if lt IE 9]>
    <html class="lt-ie9">
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/..">
            <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a> 
    </div>
    <script src="js/html5shiv.js"></script>
    <![endif]-->
 
    <script src='js/device.min.js'></script> 
</head>
<body>
   <div>
  <div id="top">
    <h2> Online Bakery</h2>
    <div id="menu">
      <ul>
        <li><a href="AdminHomePage.aspx" class="current">Home</a></li>
        <li><a href="UserInfoAdmin.aspx">User Info</a></li>
          <li><a href="AddProduct.aspx">Add Product</a></li>
          <li><a href="AddCategory.aspx">Add Category</a></li>
          <li><a href="OrderDetailByAdmin.aspx">Order Info</a></li>
          <li><a href="ProductInfo.aspx">Product Info</a></li>
        <li><a href="LogoutAdmin.aspx">Logout</a></li>
        

      </ul>
    </div>
  </div>
    <form id="form1" runat="server">
    <div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div class="camera_container">
            <div id="camera" class="camera_wrap">
                <div  data-src="images/photo-1477763858572-cda7deaa9bc5.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-src="images/bakery.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div  data-src="images/slide03.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
            </div>

            <h2>WElCOME admin!</h2>
        </div>
        
      </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    

    <!--========================================================
                              FOOTER
    =========================================================-->
    <footer>
        <div class="container">
            <ul class="socials">
                <li><a href="#" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-tumblr"></a></li>
                <li><a href="#" class="fa fa-google-plus"></a></li>
            </ul>
            <div class="copyright">© <span id="copyright-year"></span> |
                <a href="#">Privacy Policy</a>
            </div>
        </div>
        <div class="tm" style="color: #FF9933">Developed By : meeraacademy.com</div>
    </footer>
</div>

<script src="js/script.js"></script>
    </form>
</body>
</html>