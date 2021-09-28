<%-- 
    Document   : Header
    Created on : Sep 28, 2021, 10:14:09 PM
    Author     : VODUCMINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- LOADER -->
<div id="preloader">
    <div class="line-scale">
    	<div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
    </div>
</div>
<!-- END LOADER --> 

<!-- START HEADER -->
<header class="header_wrap dark_skin main_menu_uppercase">
	<div class="top-header bg_gray">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-7">
                	<ul class="contact_detail border_list list_none text-center text-md-left">
                        <li><a href="#"><i class="ti-mobile"></i> <span>+123 456 7890</span></a></li>
                        <li><a href="#"><i class="ti-email"></i> <span><span class="__cf_email__" data-cfemail="264f484049665f4953544b474f4a0845494b">[email&#160;protected]</span></span></a></li>
                    </ul>
                </div>
                <div class="col-md-5">
                    <ul class="header_list border_list list_none header_dropdown text-center text-md-right">
                        <li>
                            <div class="custome_dropdown">
                                <select name="countries" class="custome_select">
                                    <option value='en' data-title="English">English</option>
                                    <option value='fn' data-title="France">France</option>
                                    <option value='us' data-title="United States">United States</option>
                                </select>
                            </div>
                        </li>
                        <li class="dropdown">
                          <a class="dropdown-toggle" href="#" data-toggle="dropdown">My Account</a>
                          <div class="dropdown-menu shadow dropdown-menu-right">
                            <ul>
                                <li><a class="dropdown-item" href="my-account.jsp">My account</a></li>
                                <li><a class="dropdown-item" href="wishlist.jsp">Wishlist</a></li>
                                <li><a class="dropdown-item" href="checkout.jsp">Checkout</a></li>
                            </ul>
                          </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <nav class="navbar navbar-expand-lg"> 
            <a class="navbar-brand" href="index.jsp">
                <img class="logo_light" src="assets/images/logo_white.png" alt="logo" />
                <img class="logo_dark" src="assets/images/logo_dark.png" alt="logo" />
                <img class="logo_default" src="assets/images/logo_dark.png" alt="logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="ion-android-menu"></span> </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
				<ul class="navbar-nav">
                    <li class="dropdown">
                        <a class="dropdown-toggle nav-link active" href="index.jsp" data-toggle="dropdown">Home</a>
                    </li>
                    <li>
                        <a class="nav-link" href="about.jsp">About Us</a>
                    </li>
                    <li class="dropdown dropdown-mega-menu">
                        <a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown">Shop</a>
                        <div class="dropdown-menu">
                            <ul class="mega-menu d-lg-flex">
                                <li class="mega-menu-col col-lg-3">
                                    <ul> 
                                        <li class="dropdown-header">Extra</li> 
                                        <li><a class="dropdown-item nav-link nav_item" href="cart.jsp">Cart</a></li>
                                        <li><a class="dropdown-item nav-link nav_item" href="checkout.jsp">Checkout</a></li>
                                        <li><a class="dropdown-item nav-link nav_item" href="wishlist.jsp">Wishlist</a></li> 
                                        <li><a class="dropdown-item nav-link nav_item" href="my-account.jsp">My Account</a></li> 
                                    </ul>
                                </li>
                                <li class="mega-menu-col col-lg-3">
                                    <div class="ads_banner">
                                    	<a href="#"><img src="assets/images/mega_menu_ads.jpg" alt="mega_menu_ads"/></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown">Blog</a>
                        <div class="dropdown-menu">
                            <ul>
                                <li>
                                    <a class="dropdown-item nav-link nav_item dropdown-toggler" href="#">Blog Layout</a>
                                    <div class="dropdown-menu">
                                        <ul> 
                                        	<li><a class="dropdown-item nav-link nav_item" href="blog-standard-fullwidth.jsp">Blog Standard Fullwidth</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-standard-left-sidebar.jsp">Blog Standard Left Sidebar</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-standard-right-sidebar.jsp">Blog Standard Right Sidebar</a></li> 
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-three-columns.jsp">Blog 3 Columns </a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-four-columns.jsp">Blog 4 Columns</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a class="dropdown-item nav-link nav_item dropdown-toggler" href="#">Blog Masonry</a>
                                    <div class="dropdown-menu">
                                        <ul> 
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-masonry-three-columns.jsp">Masonry 3 Columns</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-masonry-four-columns.jsp">Masonry 4 Columns</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-masonry-three-columns-wide.jsp">Masonry 3 Columns Wide</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-masonry-four-columns-wide.jsp">Masonry 4 Columns Wide</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a class="dropdown-item nav-link nav_item dropdown-toggler" href="#">Blog List</a>
                                    <div class="dropdown-menu">
                                        <ul> 
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-list-left-sidebar.jsp">Left Sidebar</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-list-right-sidebar.jsp">Right Sidabar</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a class="dropdown-item nav-link nav_item dropdown-toggler" href="#">Sinlge Post</a>
                                    <div class="dropdown-menu">
                                        <ul> 
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-single.jsp">Default</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-single-left-sidebar.jsp">Left Sidebar</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-single-right-sidebar.jsp">Right Sidebar</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-single-slider.jsp">Slider Post</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-single-video.jsp">Video post</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="blog-single-audio.jsp">Audio Post</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle nav-link" href="#" data-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu">
                            <ul> 
                                <li><a class="dropdown-item nav-link nav_item" href="team.jsp">Our Team</a></li>
                                <li><a class="dropdown-item nav-link nav_item dropdown-toggler" href="#">Gallery</a>
                                	<div class="dropdown-menu">
                                        <ul> 
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-three-columns.jsp">Grid 3 Columns</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-four-columns.jsp">Grid 4 Columns</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-three-columns-wide.jsp">Grid 3 Columns Wide</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-four-columns-wide.jsp">Grid 4 Columns Wide</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-masonry-three-columns.jsp">Masonry 3 Columns</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-masonry-four-columns.jsp">Masonry 4 Columns</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-masonry-three-columns-wide.jsp">Masonry 3 Columns Wide</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-masonry-four-columns-wide.jsp">Masonry 4 Columns Wide</a></li>
                                            <li><a class="dropdown-item nav-link nav_item" href="gallery-detail.jsp">Gallery Detail</a></li>
                                        </ul>
                                    </div>
                                </li>  
                                <li><a class="dropdown-item nav-link nav_item" href="faq.jsp">FAQ</a></li> 
                                <li><a class="dropdown-item nav-link nav_item" href="coming-soon.jsp">Coming Soon</a></li>
                                <li><a class="dropdown-item nav-link nav_item" href="404.jsp">404 Page</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                </ul>
            </div>
            <ul class="navbar-nav attr-nav align-items-center">
                <li><a href="javascript:void(0);" class="nav-link search_trigger"><i class="ion-ios-search-strong"></i></a>
                    <div class="search-overlay">
                        <div class="search_wrap">
                            <form>
                                <div class="rounded_input">
                                	<input type="text" placeholder="Search" class="form-control" id="search_input">
                                </div>
                                <button type="submit" class="search_icon"><i class="fas fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </li>
                <li class="dropdown cart_wrap">
                	<a class="nav-link" href="#" data-toggle="dropdown"><i class="ion-bag"></i><span class="cart_count">2</span></a>
                        <div class="cart_box dropdown-menu dropdown-menu-right">
                            <ul class="cart_list">
                                <li>
                                    <a href="#" class="item_remove"><i class="ion-close"></i></a>
                                    <a href="#"><img src="assets/images/cart_thamb1.jpg" alt="cart_thumb1">Fresh Organic Strawberry</a>
                                    <span class="cart_quantity"> 1 x <span class="cart_amount"> <span class="price_symbole">$</span>78.00</span></span>
                                </li>
                                <li>
                                    <a href="#" class="item_remove"><i class="ion-close"></i></a>
                                    <a href="#"><img src="assets/images/cart_thamb2.jpg" alt="cart_thumb2">Fresh Organic Grapes</a>
                                    <span class="cart_quantity"> 1 x <span class="cart_amount"> <span class="price_symbole">$</span>81.00</span></span>
                                </li>
                            </ul>
                        <div class="cart_footer">
                            <p class="cart_total">Total: <span class="cart_amount"> <span class="price_symbole">$</span>159.00</span></p>
                            <p class="cart_buttons"><a href="cart.jsp" class="btn btn-default btn-radius view-cart">View Cart</a><a href="checkout.jsp" class="btn btn-dark btn-radius checkout">Checkout</a></p>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
</header>
<!-- END HEADER --> 
