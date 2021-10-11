<%-- 
    Document   : admin
    Created on : Sep 3, 2021, 1:56:16 PM
    Author     : VODUCMINH
--%>

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
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>User</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#logoutEmployeeModal" class="btn btn-primary" data-toggle="modal"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></a>
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>
                            </div>
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
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                </td>
                                <td>
                                   
                                        <span class="badge badge-success">Active</span>
                                    
                                        <span class="badge badge-secondary">Disable</span>
                                   
                                    
                                </td>
                                <td>
                                    <a href="#editEmployeeModal" class="edit" 
                                       data-id="" 
                                       data-name=""
                                       data-address=""
                                       data-phone=""
                                       data-role=""
                                       data-email=""
                                       data-password=""
                                       data-status=""
                                       data-date=""
                                       data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="#deleteEmployeeModal" data-id="" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                            
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
                    <form action="MainController" method="POST" accept-charset="UTF-8">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>User ID</label>
                                <input name="userID" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Full Name</label>
                                <input name="fullName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea name="address" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input name="phoneNumber" type="tel" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input name="email" type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input name="password" type="password" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <select name="roleID" class="form-control" id="exampleFormControlSelect1">
                                  <option value="US">User</option>
                                  <option value="AD">Admin</option>
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
                                <input id="date" name="createDate" type="text" class="form-control" value="<%= currentDate %>" readonly>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" name="action" value="Add User">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MainController" accept-charset="UTF-8">
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
                                <input id="name" name="fullName" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea id="address" name="address" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input id="phone" name="phoneNumber" type="tel" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input id="email" name="email" type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input id="password" name="password" type="password" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <select name="roleID" class="form-control" id="exampleFormControlSelect1">
                                  <option value="US">User</option>
                                  <option value="AD">Admin</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <select name="status" class="form-control" id="exampleFormControlSelect1">
                                  <option value="1">Active</option>
                                  <option value="0">Disable</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <%
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
                            <input type="submit" class="btn btn-success" name="action" value="Edit User">
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
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="hidden" name="delete-id" id="delete-id">
                            <input type="submit" class="btn btn-danger" name="action" value="Delete User">
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
      
        <!--end popup-->
        <script src="./assets/js/app-admin.js"></script>
    </body>
</html>