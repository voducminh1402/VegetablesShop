<%-- 
    Document   : index
    Created on : Sep 28, 2021, 10:14:49 PM
    Author     : VODUCMINH
--%>

<%@page import="java.util.List"%>
<%@page import="vegetablesshop.products.ProductDTO"%>
<%@page import="vegetablesshop.products.ProductDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from bestwebcreator.com/organiq/demo/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:47:20 GMT -->
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="Anil z" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Organiq is clean and modern organic foods store template perfect for Organic Farm shop, organic foods, agriculture and niche foods store.">
<meta name="keywords" content="food shop, fresh, modern, organic farm, organic farm shop, organic food, organic shop, agriculture, agritourism, agrotourism, e-commerce, eco, eco products, farm, farming, food, health, organic, organic food, retail, shop, store">

<!-- SITE TITLE -->
<title>Organiq - Organic Food HTML Template</title>
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
<section class="banner_slider p-0">
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active bg_light_green background_bg" data-img-src="assets/images/slide_bg_pattern.png">
            	<div class="banner_slide_content">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-8 offset-xl-1 col-lg-9 offset-lg-1">
                                <div class="banner_content banner_content_pad animation" data-animation="fadeIn" data-animation-delay="0.4s" data-parallax='{"y": 30, "smoothness": 10}'>
                            <h2 class="animation" data-animation="fadeInDown" data-animation-delay="0.5s">Fresh & Organic Fruits.</h2>
                            <p class="animation" data-animation="fadeInUp" data-animation-delay="0.6s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit<br> massa enim. Nullam id varius nunc id varius nunc.</p>
                            <a class="btn btn-default btn-radius btn-borderd animation" href="#" data-animation="fadeInUp" data-animation-delay="0.7s">Learn More</a>
                            <a class="btn btn-white btn-radius btn-borderd animation" href="#" data-animation="fadeInUp" data-animation-delay="0.8s">Contact Us</a>
                        </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner_shape">
                    <div class="shape1">
                    	<div class="animation" data-animation="rollIn" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": -30, "smoothness": 20}' src="assets/images/shape1.png" alt="shape1"/>
                        </div>
                    </div>
                    <div class="shape2">
                    	<div class="animation" data-animation="bounceInDown" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape2.png" alt="shape2"/>
                        </div>
                    </div>
                    <div class="shape3">
                    	<div class="animation" data-animation="bounceInRight" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape3.png" alt="shape3"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item bg_light_yellow">
                <div class="banner_slide_content">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-10">
                                <div class="banner_content border_shape text-center animation" data-animation="zoomIn" data-animation-delay="0.4s" data-parallax='{"y": 30, "smoothness": 10}'>
                                    <h2 class="animation" data-animation="fadeInDown" data-animation-delay="0.5s"> Vegetable 100% Organic</h2>
                                    <p class="animation" data-animation="fadeInUp" data-animation-delay="0.6s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit<br> massa enim. Nullam id varius nunc id varius nunc.</p>
                                    <a class="btn btn-default btn-radius btn-borderd animation" href="#" data-animation="fadeInUp" data-animation-delay="0.7s">Learn More</a>
                                    <a class="btn btn-white btn-radius btn-borderd animation" href="#" data-animation="fadeInUp" data-animation-delay="0.8s">Contact Us</a>
                        		</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner_shape">
                    <div class="shape4">
                    	<div class="animation" data-animation="fadeInLeftBig" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": -30, "smoothness": 20}' src="assets/images/shape4.png" alt="shape4"/>
                        </div>
                    </div>
                    <div class="shape5">
                    	<div class="animation" data-animation="slideInDown" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape5.png" alt="shape5"/>
                        </div>
                    </div>
                    <div class="shape6">
                    	<div class="animation" data-animation="bounceInDown" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape6.png" alt="shape6"/>
                        </div>
                    </div>
                    <div class="shape7">
                    	<div class="animation" data-animation="fadeInRightBig" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape7.png" alt="shape7"/>
                        </div>
                    </div>
                    <div class="shape8">
                    	<div class="animation" data-animation="slideInUp" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape8.png" alt="shape8"/>
                        </div>
                    </div>
                    <div class="shape9">
                    	<div class="animation" data-animation="bounceInUp" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape9.png" alt="shape9"/>
                        </div>
                    </div>
                    <div class="shape10">
                    	<div class="animation" data-animation="bounceInUp" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape10.png" alt="shape10"/>
                        </div>
                    </div>
                    <div class="shape11">
                    	<div class="animation" data-animation="bounceInUp" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape11.png" alt="shape11"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item bg_light_blue">
                <div class="banner_slide_content">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-8 offset-xl-1 col-lg-9 offset-lg-1 col-md-10">
                                <div class="banner_content banner_content_pad animation" data-animation="fadeIn" data-animation-delay="0.4s" data-parallax='{"y": 30, "smoothness": 10}'>
                            <h2 class="animation font_style1" data-animation="fadeInDown" data-animation-delay="0.5s">The Fresh Organic Juices.</h2>
                            <p class="animation" data-animation="fadeInUp" data-animation-delay="0.6s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit<br class="d-none d-lg-block"> massa enim. Nullam id varius nunc id varius nunc.</p>
                            <a class="btn btn-default btn-radius btn-borderd animation" href="#" data-animation="fadeInUp" data-animation-delay="0.7s">Learn More</a>
                            <a class="btn btn-white btn-radius btn-borderd animation" href="#" data-animation="fadeInUp" data-animation-delay="0.8s">Contact Us</a>
                        </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner_shape">
                    <div class="shape12">
                    	<div class="animation" data-animation="slideInDown" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": -30, "smoothness": 20}' src="assets/images/shape12.png" alt="shape12"/>
                        </div>
                    </div>
                    <div class="shape13">
                    	<div class="animation" data-animation="slideInDown" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape13.png" alt="shape13"/>
                        </div>
                    </div>
                    <div class="shape14">
                    	<div class="animation" data-animation="zoomIn" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape14.png" alt="shape14"/>
                        </div>
                    </div>
                    <div class="shape15">
                    	<div class="animation" data-animation="bounceInUp" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape15.png" alt="shape15"/>
                        </div>
                    </div>
                    <div class="shape16">
                    	<div class="animation" data-animation="zoomInUp" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape16.png" alt="shape16"/>
                        </div>
                    </div>
                    <div class="shape17">
                    	<div class="animation" data-animation="slideInLeft" data-animation-delay="0.5s">
                    		<img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape17.png" alt="shape17"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev"><i class="ion-chevron-left"></i></a>
    <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next"><i class="ion-chevron-right"></i></a>
    </div>
</section>
<!-- END SECTION BANNER -->

<!-- START SECTION BANNER BOX -->
<section>
	<div class="container">
    	<div class="row">
        	<div class="col-md-4 animation" data-animation="bounceInUp" data-animation-delay="0.2s">
            	<div class="banner_box box_shadow4 radius_all_10">
                	<div class="banner_text">
                    	<h3>Orange Juice</h3>
                        <p>100% Pure Natural Friut Juice</p>
                        <em><a href="#"><u>Shop Now</u></a></em>
                    </div>
                    <div class="banner_img">
                    	<img src="assets/images/banner_img1.png" alt="banner_img1" />
                    </div>
                </div>
            </div>
            <div class="col-md-4 animation" data-animation="bounceInUp" data-animation-delay="0.3s">
            	<div class="banner_box box_shadow4 radius_all_10">
                	<div class="banner_text">
                    	<h3>Stoberry Juice</h3>
                        <p>100% Pure Natural Friut Juice</p>
                        <em><a href="#"><u>Shop Now</u></a></em>
                    </div>
                    <div class="banner_img">
                    	<img src="assets/images/banner_img2.png" alt="banner_img2" />
                    </div>
                </div>
            </div>
            <div class="col-md-4 animation" data-animation="bounceInUp" data-animation-delay="0.4s">
            	<div class="banner_box box_shadow4 radius_all_10">
                	<div class="banner_text">
                    	<h3>Fresh Grapes</h3>
                        <p>100% Pure Natural Friut Juice</p>
                        <em><a href="#"><u>Shop Now</u></a></em>
                    </div>
                    <div class="banner_img">
                    	<img src="assets/images/banner_img3.png" alt="banner_img3" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION BANNER BOX -->

<!-- START SECTION WHY CHOOSE US -->
<section class="bg_gray">
	<div class="container">
    	<div class="row justify-content-center">
        	<div class="col-xl-4 col-md-6 col-sm-8 text-center">
                <div class="heading_s1 text-center animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <h2>Why Choose Us</h2>
                </div>
                <p class="animation" data-animation="fadeInUp" data-animation-delay="0.03s"> Lorem ipsum dolor sit amet, consectetur blandit magna adipiscing elit. </p>
            </div>
        </div>
        <div class="row align-items-center">
        	<div class="col-lg-4 col-md-6">
            	<div class="icon_box icon_box_style1 bg-white radius_all_10 animation" data-animation="fadeInUp" data-animation-delay="0.04s">
                	<div class="box_icon">
                		<img src="assets/images/icon1.png" alt="icon1">
                    </div>
                    <div class="intro_desc">
                        <h6>Natural Organic Fruits</h6>
                        <p>Lorem ipsum dolor consectetur adipiscing Phasellus blandit.</p>
                    </div>
                </div>
                <div class="icon_box icon_box_style1 bg-white radius_all_10 animation" data-animation="fadeInUp" data-animation-delay="0.05s">
                	<div class="box_icon">
                		<img src="assets/images/icon2.png" alt="icon2">
                    </div>
                    <div class="intro_desc">
                        <h6>Fresh Vegetables</h6>
                        <p>Lorem ipsum dolor consectetur adipiscing Phasellus blandit.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 order-lg-last">
            	<div class="icon_box icon_box_style1 bg-white radius_all_10 animation" data-animation="fadeInUp" data-animation-delay="0.04s">
                	<div class="box_icon">
                		<img src="assets/images/icon3.png" alt="icon3">
                    </div>
                    <div class="intro_desc">
                        <h6>100% Organic Juices</h6>
                        <p>Lorem ipsum dolor consectetur adipiscing Phasellus blandit.</p>
                    </div>
                </div>
                <div class="icon_box icon_box_style1 bg-white radius_all_10 animation" data-animation="fadeInUp" data-animation-delay="0.05s">
                	<div class="box_icon">
                		<img src="assets/images/icon4.png" alt="icon4">
                    </div>
                    <div class="intro_desc">
                        <h6>Natural Organic Tea</h6>
                        <p>Lorem ipsum dolor consectetur adipiscing Phasellus blandit.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-12">
                <div class="why_choose_img bounceimg">
                    <img src="assets/images/why_choose_img.png" alt="why_choose_img">
                </div>
            </div>
        </div>
    </div>
    <div class="wave_shape"><img src="assets/images/wave_shape.png" alt="wave_shape"></div>
    <div class="overlap_shape">
        <div class="ol_shape1">
            <div class="animation" data-animation="bounceInDown" data-animation-delay="0.5s">
                <img data-parallax='{"y": -30, "smoothness": 20}' src="assets/images/shape18.png" alt="shape18"/>
            </div>
        </div>
        <div class="ol_shape2">
            <div class="animation" data-animation="zoomIn" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape19.png" alt="shape19"/>
            </div>
        </div>
        <div class="ol_shape3">
            <div class="animation" data-animation="zoomIn" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape20.png" alt="shape20"/>
            </div>
        </div>
        <div class="ol_shape4">
            <div class="animation" data-animation="bounceInUp" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape21.png" alt="shape21"/>
            </div>
        </div>
        <div class="ol_shape5">
            <div class="animation" data-animation="slideInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape22.png" alt="shape22"/>
            </div>
        </div>
        <div class="ol_shape6">
            <div class="animation" data-animation="slideInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape23.png" alt="shape23"/>
            </div>
        </div>
        <div class="ol_shape7">
            <div class="animation" data-animation="slideInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape24.png" alt="shape24"/>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION WHY CHOOSE US -->

<!-- START SECTION PRODUCT -->
<section class="pb_70">
	<div class="container">
    	<div class="row justify-content-center">
        	<div class="col-xl-6 col-lg-8 col-sm-10 text-center">
                <div class="heading_s1 text-center animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <h2>Best Seller</h2>
                </div>
                <p class="animation" data-animation="fadeInUp" data-animation-delay="0.03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="product_content">
                    <ul class="nav nav-tabs justify-content-center animation" data-animation="fadeInUp" data-animation-delay="0.04s" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="tab1" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true"><span class="pr_icon1"></span>All Product</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="tab2" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false"><span class="pr_icon2"></span>Vegetables</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="tab3" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false"><span class="pr_icon3"></span>Fruits</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="tab4" data-toggle="tab" href="#tab-4" role="tab" aria-controls="tab-4" aria-selected="false"><span class="pr_icon4"></span>Juices</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="tab5" data-toggle="tab" href="#tab-5" role="tab" aria-controls="tab-5" aria-selected="false"><span class="pr_icon5"></span>Tea</a>
                      </li>
                    </ul>
                    <div class="small_divider clearfix"></div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab1">
                            <div class="row animation" data-animation="fadeInUp" data-animation-delay="0.05s">
                            	<div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_green">Sale</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img1.jpg" alt="product_img1"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Strawberry</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$35.00</span>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-10%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img2.jpg" alt="product_img2"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Grapes</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$40.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img3.jpg" alt="product_img3"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Cucumber</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                            <span class="price">$52.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_green">Sale</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img4.jpg" alt="product_img4"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Orange</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$39.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img5.jpg" alt="product_img5"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">100% Organic Juices</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$33.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img6.jpg" alt="product_img6"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Banana</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                            <span class="price">$42.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_red">Hot</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img7.jpg" alt="product_img7"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Tomato</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$54.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-25%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img8.jpg" alt="product_img8"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Carrots</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$32.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab2">
                            <div class="row animation" data-animation="fadeInUp" data-animation-delay="0.05s">
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-10%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img2.jpg" alt="product_img2"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Grapes</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$40.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img3.jpg" alt="product_img3"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Cucumber</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                            <span class="price">$52.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img5.jpg" alt="product_img5"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">100% Organic Juices</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$33.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img6.jpg" alt="product_img6"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Banana</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                            <span class="price">$42.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_red">Hot</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img7.jpg" alt="product_img7"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Tomato</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$54.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-25%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img8.jpg" alt="product_img8"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Carrots</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$32.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="tab3">
                            <div class="row animation" data-animation="fadeInUp" data-animation-delay="0.05s">
                            	<div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_green">Sale</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img1.jpg" alt="product_img1"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Strawberry</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$35.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-10%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img2.jpg" alt="product_img2"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Grapes</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$40.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_green">Sale</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img4.jpg" alt="product_img4"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Orange</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$39.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img5.jpg" alt="product_img5"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">100% Organic Juices</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$33.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_red">Hot</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img7.jpg" alt="product_img7"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Tomato</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$54.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-25%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img8.jpg" alt="product_img8"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Carrots</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$32.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-4" role="tabpanel" aria-labelledby="tab4">
                            <div class="row animation" data-animation="fadeInUp" data-animation-delay="0.05s">
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_green">Sale</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img4.jpg" alt="product_img4"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Orange</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$39.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img5.jpg" alt="product_img5"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">100% Organic Juices</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$33.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img6.jpg" alt="product_img6"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Banana</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                            <span class="price">$42.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_red">Hot</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img7.jpg" alt="product_img7"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Tomato</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$54.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-25%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img8.jpg" alt="product_img8"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Carrots</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$32.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-5" role="tabpanel" aria-labelledby="tab5">
                            <div class="row animation" data-animation="fadeInUp" data-animation-delay="0.05s">
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_red">Hot</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img7.jpg" alt="product_img7"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Tomato</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$54.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img3.jpg" alt="product_img3"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Cucumber</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                            <span class="price">$52.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_green">Sale</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img4.jpg" alt="product_img4"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Orange</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$39.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-10%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img2.jpg" alt="product_img2"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Grapes</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$40.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img5.jpg" alt="product_img5"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">100% Organic Juices</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                            <span class="price">$33.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_orange">-25%</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img8.jpg" alt="product_img8"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Carrots</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$32.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img6.jpg" alt="product_img6"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Banana</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                            <span class="price">$42.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-4 col-sm-6">
                                	<div class="product">
                                    	<span class="pr_flash bg_green">Sale</span>
                                    	<div class="product_img">
                                        	<a href="#"><img src="assets/images/product_img1.jpg" alt="product_img1"/></a>
                                            <div class="product_action_box">
                                                <ul class="list_none pr_action_btn">
                                                    <li><a href="#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                                    <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product_info">
                                        	<h6><a href="#">Fresh Organic Strawberry</a></h6>
                                            <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                            <span class="price">$35.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="overlap_shape">
        <div class="ol_shape8">
            <div class="animation" data-animation="fadeInLeft" data-animation-delay="0.5s">
                <img data-parallax='{"y": -30, "smoothness": 20}' src="assets/images/shape25.png" alt="shape25"/>
            </div>
        </div>
        <div class="ol_shape9">
            <div class="animation" data-animation="fadeInLeft" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape26.png" alt="shape26"/>
            </div>
        </div>
        <div class="ol_shape10">
            <div class="animation" data-animation="fadeInLeft" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape27.png" alt="shape27"/>
            </div>
        </div>
        <div class="ol_shape11">
            <div class="animation" data-animation="fadeInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape28.png" alt="shape28"/>
            </div>
        </div>
        <div class="ol_shape12">
            <div class="animation" data-animation="fadeInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape29.png" alt="shape29"/>
            </div>
        </div>
        <div class="ol_shape13">
            <div class="animation" data-animation="fadeInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape30.png" alt="shape30"/>
            </div>
        </div>
        <div class="ol_shape14">
            <div class="bounceimg" data-animation="fadeInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape31.png" alt="shape31"/>
            </div>
        </div>
    </div>
</section>
<!-- START SECTION PRODUCT -->

<!-- START SECTION DEAL OF THE DAY -->
<section class="bg_light_blue">
    <div class="container">
        <div class="row justify-content-between align-items-center">
            <div class="col-lg-6 col-md-7">
            	<div class="deal_content text-center">
                    <div class="heading_s1 text-center animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                        <h2>Special discount </br> for all food products</h2>
                    </div>
                    <p class="animation" data-animation="fadeInUp" data-animation-delay="0.03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.</p>
                    <div class="countdown_time animation" data-animation="fadeInUp" data-animation-delay="0.04s" data-time="2020/05/08 00:00:00"></div>
                    <a href="#" class="btn btn-default btn-radius btn-borderd animation" data-animation="fadeInUp" data-animation-delay="0.04s">See Offer Now</a>
                </div>
            </div>
            <div class="col-lg-6 col-md-5">
                <div class="deal_img_wrap bounceimg animation" data-animation="zoomIn" data-animation-delay="0.02s">
                	<img src="assets/images/deal_img.png" alt="deal_img"/>
                </div>
                <div class="circle_bg1">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
    </div>
    <div class="overlap_shape">
        <div class="ol_shape15">
            <div class="animation" data-animation="fadeInLeft" data-animation-delay="0.5s">
                <img data-parallax='{"y": -30, "smoothness": 20}' src="assets/images/shape32.png" alt="shape32"/>
            </div>
        </div>
        <div class="ol_shape16">
            <div class="animation" data-animation="fadeInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 30, "smoothness": 20}' src="assets/images/shape33.png" alt="shape33"/>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION DEAL OF THE DAY -->

<!-- START SECTION FEATURE PRODUCT -->
<section>
	<div class="container">	
    	<div class="row">
        	<div class="col-lg-6 col-md-8">
                <div class="heading_s1 animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <h2>Featured Products</h2>
                </div>
                <p class="animation" data-animation="fadeInUp" data-animation-delay="0.03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                <div class="small_divider clearfix"></div>
            </div>
        </div>
        <div class="row">
        	<div class="col-12 animation" data-animation="fadeInUp" data-animation-delay="0.04s">
            	<div class="product_slider product_list carousel_slide3 owl-carousel owl-theme nav_top_right" data-margin="30" data-dots="false" data-nav="true">
                    <div class="items">
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img1.jpg" alt="product_img1"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Strawberry</a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$35.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img4.jpg" alt="product_img4"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Orange</a></h6>
                                <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                <span class="price">$39.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img7.jpg" alt="product_img7"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Tomato</a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$54.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="items">
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img2.jpg" alt="product_img2"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Grapes</a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$40.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img5.jpg" alt="product_img5"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">100% Organic Juices</a></h6>
                                <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                <span class="price">$33.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img8.jpg" alt="product_img8"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Carrots</a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$32.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="items">
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img3.jpg" alt="product_img3"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Cucumber</a></h6>
                                <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                <span class="price">$52.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img6.jpg" alt="product_img6"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Banana</a></h6>
                                <div class="rating"><div class="product_rate" style="width:60%"></div></div>
                                <span class="price">$42.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img9.jpg" alt="product_img9"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh pineapple</a></h6>
                                <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                <span class="price">$22.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="items">
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img2.jpg" alt="product_img2"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Grapes</a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$40.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img5.jpg" alt="product_img5"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">100% Organic Juices</a></h6>
                                <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                <span class="price">$33.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img8.jpg" alt="product_img8"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Carrots</a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$32.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="items">
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img1.jpg" alt="product_img1"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Strawberry</a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$35.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img4.jpg" alt="product_img4"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Orange</a></h6>
                                <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                <span class="price">$39.00</span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img7.jpg" alt="product_img7"/></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.jsp" class="popup-ajax"><i class="ti-eye"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6><a href="#">Fresh Organic Tomato</a></h6>
                                <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                <span class="price">$54.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION FEATURE PRODUCT -->

<!-- START SECTION TESTIMONIAL -->
<section class="bg_gray">
	<div class="container">
    	<div class="row justify-content-center">
        	<div class="col-xl-6 col-lg-8">
            	<div class="text-center animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                    <div class="heading_s1 text-center">
                        <h2>Our Client Say!</h2>
                    </div>
                    <p class="animation" data-animation="fadeInUp" data-animation-delay="0.03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                </div>
                <div class="small_divider"></div>
            </div>
        </div>
        <div class="row justify-content-center">
        	<div class="col-12 animation" data-animation="fadeInUp" data-animation-delay="0.04s">
            	<div class="testimonial_slider testimonial_style1 carousel_slide3 owl-carousel owl-theme" data-margin="30" data-loop="true" data-autoplay="true" data-dots="false">
                    <div class="testimonial_box">
                        <div class="testi_desc">
                            	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam id varius nunc id varius nunc.Lorem ipsum dolor sit amet consectetur adipiscing</p>
                            </div>
                        <div class="testi_meta">
                        	<div class="testimonial_img">
                                <img src="assets/images/client_img1.jpg" alt="client">
                            </div>
                        	<div class="testi_user">
                            	<h5>Merry Walter</h5>
                                <span>Web Designer</span>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial_box">
                        <div class="testi_desc">
                            	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam id varius nunc id varius nunc.Lorem ipsum dolor sit amet consectetur adipiscing</p>
                            </div>
                        <div class="testi_meta">
                        	<div class="testimonial_img">
                                <img src="assets/images/client_img2.jpg" alt="client">
                            </div>
                        	<div class="testi_user">
                            	<h5>John Mark</h5>
                                <span>Web Designer</span>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial_box">
                        <div class="testi_desc">
                            	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam id varius nunc id varius nunc.Lorem ipsum dolor sit amet consectetur adipiscing</p>
                            </div>
                        <div class="testi_meta">
                        	<div class="testimonial_img">
                                <img src="assets/images/client_img3.jpg" alt="client">
                            </div>
                        	<div class="testi_user">
                            	<h5>Calvin William</h5>
                                <span>Web Designer</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="overlap_shape">
        <div class="ol_shape17">
            <div class="animation" data-animation="fadeInLeft" data-animation-delay="0.5s">
                <img data-parallax='{"y": 20, "smoothness": 20}' src="assets/images/testimonial_bg_img1.jpg" alt="testimonial_bg_img1"/>
            </div>
        </div>
        <div class="ol_shape18">
            <div class="animation" data-animation="fadeInRight" data-animation-delay="0.5s">
                <img data-parallax='{"y": 20, "smoothness": 20}' src="assets/images/testimonial_bg_img2.png" alt="testimonial_bg_img2"/>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION TESTIMONIAL -->

<!-- START SECTION BLOG -->
<section class="pb_20">
	<div class="container">
    	<div class="row justify-content-center">
        	<div class="col-xl-6 col-lg-8">
            	<div class="text-center">
                    <div class="heading_s1 text-center animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                        <h2>Blog News</h2>
                    </div>
                    <p class="animation" data-animation="fadeInUp" data-animation-delay="0.03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                    <div class="small_divider"></div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
        	<div class="col-lg-4 col-md-6">
            	<div class="blog_post blog_style1 radius_all_10 animation" data-animation="fadeInUp" data-animation-delay="0.04s">
                	<div class="blog_img">
                        <a href="#">
                            <img src="assets/images/blog_small_img1.jpg" alt="blog_small_img1">
                        </a>
                        <div class="blog_date style1"><h4>02</h4><span>May</span></div>
                    </div>
                    <div class="blog_content">
                        <h6 class="blog_title"><a href="#">Varius Phasellus blandit massa enim</a></h6>
                        <ul class="list_none blog_meta">
                            <li><a href="#"><i class="far fa-user"></i>by <span class="text_default">admin</span></a></li>
                            <li><a href="#"><i class="far fa-comments"></i>4 Comment</a></li>
                        </ul>
                        <p>Phasellus blandit massa enim elit variununc Lorems ipsum dolor sit consectetur industry. If you are use passage of Lorem Ipsum.</p>
                        <a href="#" class="blog_link">Read More <i class="ion-ios-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
            	<div class="blog_post blog_style1 radius_all_10 animation" data-animation="fadeInUp" data-animation-delay="0.05s">
                	<div class="blog_img">
                        <a href="#">
                            <img src="assets/images/blog_small_img2.jpg" alt="blog_small_img2">
                        </a>
                        <div class="blog_date style1"><h4>25</h4><span>Mar</span></div>
                    </div>
                    <div class="blog_content">
                        <h6 class="blog_title"><a href="#">Varius Phasellus blandit massa enim</a></h6>
                        <ul class="list_none blog_meta">
                            <li><a href="#"><i class="far fa-user"></i>by <span class="text_default">admin</span></a></li>
                            <li><a href="#"><i class="far fa-comments"></i>3 Comment</a></li>
                        </ul>
                        <p>Phasellus blandit massa enim elit variununc Lorems ipsum dolor sit consectetur industry. If you are use passage of Lorem Ipsum.</p>
                        <a href="#" class="blog_link">Read More <i class="ion-ios-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
            	<div class="blog_post blog_style1 radius_all_10 animation" data-animation="fadeInUp" data-animation-delay="0.06s">
                	<div class="blog_img">
                        <a href="#">
                            <img src="assets/images/blog_small_img3.jpg" alt="blog_small_img3">
                        </a>
                        <div class="blog_date style1"><h4>08</h4><span>Aug</span></div>
                    </div>
                    <div class="blog_content">
                        <h6 class="blog_title"><a href="#">Varius Phasellus blandit massa enim</a></h6>
                        <ul class="list_none blog_meta">
                            <li><a href="#"><i class="far fa-user"></i>by <span class="text_default">admin</span></a></li>
                            <li><a href="#"><i class="far fa-comments"></i>5 Comment</a></li>
                        </ul>
                        <p>Phasellus blandit massa enim elit variununc Lorems ipsum dolor sit consectetur industry. If you are use passage of Lorem Ipsum.</p>
                        <a href="#" class="blog_link">Read More <i class="ion-ios-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION BLOG -->

<!-- START SECTION CLIENT LOGO -->
<section class="small_pt">
	<div class="container">
    	<div class="row justify-content-center">
        	<div class="col-xl-6 col-lg-8">
            	<div class="text-center">
                    <div class="heading_s1 text-center animation" data-animation="fadeInUp" data-animation-delay="0.02s">
                        <h2>Our partner</h2>
                    </div>
                    <p class="animation" data-animation="fadeInUp" data-animation-delay="0.03s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                    <div class="small_divider"></div>
                </div>
            </div>
        </div>
    	<div class="row">
        	<div class="col-12 animation" data-animation="fadeInUp" data-animation-delay="0.02s">
            	<div class="carousel_slide5 owl-carousel owl-theme" data-margin="30" data-dots="false" data-loop="true" data-autoplay="true">
                	<div class="items">
                    	<a href="#"><img src="assets/images/cl_logo1.png" alt="cl_logo1"/></a>
                    </div>
                    <div class="items">
                    	<a href="#"><img src="assets/images/cl_logo2.png" alt="cl_logo2"/></a>
                    </div>
                    <div class="items">
                    	<a href="#"><img src="assets/images/cl_logo3.png" alt="cl_logo3"/></a>
                    </div>
                    <div class="items">
                    	<a href="#"><img src="assets/images/cl_logo4.png" alt="cl_logo4"/></a>
                    </div>
                    <div class="items">
                    	<a href="#"><img src="assets/images/cl_logo5.png" alt="cl_logo5"/></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION CLIENT LOGO -->


<jsp:include page="Footer.jsp" />

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

<!-- Mirrored from bestwebcreator.com/organiq/demo/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:48:43 GMT -->
</html>