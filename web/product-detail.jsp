<%-- 
    Document   : product-detail
    Created on : Sep 28, 2021, 11:00:40 PM
    Author     : VODUCMINH
--%>

<%@page import="vegetablesshop.shopping.Cart"%>
<%@page import="vegetablesshop.products.ProductDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from bestwebcreator.com/organiq/demo/product-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:49:59 GMT -->
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="Anil z" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Organiq is clean and modern organic foods store template perfect for Organic Farm shop, organic foods, agriculture and niche foods store.">
<meta name="keywords" content="food shop, fresh, modern, organic farm, organic farm shop, organic food, organic shop, agriculture, agritourism, agrotourism, e-commerce, eco, eco products, farm, farming, food, health, organic, organic food, retail, shop, store">

<!-- SITE TITLE -->
<title>Product detail | Organiq - Organic Food HTML Template</title>
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

    <jsp:include page="Header.jsp" />

<!-- START SECTION BANNER -->
<section class="bg_light_yellow breadcrumb_section background_bg bg_fixed bg_size_contain" data-img-src="assets/images/breadcrumb_bg.png">
	<div class="container">
    	<div class="row align-items-center">
        	<div class="col-sm-12 text-center">
            	<div class="page-title">
            		<h1>Product Detail</h1>
                </div>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-center">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Shop</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Product Detail</li>
                  </ol>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION BANNER -->

<!-- START SECTION SHOP DETAIL -->
<section>
    <div class="container">
    	<div class="row">
            <%
                ProductDTO product = (ProductDTO)request.getAttribute("PRODUCT_DETAIL");
                if (product != null) {
            %>
            <div class="col-md-6">
              <div class="product-image">
                 <span class="pr_flash bg_green">Sale</span>
                 <img id="product_img" src='<%= product.getProductImage() %>' alt="product" data-zoom-image="<%= product.getProductImage() %>"/>
                 <div id="pr_item_gallery" class="product_gallery_item owl-thumbs-slider owl-carousel owl-theme">
                    <div class="item">
                        <a href="#" class="active" data-image="<%= product.getProductImage() %>" data-zoom-image="<%= product.getProductImage() %>">
                            <img src="<%= product.getProductImage() %>" alt="product" />
                        </a>
                    </div>
                    <div class="item">
                        <a href="#" data-image="<%= product.getProductImage() %>" data-zoom-image="<%= product.getProductImage() %>">
                            <img src="<%= product.getProductImage() %>" alt="product" />
                        </a>
                    </div>
                    <div class="item">
                        <a href="#" data-image="<%= product.getProductImage() %>" data-zoom-image="<%= product.getProductImage() %>">
                            <img src="<%= product.getProductImage() %>" alt="product" />
                        </a>
                    </div>
                    <div class="item">
                        <a href="#" data-image="<%= product.getProductImage() %>" data-zoom-image="<%= product.getProductImage() %>">
                            <img src="<%= product.getProductImage() %>" alt="product" />
                        </a>
                    </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
                <div class="pr_detail">
                  <div class="product-description">
                    <div class="product-title">
                      <h4><a href="#"><%= product.getProductName() %></a></h4>
                    </div>
                    <div class="product_price float-left">
                        <span class="price">$ <%= product.getProductPrice() %></span>
                    </div>
                    <div class="rating mt-2 float-right"><div class="product_rate" style="width:80%"></div></div>
                    <div class="clearfix"></div>
                    <hr>
                    <p><%= product.getDescription() %></p>
                  </div>
                  <hr>
                  <form action="MainController">
                      <div class="cart_extra">
                        <div class="cart-product-quantity">
                          <div class="quantity">
                            <input type="button" value="-" class="minus">
                            <input type="text" name="quantity" value="1" min="1" max="<%= product.getQuantity() %>" title="Quantity is greater than 0" class="qty" size="4" pattern="^\+?(|[1-9]\d*)$">
                            <input type="button" value="+" class="plus">
                          </div>
                        </div>
                        <div class="cart_btn">
                            <input type="hidden" name="productID" value="<%= product.getProductID() %>">
                            <button class="btn btn-default btn-radius btn-sm btn-addtocart" type="submit" name="action" value="AddToCart" >Add to cart</button>
                            <a class="add_wishlist" href="#"><i class="ti-heart"></i></a>
                        </div>
                      </div>
                  </form>
                  <div class="clearfix"></div>
                  <hr>
                  <ul class="product-meta list_none">
                    <li>Category: <a href="#"><%= product.getCategoryName() %></a></li>
                    <li>Tags: <a href="#" rel="tag">Fruits</a>, <a href="#" rel="tag">Natural</a>, <a href="#" rel="tag">Organic</a> </li>
                  </ul>
                  <div class="product_share d-block d-sm-flex align-items-center">
                    <span>Share with:</span>
                      <ul class="list_none social_icons border_social rounded_social">
                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                            <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                      </ul>
                  </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <div class="row">
        	<div class="col-12">
            	<div class="medium_divider clearfix"></div>
            </div>
        </div>
        <div class="row">
        	<div class="col-12">
            	<div class="tab-style1">
            		<ul class="nav nav-tabs" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="Description-tab" data-toggle="tab" href="#Description" role="tab" aria-controls="Description" aria-selected="true">Description</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="Reviews-tab" data-toggle="tab" href="#Reviews" role="tab" aria-controls="Reviews" aria-selected="false">Reviews (2)</a>
                      </li>
                    </ul>
                	<div class="tab-content shop_info_tab">
                      <div class="tab-pane fade show active" id="Description" role="tabpanel" aria-labelledby="Description-tab">
                        <p><%= product.getDescription() %></p>
                      </div>
                      <div class="tab-pane fade" id="Additional-info" role="tabpanel" aria-labelledby="Additional-info-tab">
                        <table class="table table-bordered">
                            <tr>
                                <td>Weight</td>
                                <td>1 Kg</td>
                            </tr>
                            <tr>
                                <td>Color</td>
                                <td>Red, Green</td>
                            </tr>
                            <tr>
                                <td>Dimensions</td>
                                <td>15 × 10 × 20 cm</td>
                            </tr>
                        </table>
                      </div>
                      <div class="tab-pane fade" id="Reviews" role="tabpanel" aria-labelledby="Reviews-tab">
                        <div class="comments">
                            <h5>2 Review For Fresh Organic Strawberry</h5>
                            <ul class="list_none comment_list mt-4">
                                <li>
                                    <div class="comment_img">
                                        <img src="assets/images/client_img1.jpg" alt="client_img1"/>
                                    </div>
                                    <div class="comment_block">
                                        <div class="rating"><div class="product_rate" style="width:80%"></div></div>
                                        <p class="customer_meta">
                                            <span class="review_author">Alea Brooks</span>
                                            <span class="comment-date">March 5, 2018</span>
                                        </p>
                                        <div class="description">
                                            <p>Lorem Ipsumin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="comment_img">
                                        <img src="assets/images/client_img2.jpg" alt="client_img2"/>
                                    </div>
                                    <div class="comment_block">
                                        <div class="rating"><div class="product_rate" style="width:100%"></div></div>
                                        <p class="customer_meta">
                                            <span class="review_author">Grace Wong</span>
                                            <span class="comment-date">June 17, 2018</span>
                                        </p>
                                        <div class="description">
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="review_form field_form">
                            <h5>Add a review</h5>
                            <form class="row mt-3">
                                <div class="form-group col-12">
                                    <p class="star_rating">
                                        <span data-value="1"><i class="ion-android-star"></i></span>
                                        <span data-value="2"><i class="ion-android-star"></i></span> 
                                        <span data-value="3"><i class="ion-android-star"></i></span>
                                        <span data-value="4"><i class="ion-android-star"></i></span>
                                        <span data-value="5"><i class="ion-android-star"></i></span>
                                    </p>
                                </div>
                                <div class="form-group col-12">
                                    <textarea required="required" placeholder="Your review *" class="form-control" name="message" rows="4"></textarea>
                                </div>
                                <div class="form-group col-md-6">
                                    <input required="required" placeholder="Enter Name *" class="form-control" name="name" type="text">
                                 </div>
                                <div class="form-group col-md-6">
                                    <input required="required" placeholder="Enter Email *" class="form-control" name="email" type="email">
                                </div>
                               
                                <div class="form-group col-12">
                                    <button type="submit" class="btn btn-default" name="submit" value="Submit">Submit Review</button>
                                </div>
                            </form>
                        </div>
                      </div>
                	</div>
                </div>
            </div>
        </div>
        <div class="row">
        	<div class="col-12">
            	<div class="medium_divider clearfix"></div>
            </div>
        </div>
        <div class="row">
        	<div class="col-12">
            	<div class="heading_s2 m-0">
                	<h3>Releted Products</h3>
                </div>
                <div class="small_divider clearfix"></div>
            	<div class="product_slider carousel_slide4 owl-carousel owl-theme nav_top_right2" data-margin="30" data-nav="true" data-dots="false">
                	<div class="item">
                    	<div class="product">
                            <span class="pr_flash bg_green">Sale</span>
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img1.jpg" alt="product_img1"></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.html" class="popup-ajax"><i class="ti-eye"></i></a></li>
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
                    <div class="item">
                    	<div class="product">
                            <span class="pr_flash bg_orange">-10%</span>
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img2.jpg" alt="product_img2"></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.html" class="popup-ajax"><i class="ti-eye"></i></a></li>
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
                    <div class="item">
                    	<div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img3.jpg" alt="product_img3"></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.html" class="popup-ajax"><i class="ti-eye"></i></a></li>
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
                    <div class="item">
                    	<div class="product">
                            <span class="pr_flash bg_green">Sale</span>
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img4.jpg" alt="product_img4"></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.html" class="popup-ajax"><i class="ti-eye"></i></a></li>
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
                    <div class="item">
                    	<div class="product">
                            <div class="product_img">
                                <a href="#"><img src="assets/images/product_img5.jpg" alt="product_img5"></a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li><a href="#"><i class="ti-heart"></i></a></li>
                                        <li><a href="#"><i class="ti-shopping-cart"></i></a></li>
                                        <li><a href="http://bestwebcreator.com//organiq/demo/shop-quick-view.html" class="popup-ajax"><i class="ti-eye"></i></a></li>
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
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION SHOP DETAIL -->



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

<!-- Mirrored from bestwebcreator.com/organiq/demo/product-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:50:07 GMT -->
</html>