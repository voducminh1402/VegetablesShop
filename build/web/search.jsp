<%@page import="java.util.List"%>
<%@page import="vegetablesshop.products.ProductDTO"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from bestwebcreator.com/organiq/demo/shop-grid-view.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:49:59 GMT -->
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="Anil z" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Organiq is clean and modern organic foods store template perfect for Organic Farm shop, organic foods, agriculture and niche foods store.">
<meta name="keywords" content="food shop, fresh, modern, organic farm, organic farm shop, organic food, organic shop, agriculture, agritourism, agrotourism, e-commerce, eco, eco products, farm, farming, food, health, organic, organic food, retail, shop, store">

<!-- SITE TITLE -->
<title>Shop | Organiq - Organic Food HTML Template</title>
<!-- Favicon Icon -->
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png">
<!-- Animation CSS -->
<link rel="stylesheet" href="assets/css/animate.css">	
<!-- Latest Bootstrap min CSS -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Lobster+Two:400,700" rel="stylesheet">  
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet"> 
<!-- Icon Font CSS -->
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<!-- FontAwesome CSS -->
<link rel="stylesheet" href="assets/css/all.min.css">
<!-- Themify Font CSS -->
<link rel="stylesheet" href="assets/css/themify-icons.css">
<!--- owl carousel CSS-->
<link rel="stylesheet" href="assets/owlcarousel/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/owlcarousel/css/owl.theme.css">
<link rel="stylesheet" href="assets/owlcarousel/css/owl.theme.default.min.css">
<!-- Magnific Popup CSS -->
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!-- jquery-ui CSS -->
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<!-- Style CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet" id="layoutstyle" href="assets/color/theme-default.css">

<script>
var sc_project=11981757; 
var sc_invisible=1; 
var sc_security="35d2687e"; 
var sc_https=1; 
</script>
<script src="../../../www.statcounter.com/counter/counter.js" async></script>

</head>

<body>
    <jsp:include page="Header.jsp"/>

<!-- START SECTION BANNER -->
<section class="bg_light_yellow breadcrumb_section background_bg bg_fixed bg_size_contain" data-img-src="assets/images/breadcrumb_bg.png">
	<div class="container">
    	<div class="row align-items-center">
        	<div class="col-sm-12 text-center">
            	<div class="page-title">
            		<h1>Shop Grid View</h1>
                </div>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-center">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Shop</a></li>
                    <li class="breadcrumb-item active" aria-current="page">shop Grid view</li>
                  </ol>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION BANNER -->

<section>
	<div class="container">
    	<div class="row">	
        	<div class="col-lg-9">
            	<div class="row align-items-center justify-content-between pb-1 mb-4">
                	<div class="col-auto">
                    	<div class="custom_select">
                    	<select>
                        	<option value="default">Default sorting</option>
                            <option value="popularity">Sort by popularity</option>
                            <option value="date">Sort by newness</option>
                        </select>
                        </div>
                    </div>
                    <div class="col-auto">
                    	<span class="align-middle">Showing 1-9 of 50 results</span>
                        <div class="list_grid_icon">
                            <a href="javascript:Void(0);" class="shorting_icon grid_view active"><i class="ion-grid"></i></a>
                            <a href="javascript:Void(0);" class="shorting_icon list_view"><i class="ion-navicon-round"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row shop_container grid_view">
                    <%
                        List<ProductDTO> productList = (List<ProductDTO>)request.getAttribute("SEARCH_PRODUCT_LIST");
                        
                        if (productList != null) {
                            for (ProductDTO product : productList) {
                    %> 
                    <div class="col-lg-4 col-sm-6">
                        <div class="product">
                            <span class="pr_flash bg_green">Sale</span>
                            <div class="product_img">
                                <a href="#"><img src="<%= product.getProductImage() %>"/></a>
                            </div>
                            <div class="product_info">
                                <h6><a href="MainController?action=GetDetailProduct&id=<%= product.getProductID() %>"><%= product.getProductName() %></a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$ <%= product.getProductPrice() %></span>
                                <div class="pr_desc">
                                	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                    	<li class="add-to-cart"><a href="MainController?action=AddToCart&quantity=1&productID=<%= product.getProductID() %>&pageValue=searchPage"><i class="ti-shopping-cart"></i> Add To Cart</a></li>
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
                <div class="row">
                    <div class="col-12 mt-3 mt-lg-4">
                        <ul class="pagination justify-content-center">
                            <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1"><i class="ion-ios-arrow-thin-left"></i></a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#"><i class="ion-ios-arrow-thin-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        	<div class="col-lg-3 order-lg-first mt-5 mt-lg-0">
            	<div class="sidebar">
                    <div class="widget">
                        <h5 class="widget_title">Categories</h5>
                        <ul class="list_none widget_categories border_bottom_dash">
                            <li><a href="#"><span class="categories_name">Dried Products</span><span class="categories_num">(9)</span></a></li>
                            <li><a href="#"><span class="categories_name">Vegetables</span><span class="categories_num">(6)</span></a></li>
                            <li><a href="#"><span class="categories_name">Fruits Fresh</span><span class="categories_num">(4)</span></a></li>
                            <li><a href="#"><span class="categories_name">Juice</span><span class="categories_num">(7)</span></a></li>
                            <li><a href="#"><span class="categories_name">Fresh Meal</span><span class="categories_num">(12)</span></a></li>
                        </ul>
                    </div>
                    <div class="widget">
                    	<h5 class="widget_title">Filter</h5>
                        <div class="filter_price">
                             <div id="price_filter"></div>
                             <div class="d-flex align-items-center justify-content-between">
                                 <span>Price <span id="flt_price"></span></span>
                                 <input type="hidden" id="price_first">
                                 <input type="hidden" id="price_second">
                                 <button type="submit" class="btn btn-default btn-sm">Filter</button>
                             </div>
                         </div>
                    </div>
                    <div class="widget">
                        <h5 class="widget_title">Recent Items</h5>
                        <ul class="recent_post border_bottom_dash list_none">
                            <li>
                                <div class="post_img">
                                    <a href="#"><img src="assets/images/shop_small1.jpg" alt="shop_small1"></a>
                                </div>
                                <div class="post_content">
                                    <h6><a href="#">100% Organic Juices</a></h6>
                                    <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                    <div class="product_price"><span class="price">$33.00</span></div>
                                </div>
                            </li>
                            <li>
                                <div class="post_img">
                                    <a href="#"><img src="assets/images/shop_small2.jpg" alt="shop_small2"></a>
                                </div>
                                <div class="post_content">
                                    <h6><a href="#">Fresh Organic Grapes</a></h6>
                                    <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                    <div class="product_price"><span class="price">$40.00</span></div>
                                </div>
                            </li>
                            <li>
                                <div class="post_img">
                                    <a href="#"><img src="assets/images/shop_small3.jpg" alt="shop_small3"></a>
                                </div>
                                <div class="post_content">
                                    <h6><a href="#">Fresh Organic Tomato</a></h6>
                                    <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                    <div class="product_price"><span class="price">$54.00</span></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="widget">
                    	<h5 class="widget_title">tags</h5>
                        <div class="tags">
                        	<a href="#">General</a>
                            <a href="#">Design</a>
                            <a href="#">jQuery</a>
                            <a href="#">Branding</a>
                            <a href="#">Modern</a>
                            <a href="#">Blog</a>
                            <a href="#">Quotes</a>
                            <a href="#">Advertisement</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- END SECTION NEWSLATTER -->
<section class="bg_light_green newslatter_wrap">
	<div class="container">
    	<div class="row justify-content-center">
        	<div class="col-lg-6 col-md-8 text-center">
                <div class="heading_s2 animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <h2>Subscribe Our Newsletter</h2>
                </div>
                <p class="m-0 animation" data-animation="fadeInUp" data-animation-delay="0.03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                <div class="small_divider"></div> 
                <div class="newsletter_form animation" data-animation="fadeInUp" data-animation-delay="0.04s">
                    <form> 
                        <div class="rounded_input">
                           <input type="text" class="form-control" required="" placeholder="Enter your Email Address">
                        </div>
                        <button type="submit" title="Subscribe" class="btn btn-default" name="submit" value="Submit">subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="overlap_shape">
        <div class="ol_shape19">
            <div class="animation" data-animation="fadeInLeft" data-animation-delay="0.5s">
                <img data-parallax='{"y": 20, "smoothness": 20}' src="assets/images/shape34.png" alt="shape34"/>
            </div>
        </div>
        <div class="ol_shape20">
            <div class="animation" data-animation="fadeInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 20, "smoothness": 20}' src="assets/images/shape35.png" alt="shape35"/>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION NEWSLATTER -->

<!-- START FOOTER -->
<footer class="bg_gray">
	<div class="top_footer small_pt small_pb">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                	<div class="footer_logo">
                    	<a href="index.html"><img alt="logo" src="assets/images/logo_dark.png"></a>
                    </div>
                    <div class="footer_desc">
                    	<p>Phasellus blandit massa enim. elit id varius nunc. Lorems ipsum dolor sit consectetur industry. If you are going to use a passage of Lorem Ipsum.</p>
                    </div>
                    <ul class="contact_info list_none">
                    	<li>
                            <span class="ti-mobile"></span>
                            <p>+123 456 7890</p>
                        </li>
                        <li>
                            <span class="ti-email"></span>
                            <a href="https://bestwebcreator.com/cdn-cgi/l/email-protection#f990979f96b980968c8b94989095d79a9694"><span class="__cf_email__" data-cfemail="422b2c242d023b2d37302f232b2e6c212d2f">[email&#160;protected]</span></a>
                        </li>
                        <li>
                            <span class="ti-location-pin"></span>
                            <address>123 Street, Old Trafford, NewYork, USA</address>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                	<h5 class="widget_title">Information</h5>
                    <ul class="list_none widget_links">
                    	<li><a href="#">Delivery Information</a></li>
                        <li><a href="#">Secure Payment</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Top Sellers</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Our Sitemap</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                	<h5 class="widget_title">Customer Support</h5>
                    <ul class="list_none widget_links">
                    	<li><a href="#">My Account</a></li>
                        <li><a href="#">Shopping Cart</a></li>
                        <li><a href="#">Addresses</a></li>
                        <li><a href="#">Discount</a></li>
                        <li><a href="#">Orders History</a></li>
                        <li><a href="#">Order Tracking</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-4">
                	<h5 class="widget_title">Instagram</h5>
                    <ul class="list_none instafeed">
                        <li><a href="#"><img src="assets/images/insta_img1.jpg" alt="insta_img"><span class="insta_icon"><i class="ti-instagram"></i></span></a></li>
                        <li><a href="#"><img src="assets/images/insta_img2.jpg" alt="insta_img"><span class="insta_icon"><i class="ti-instagram"></i></span></a></li>
                        <li><a href="#"><img src="assets/images/insta_img3.jpg" alt="insta_img"><span class="insta_icon"><i class="ti-instagram"></i></span></a></li>
                        <li><a href="#"><img src="assets/images/insta_img4.jpg" alt="insta_img"><span class="insta_icon"><i class="ti-instagram"></i></span></a></li>
                        <li><a href="#"><img src="assets/images/insta_img5.jpg" alt="insta_img"><span class="insta_icon"><i class="ti-instagram"></i></span></a></li>
                        <li><a href="#"><img src="assets/images/insta_img6.jpg" alt="insta_img"><span class="insta_icon"><i class="ti-instagram"></i></span></a></li>
                        <li><a href="#"><img src="assets/images/insta_img7.jpg" alt="insta_img"><span class="insta_icon"><i class="ti-instagram"></i></span></a></li>
                        <li><a href="#"><img src="assets/images/insta_img8.jpg" alt="insta_img"><span class="insta_icon"><i class="ti-instagram"></i></span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="middle_footer">
    	<div class="container">
        	<div class="row">
            	<div class="col-12">
                	<div class="shopping_info">
                        <div class="row justify-content-center">
                            <div class="col-md-4">	
                                <div class="icon_box icon_box_style2">
                                    <div class="box_icon">
                                        <i class="fas fa-truck"></i>
                                    </div>
                                    <div class="intro_desc">
                                    	<h5>Free Delivery</h5>
                                        <p>Phasellus blandit massa enim elit of passage varius nunc.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">	
                                <div class="icon_box icon_box_style2">
                                    <div class="box_icon">
                                        <i class="fas fa-dollar-sign"></i>
                                    </div>
                                    <div class="intro_desc">
                                    	<h5>30 Day Returns Guarantee</h5>
                                        <p>Phasellus blandit massa enim elit of passage varius nunc.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">	
                                <div class="icon_box icon_box_style2">
                                    <div class="box_icon">
                                        <i class="far fa-life-ring"></i>
                                    </div>
                                    <div class="intro_desc">
                                    	<h5>27/4 Online Support</h5>
                                        <p>Phasellus blandit massa enim elit of passage varius nunc.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom_footer">
    	<div class="container">
        	<div class="row align-items-center">
            	<div class="col-lg-4">
                    <p class="copyright m-lg-0 text-center">Copyright © 2019 All Rights Reserved </p>
                </div>
                <div class="col-lg-4 order-lg-first">
                    <ul class="list_none footer_payment text-center text-lg-left">
                        <li><a href="#"><img src="assets/images/visa.png" alt="visa"/></a></li>
                        <li><a href="#"><img src="assets/images/discover.png" alt="discover"/></a></li>
                        <li><a href="#"><img src="assets/images/master_card.png" alt="master_card"/></a></li>
                        <li><a href="#"><img src="assets/images/paypal.png" alt="paypal"/></a></li>
                        <li><a href="#"><img src="assets/images/amarican_express.png" alt="amarican_express"/></a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <ul class="list_none social_icons radius_social text-center text-lg-right">
                        <li><a href="#" class="sc_facebook"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#" class="sc_twitter"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#" class="sc_google"><i class="fab fa-google-plus-g"></i></a></li>
                        <li><a href="#" class="sc_instagram"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="#" class="sc_pinterest"><i class="fab fa-pinterest"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="overlap_shape">
        <div class="ol_shape21">
            <div class="animation">
                <img data-parallax='{"y": 20, "smoothness": 20}' src="assets/images/shape36.png" alt="shape36"/>
            </div>
        </div>
        <div class="ol_shape22">
            <div class="animation">
                <img data-parallax='{"y": 20, "smoothness": 20}' src="assets/images/shape37.png" alt="shape37"/>
            </div>
        </div>
        <div class="ol_shape23">
            <div class="animation">
                <img data-parallax='{"y": 20, "smoothness": 20}' src="assets/images/shape38.png" alt="shape38"/>
            </div>
        </div>
        <div class="ol_shape24">
            <div class="animation">
                <img data-parallax='{"y": 20, "smoothness": 20}' src="assets/images/shape39.png" alt="shape39"/>
            </div>
        </div>
    </div>
</footer>
<!-- END FOOTER -->

<a href="#" class="scrollup" style="display: none;"><i class="ion-ios-arrow-up"></i></a> 

<!-- Latest jQuery --> 
<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/jquery-1.12.4.min.js"></script> 
<!-- jquery-ui --> 
<script src="assets/js/jquery-ui.js"></script>
<!-- popper min js --> 
<script src="assets/js/popper.min.js"></script>
<!-- Latest compiled and minified Bootstrap --> 
<script src="assets/bootstrap/js/bootstrap.min.js"></script> 
<!-- owl-carousel min js  --> 
<script src="assets/owlcarousel/js/owl.carousel.min.js"></script> 
<!-- magnific-popup min js  --> 
<script src="assets/js/magnific-popup.min.js"></script> 
<!-- waypoints min js  --> 
<script src="assets/js/waypoints.min.js"></script> 
<!-- parallax js  --> 
<script src="assets/js/parallax.js"></script> 
<!-- jquery dd js  --> 
<script src="assets/js/jquery.dd.min.js"></script>
<!-- countdown js  --> 
<script src="assets/js/jquery.countdown.min.js"></script> 
<!-- jquery.counterup.min js --> 
<script src="assets/js/jquery.counterup.min.js"></script>
<!-- jquery.parallax-scroll js -->
<script src="assets/js/jquery.parallax-scroll.js"></script>
<!-- elevatezoom js -->
<script src='assets/js/jquery.elevatezoom.js'></script>
<!-- fit video  -->
<script src="assets/js/jquery.fitvids.js"></script>
<!-- imagesloaded js --> 
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<!-- isotope min js --> 
<script src="assets/js/isotope.min.js"></script>
<!-- cookie js -->
<script src="assets/js/js.cookie.js"></script>
<!-- scripts js --> 
<script src="assets/js/scripts.js"></script>

</body>

<!-- Mirrored from bestwebcreator.com/organiq/demo/shop-grid-view.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:49:59 GMT -->
</html>