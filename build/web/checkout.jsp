<%-- 
    Document   : checkout
    Created on : Sep 28, 2021, 10:46:41 PM
    Author     : VODUCMINH
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="vegetablesshop.shopping.CartProduct"%>
<%@page import="vegetablesshop.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from bestwebcreator.com/organiq/demo/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:49:23 GMT -->
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="Anil z" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Organiq is clean and modern organic foods store template perfect for Organic Farm shop, organic foods, agriculture and niche foods store.">
<meta name="keywords" content="food shop, fresh, modern, organic farm, organic farm shop, organic food, organic shop, agriculture, agritourism, agrotourism, e-commerce, eco, eco products, farm, farming, food, health, organic, organic food, retail, shop, store">

<!-- SITE TITLE -->
<title>Checkout | Organiq - Organic Food HTML Template</title>
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
            		<h1>Checkout</h1>
                </div>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-center">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Shop</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
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
        	<div class="col-12">
            	<div class="small_divider clearfix"></div>
            </div>
        </div>
        <div class="row">
        	<div class="col-12">
            	<div class="heading_s2">
            		<h5>Your Orders</h5>
                </div>
                <div class="table-responsive order_table">
                	<table class="table table-bordered">
                    	<thead>
                        	<tr>
                                <th>Product</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                                <%
                                    Cart cart = (Cart)session.getAttribute("CART");
                                    double totalMoney = 0;
                                    if (cart != null) {
                                        for (CartProduct product : cart.getCart().values()) {
                                            totalMoney += product.getProductPrice() * product.getQuantity();
                                %>
                        	<tr>
                                    <td><%= product.getProductName() %> <span class="product-qty">x <%= product.getQuantity() %></span></td>
                                    <td>$ <%= product.getProductPrice() * product.getQuantity() %></td>
                                </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                        <tfoot>
                            <tr>
                            	<th>SubTotal</th>
                                <td class="product-subtotal">$<%= totalMoney %></td>
                            </tr>
                            <tr>
                            	<th>Shipping</th>
                                <td>Free Shipping</td>
                            </tr>
                        	<tr>
                            	<th>Total</th>
                                <td class="product-subtotal">$<%= totalMoney %></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
        	<div class="col-12">
            	<div class="small_divider clearfix"></div>
            </div>
        </div>
        <div class="row">
            
        </div>
    	<div class="row">
<!--            <div class="col-md-6">
            	<div class="toggle_info">
            		<span>Have a coupon? <a href="#coupon" data-toggle="collapse" class="collapsed" aria-expanded="false">Click here to enter your code</a></span>
                </div>
                <div class="panel-collapse collapse coupon_form mb-3" id="coupon">
                    <div class="panel-body">
                    	<p>If you have a coupon code, please apply it below.</p>
                        <div class="coupon field_form input-group">
                            <input type="text" value="" class="form-control" placeholder="Enter Coupon Code..">
                            <div class="input-group-append">
                                <button class="btn btn-default btn-sm" type="submit">Apply Coupon</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
        </div>
        <div class="row">
            <div class="col-md-12">
            	<div class="heading_s2 mt-5">
            		<h5>Billing Details</h5>
                </div>
                <form action="MainController" method="POST">
                	<div class="row">
                        <div class="form-group col-md-6">
                            <label>Full name <span class="required">*</span></label>
                            <input type="text" required class="form-control" name="fullName">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Address: <span class="required">*</span></label>
                            <input type="text" value="" class="form-control" name="address" required="">
                        </div>
                        <div class="form-group col-md-6">
                            <label>City / Town: <span class="required">*</span></label>
                            <input class="form-control" required type="text" name="city">
                        </div>
                        <div class="form-group col-md-6">
                            <label>State / County</label>
                            <input class="form-control" required type="text" name="state">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Phone <span class="required">*</span></label>
                            <input class="form-control" required type="text" name="phone" pattern="/^+84(7\d|8\d|9\d)\d{9}$/">
                        </div>
                    </div>
                    <div class="form-row">
                    	<div class="form-group col-md-12">
                        	<label>Order notes</label>
                                <textarea name="note" rows="5" class="form-control"></textarea>
                        </div>
                    </div>
                    <%
                        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
                        LocalDateTime now = LocalDateTime.now();
                        String order_time = dtf.format(now);
                    %>
                    <input type="hidden" name="order_time" value="<%= order_time %>">
                    <div class="col-12 payment_method_custom">
                        <div class="payment_method">
                            <div class="custome-radio">
                                <input class="form-check-input" type="radio" name="payment_option" id="exampleRadios4" value="check" checked="">
                                <label class="form-check-label" for="exampleRadios4">Check Payment - COD</label>
                                <p data-method="option4" class="payment-text">Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                            </div>
                            <div class="custome-radio">
                                <input class="form-check-input" type="radio" name="payment_option" id="exampleRadios5" value="vnpay">
                                <label class="form-check-label" for="exampleRadios5">Checkout with VN Pay - Discount 5%</label>
                                <p data-method="option5" class="payment-text">Pay via VN Pay; you can pay with your credit card if you don't have a VN Pay account.</p>
                            </div>
                        </div>
                </div>
                    <%
                        if (cart == null || cart.getCart().size() == 0) {
                    %>
                    <button style="cursor: not-allowed;" disabled="" type="submit" name="action" value="GetInfoCheckout" class="btn btn-default">Place Order</button>
                    <%        
                        }
                        else {
                        %>
                        <button type="submit" name="action" value="GetInfoCheckout" class="btn btn-default">Place Order</button>
                    <%
                        }
                    %>
                    
                </form>
            </div>
        </div>
    </div>
</section>
<!-- END SECTION SHOP DETAIL -->

<jsp:include page="Footer.jsp"/>

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

<!-- Mirrored from bestwebcreator.com/organiq/demo/checkout.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Aug 2021 07:49:23 GMT -->
</html>
