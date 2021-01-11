<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="HomeUser.aspx.cs" Inherits="OnlineBakeryWebsite.HomeUser" %>
<!DOCTYPE html>

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

    <form id="form1" runat="server">
    <div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>
         <div>
  <div id="top">
    <h2> Baker's Zone</h2>
    <div id="menu">
      <ul>
         <li><a href="HomeUser.aspx" class="current">Home</a></li>
          <li><a href="Category.aspx">Category</a></li>
          <li><a href="AddToCart.aspx">Cart<asp:Label ID="Label1" runat="server"></asp:Label></a></li>
        <li><a href="TrackOrder.aspx">Order Status</a></li>
        <li><a href="ContactusUser.aspx">Contact Us</a></li>
        <li><a href="Logout.aspx">Logout</a></li>

      </ul>
    </div>
  </div>

       <div class="camera_container">
            <div id="camera" class="camera_wrap">
                <div  data-src="images/bakery-5.jpg">
                    
                </div>
                <div data-src="images/bakery-3.jpg">
                   
                </div>
                <div  data-src="images/slide03.jpg">
                   
                </div>
            </div>

            
        </div>
        
      </div>
    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
     <main>
        
        <section class="well">
            <div class="container">
                <h2><em>Welcome to  </em>Baker's Zone..</h2>
            </div>            
            <div class="gallery">
                <div class="gallery_col-1">
                   <%-- <a data-fancybox-group="gallery" href="images/page-1_img03_original.jpg" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">--%>
                     <a data-fancybox-group="gallery" href="donuts.aspx" class="gallery_item thumb lazy-img" style="padding-bottom: 72.23168654173765%;">
                        <img data-src="images/donuts.jfif" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>DONUTS</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                     <a data-fancybox-group="gallery" href="cake.aspx" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">
                     <img data-src="images/almond-coffe-cake.jpg" alt="">
                       <div class="gallery_overlay">
                            <div class="gallery_caption">
                                 <p><em>PASTRIES</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div> 
                    </a>
                   
                    <a data-fancybox-group="gallery" href="bagels.aspx" class="gallery_item thumb lazy-img" style="padding-bottom: 94.6551724137931%;">
                        <img data-src="images/bagels.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>BAGELS</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-2">
                    <a data-fancybox-group="gallery" href="muffins.aspx" class="gallery_item thumb lazy-img" style="padding-bottom: 52.48322147651007%;">
                        <img data-src="images/muffins.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>MUFFINS</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="breads.aspx" class="gallery_item thumb lazy-img" style="padding-bottom: 55.97315436241611%;">
                        <img data-src="images/bread-img.jpg" alt="" class="auto-style1">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>BREAD AND BUN</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="Product.aspx?id=6" class="gallery_item thumb lazy-img" style="padding-bottom: 96.10738255033557%;">
                        <img data-src="images/veg puffs.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>VEG PUFFS</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-3">
               <a data-fancybox-group="gallery" href="cookies.aspx" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="images/cookies.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>COOKIES</em></p>
                                <%--<p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    
                      <a data-fancybox-group="gallery" href="cupcakes.aspx" class="gallery_item thumb lazy-img" style="padding-bottom: 74.13793103448276%;">
                        <img data-src="images/cupcakes.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>CUPCAKES</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="extras.aspx" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="images/bakery-4.jpg" alt=""/>
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><em>EXTRAS</em></p>
                               <%-- <p>Integer convallis orci vel mi nelaoreet, at ornare lorem consequat. Phasellus era nisl</p>--%>
                            </div>
                        </div>
                    </a>
                    
                </div>
            </div>
        </section>
        <section class="well well__offset-1 bg-1">
            <div class="container">
            </div>
        </section>
    </main>

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
        
    </footer>
</div>

<script src="js/script.js"></script>
    </form>
</body>
</html>
