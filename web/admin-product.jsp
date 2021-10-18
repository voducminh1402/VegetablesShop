<%-- 
    Document   : admin-product
    Created on : Sep 7, 2021, 8:38:18 AM
    Author     : VODUCMINH
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="vegetablesshop.products.ProductDTO"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="referrer" content="no-referrer">
        <title>Admin Product Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="./assets/css/style-admin.css">
        <script src='https://cdn.tiny.cloud/1/m862mtwmvofelufcxf6kpr7rr30u4mh13bb09ks2g0xg8gdf/tinymce/5/tinymce.min.js' referrerpolicy="origin">
        </script>
        <script>
          tinymce.init({
            selector: '.text-area-des',
            menubar: false
          });
          tinyMCE.activeEditor.setContent('<span>some</span> html');
        </script>
        <link rel="stylesheet" href="./assets/css/custombootstrap.css"/>
        
        <style>
            #editEmployeeModal{
                opacity:1 !important;
                overflow: auto!important
            }
            
            #addEmployeeModal{
                opacity:1 !important;
                overflow: auto!important
            }
        </style>
        
    </head>
    <body>
        <nav class="navbar navbar-expand-custom navbar-mainbg">
            <a class="navbar-brand navbar-logo" href="#">Organiq Admin Dashboard</a>
            <button class="navbar-toggler" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars text-white"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <div class="hori-selector"><div class="left"></div><div class="right"></div></div>
                    <li class="nav-item">
                        <a class="nav-link" href="admin.jsp"><i class="far fa-address-book"></i>Manage User</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="admin-product.jsp"><i class="fas fa-luggage-cart"></i></i>Manage Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0);"><i class="far fa-clone"></i>Components</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0);"><i class="far fa-calendar-alt"></i>Calendar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0);"><i class="far fa-chart-bar"></i>Charts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0);"><i class="far fa-copy"></i>Documents</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="MainController?action=Logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-xl mt-5">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Product</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#logoutEmployeeModal" class="btn btn-primary" data-toggle="modal"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></a>
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Product Name</th>
                                <th>Category Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                       
                        <tbody>
                            <c:if test="${requestScope.ALL_PRODUCT_LIST == null || requestScope.CATEGORY_LIST == null}">
                                <c:redirect url="MainController?action=GetAllProduct"/>
                            </c:if>
                            
                            <c:forEach items="${requestScope.ALL_PRODUCT_LIST}" var="product" varStatus="counter">
                            <tr>
                                <td>${counter.count}</td>
                                <td>${product.productName}</td>
                                <td>${product.categoryName}</td>
                                <td>${product.productPrice}</td>
                                <td>${product.quantity}</td>
                                <td>
                                    <span class="badge badge-success">${product.availableName}</span>
                                </td>
                                <td>
                                    <a href="#editEmployeeModal" class="edit edit-product" 
                                       data-id="${product.productID}" 
                                       data-name="${product.productName}"
                                       data-category="${product.categoryName}"
                                       data-price="${product.productPrice}"
                                       data-description="${product.description}"
                                       data-image="${product.productImage}"
                                       data-quantity="${product.quantity}"
                                       data-available="${product.availableName}"
                                       data-date="${product.createDate}"
                                       data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="#deleteEmployeeModal" data-id="${product.productID}" class="delete delete-product" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                            </c:forEach>
                          
                        </tbody>
                     
                    </table>
                    <div class="clearfix">
                        <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                        <ul class="pagination">
                            <li class="page-item disabled"><a href="#">Previous</a></li>
                            <li class="page-item"><a href="#" class="page-link">1</a></li>
                            <li class="page-item"><a href="#" class="page-link">2</a></li>
                            <li class="page-item active"><a href="#" class="page-link">3</a></li>
                            <li class="page-item"><a href="#" class="page-link">4</a></li>
                            <li class="page-item"><a href="#" class="page-link">5</a></li>
                            <li class="page-item"><a href="#" class="page-link">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>        
        </div>
        <!-- Add Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MainController"  method="POST" accept-charset="UTF-8">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Category Name</label>
                                <select name="categoryID" class="form-control" id="exampleFormControlSelect1">
                                    <c:forEach items="${requestScope.CATEGORY_LIST}" var="cate">
                                        <option id="category-option" value="${cate.categoryID}">${cate.categoryName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Product Name</label>
                                <input name="productName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input step="0.01" name="productPrice" min="0" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea  name="description" rows="10" type="number" class="form-control text-area-des"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Product Image</label>
<!--                                <input id="product-image" name="image" type="text" class="form-control" required>-->
                                <input type="file" class="custom-file-input">
                                <input name="productImage" id="product-image" type="hidden" value="product-image">
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input  name="quantity" min="1" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Available Status</label>
                                <select name="availableID" class="form-control" id="exampleFormControlSelect1">
                                  <option value="1">Available</option>
                                  <option value="2">Not Available</option>
                                  <option value="3">Coming Soon</option>
                                  <option value="4">Sale</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <%
                                    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
                                    LocalDateTime now = LocalDateTime.now();
                                    String currentDate = dtf.format(now);
                                    
                                    if (currentDate != null) {
                                %>
                                <input id="date" name="createDate" type="text" value="<%= currentDate %>" class="form-control" readonly>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" name="action" value="AddProduct">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade custom-modal" style="overflow: auto !important">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MainController"  method="POST" accept-charset="UTF-8">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Product ID</label>
                                <input id="product-id" name="productID" type="text" class="form-control" readonly="">
                            </div>
                            <div class="form-group">
                                <label>Category Name</label>
                                <select name="categoryID" class="form-control" id="exampleFormControlSelect1">
                                    <c:forEach items="${requestScope.CATEGORY_LIST}" var="cate">
                                        <option id="category-option" value="${cate.categoryID}">${cate.categoryName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Product Name</label>
                                <input id="product-name" name="productName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input id="product-price" step="0.01" name="productPrice" min="0" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea id="product-description" name="description" rows="10" type="number" class="form-control text-area-des"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Product Image</label>
<!--                                <input id="product-image" name="image" type="text" class="form-control" required>-->
                                <input type="file" class="custom-file-input">
                                <input name="productImage" type="hidden" id="product-image" value="product-image">
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input id="product-quantity" name="quantity" min="1" type="number" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Available Status</label>
                                <select name="availableID" class="form-control" id="exampleFormControlSelect1">
                                  <option value="1">Available</option>
                                  <option value="2">Not Available</option>
                                  <option value="3">Coming Soon</option>
                                  <option value="4">Sale</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <input id="date" name="createDate" type="text" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" name="action" value="EditProduct">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Logout Modal HTML -->
        <div id="logoutEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MainController">
                        <div class="modal-header">						
                            <h4 class="modal-title">Logout</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to logout?</p>
                            <!--<p class="text-warning"><small>This action cannot be undone.</small></p>-->
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" name="action" value="Logout">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End Logout Modal HTML -->
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MainController" method="POST">
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete this product?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="hidden" name="delete-id" id="delete-id">
                            <input type="submit" class="btn btn-danger" name="action" value="DeleteProduct">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End Logout Modal HTML -->
        <div id="addUserErrorModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Error</h4>
                        </div>
                        <div class="modal-body">					
                            <p>Error when adding new user</p>
                            <p class="text-warning">
                                <small>This action cannot be undone.</small>
                            </p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <div class="modal hide fade" id="myModal">
            <div class="modal-header">
                <a class="close" data-dismiss="modal">×</a>
                <h3>Modal header</h3>
            </div>
            <div class="modal-body">
                <p>One fine body…</p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn">Close</a>
                <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>
      
      
<!--        popup  
        <div class="bts-popup" role="alert">
            <div class="bts-popup-container">
              <img src="https://www.trend-transformations.com/wp-content/themes/trend-transformations/library/images/trend-logo-white.svg" alt="" width="50%" />
                <p></p>
                <div class="bts-popup-button"></div>
                <a href="#0" class="bts-popup-close img-replace">
                    <i class="fas fa-times"></i>
                </a>
            </div>
        </div>
  
        end popup-->

        <script src="./assets/js/app-admin.js"></script>
        <script src="https://dl.dropboxusercontent.com/s/nvklmhq3kw4j9pq/jquerylasted.js?dl=0"></script>
        <script>
            // ---------Responsive-navbar-active-animation-----------
            function test(){
                var tabsNewAnim = $('#navbarSupportedContent');
                var selectorNewAnim = $('#navbarSupportedContent').find('li').length;
                var activeItemNewAnim = tabsNewAnim.find('.active');
                var activeWidthNewAnimHeight = activeItemNewAnim.innerHeight();
                var activeWidthNewAnimWidth = activeItemNewAnim.innerWidth();
                var itemPosNewAnimTop = activeItemNewAnim.position();
                var itemPosNewAnimLeft = activeItemNewAnim.position();
                $(".hori-selector").css({
                        "top":itemPosNewAnimTop.top + "px", 
                        "left":itemPosNewAnimLeft.left + "px",
                        "height": activeWidthNewAnimHeight + "px",
                        "width": activeWidthNewAnimWidth + "px"
                });
                $("#navbarSupportedContent").on("click","li",function(e){
                        $('#navbarSupportedContent ul li').removeClass("active");
                        $(this).addClass('active');
                        var activeWidthNewAnimHeight = $(this).innerHeight();
                        var activeWidthNewAnimWidth = $(this).innerWidth();
                        var itemPosNewAnimTop = $(this).position();
                        var itemPosNewAnimLeft = $(this).position();
                        $(".hori-selector").css({
                                "top":itemPosNewAnimTop.top + "px", 
                                "left":itemPosNewAnimLeft.left + "px",
                                "height": activeWidthNewAnimHeight + "px",
                                "width": activeWidthNewAnimWidth + "px"
                        });
                });
            }
            $(document).ready(function(){
                    setTimeout(function(){ test(); });
            });
            $(window).on('resize', function(){
                    setTimeout(function(){ test(); }, 500);
            });
            $(".navbar-toggler").click(function(){
                    $(".navbar-collapse").slideToggle(300);
                    setTimeout(function(){ test(); });
            });



            // --------------add active class-on another-page move----------
            jQuery(document).ready(function($){
                    // Get current path and find target link
                    var path = window.location.pathname.split("/").pop();

                    // Account for home page with empty path
                    if ( path === '' ) {
                            path = 'index.html';
                    }

                    var target = $('#navbarSupportedContent ul li a[href="'+path+'"]');
                    // Add active class to target link
                    target.parent().addClass('active');
            });
            
            console.log(window.location.href)
            
            $('document').ready(function () {
            $('input[type=file]').on('change', function () {
                var $files = $(this).get(0).files;
                if ($files.length) {
                if ($files[0].size > $(this).data('max-size') * 1024) {
                    console.log('Vui lòng chọn file có dung lượng nhỏ hơn!');
                    return false;
                }

                console.log('Đang upload hình ảnh lên imgur...');
                var apiUrl = 'https://api.imgur.com/3/image';
                var apiKey = 'dcd0ee22791c49d';
                var settings = {
                    async: false,
                    crossDomain: true,
                    processData: false,
                    contentType: false,
                    type: 'POST',
                    url: apiUrl,
                    headers: {
                    Authorization: 'Client-ID ' + apiKey,
                    Accept: 'application/json',
                    },
                    mimeType: 'multipart/form-data',
                };
                var formData = new FormData();
                formData.append('image', $files[0]);
                settings.data = formData;
                $.ajax(settings).done(function (response) {
                    console.log(response);
                    var obj = JSON.parse(response);
                    document.getElementById("product-image").value = obj.data.link;
                });
                }

            });
        });
        </script>
        
    </body>
</html>
