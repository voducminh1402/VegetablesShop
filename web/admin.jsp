<%-- 
    Document   : admin
    Created on : Sep 3, 2021, 1:56:16 PM
    Author     : VODUCMINH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Page</title>
        <link rel="stylesheet" href="https://unpkg.com/polipop/dist/css/polipop.core.min.css"/>
        <link rel="stylesheet" href="https://unpkg.com/polipop/dist/css/polipop.default.min.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="./assets/css/style-admin.css">

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
                    <li class="nav-item active">
                        <a class="nav-link" href="admin.jsp"><i class="far fa-address-book"></i>Manage User</a>
                    </li>
                    <li class="nav-item">
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
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2 style="color: rgb(81,97,206)">Manage <b>User</b></h2>
                            </div>
<!--                            <div class="col-sm-6">
                                <a href="#logoutEmployeeModal" class="btn btn-primary" data-toggle="modal"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></a>
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>
                            </div>-->
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:if test="${requestScope.ACTIVE_USER_LIST == null}">
                            <c:redirect url="MainController?action=GetActiveUser"></c:redirect>
                        </c:if>
                            
                        <c:forEach items="${requestScope.ACTIVE_USER_LIST}" var="user" varStatus="counter">
                            <tr>
                                <td>${counter.count}</td>
                                <td>${user.userName}</td>
                                <td>${user.email}</td>
                                <td>${user.userPhone}</td>
                                <td>
                                    <c:if test="${user.roleID == 1}">
                                        <c:out value="Admin"></c:out>
                                    </c:if>
                                    <c:if test="${user.roleID != 1}">
                                        <c:out value="User"></c:out>
                                    </c:if>
                                </td>
                                <td>
                                    <c:if test="${user.userStatus == 'Active'}">
                                        <span class="badge badge-success">Active</span>
                                    </c:if>
                                    <c:if test="${user.userStatus == 'Deleted'}">
                                        <span class="badge badge-secondary">Deleted</span>
                                    </c:if>
                                </td>
                                <td>
                                    <a href="#editEmployeeModal" class="edit" 
                                       data-id="${user.userID}" 
                                       data-name="${user.userName}"
                                       data-address="${user.userAddress}"
                                       data-phone="${user.userPhone}"
                                       data-role="${user.roleID}"
                                       data-email="${user.email}"
                                       data-password="${user.password}"
                                       data-status="${user.userStatus}"
                                       data-date="${user.createDate}"
                                       data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="#deleteEmployeeModal" data-id="${user.userID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
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
            
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MainController" method="POST" accept-charset="UTF-8">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>User ID</label>
                                <input id="id" name="userID" type="text" class="form-control" value="a" readonly="">
                            </div>
                            <div class="form-group">
                                <label>Full Name</label>
                                <input id="name" name="userName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea id="address" name="userAddress" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input id="phone" name="userPhone" type="tel" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input id="email" name="email" type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input id="password" name="password" type="password" class="form-control" readonly="">
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <select name="roleID" class="form-control" id="exampleFormControlSelect1">
                                  <option value="2">User</option>
                                  <option value="1">Admin</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <select name="userStatus" class="form-control" id="exampleFormControlSelect1">
                                  <option value="1">Active</option>
                                  <option value="0">Deleted</option>
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
                                <input id="date" name="createDate" type="text" class="form-control" readonly>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" name="action" value="EditUser">
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
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
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
                            <p>Are you sure you want to delete?</p>
                            <!--<p class="text-warning"><small>This action cannot be undone.</small></p>-->
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="hidden" name="userID" id="delete-id">
                            <input type="submit" class="btn btn-danger" name="action" value="DeleteUser">
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
      
        
        <!--popup-->  
<!--        <div class="bts-popup" role="alert">
            <div class="bts-popup-container">
              <img src="https://www.trend-transformations.com/wp-content/themes/trend-transformations/library/images/trend-logo-white.svg" alt="" width="50%" />
                <p></p>
                <div class="bts-popup-button"></div>
                <a href="#0" class="bts-popup-close img-replace">
                    <i class="fas fa-times"></i>
                </a>
            </div>
        </div>-->
      
        <!--end popup-->
        <script src="https://unpkg.com/polipop/dist/polipop.min.js"></script>
        <script src="./assets/js/app-admin.js"></script>
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
            
            var polipop = new Polipop('mypolipop', {
                layout: 'popups',
                insert: 'before',
                pool: 5,
                sticky: false,
                position: 'bottom-right',
                life: 2000
            });
            
            <c:if test="${sessionScope.ERROR_MESSAGE != null}">
                polipop.add({
                    content: "${sessionScope.ERROR_MESSAGE}",
                    title: 'Delete User Error!',
                    type: 'error'
                });
            </c:if>
            <c:remove var="ERROR_MESSAGE" scope="session" />
        </script>
    </body>
</html>