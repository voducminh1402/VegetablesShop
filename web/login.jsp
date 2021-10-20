<%-- 
    Document   : login
    Created on : Oct 3, 2021, 11:13:33 AM
    Author     : VODUCMINH
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="-1" />
        <title>Login Page</title>
        <link rel="stylesheet" href="https://unpkg.com/polipop/dist/css/polipop.core.min.css"/>
        <link rel="stylesheet" href="https://unpkg.com/polipop/dist/css/polipop.default.min.css"/>
        <link rel="stylesheet" href="./login_assets/css/base.css">
        <link rel="stylesheet" href="./login_assets/css/style.css">
        <link rel="stylesheet" href="./login_assets/css/responsive.css"> 
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Raleway&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">   
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/font/themify-icons-font/themify-icons/themify-icons.css"> 
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Didact+Gothic&family=Nunito+Sans:wght@900&display=swap" rel="stylesheet">
        <link rel="icon" href="./assets/img/title-logo.png" type="image/x-icon">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </head>
<body>
    <div class="all-container">
        <div class="container-wrap d-flex">
           <div class="login-header text-center">
               <h3>LOGIN</h3>
               <form action="MainController" method="POST">
                <div class="login-form">
                    <div class="login-form-email">
                     <i class="login-form-email-icon fas fa-portrait"></i>
                     <input class="login-form-email-input" type="text" name="userID" placeholder="User ID">
                    </div>
                    <div class="login-form-email">
                        <i class="login-form-email-icon fas fa-lock "></i>
                        <input class="login-form-email-input" type="password" name="password" placeholder="Password">
                    </div>
                    <div class="login-form-button">
                        <%
                            String pageValue = request.getParameter("pageValue");
                            
                        if ("checkout".equals(pageValue)) {
                        %>
                            <input type="hidden" name="pageValue" value="<%= pageValue %>">
                            <button type="submit" name="action" value="Login">LOGIN</button>
                        <%        
                        }
                        else {
                        %>
                            <button type="submit" name="action" value="Login">LOGIN</button>
                        <%
                            }
                        %>
                    </div>
                </div>
               </form>
<!--               <div class="login-form-forgot">
                   <a><span>Forgot </span>Username/Password?</a>
               </div>-->
                <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/VegetablesShop/login-google&response_type=code&client_id=228319326160-mu93gh5bmia8f58sketkt5tg8hq47d8a.apps.googleusercontent.com&approval_prompt=force" class="login-with-google-btn" >
                        Sign in with Google
                    </a>
               <div class="login-form-account">
                   <a href="signup.html">Create Your Account <span class="ti-arrow-right"></span></a>
               </div>
           </div>
        </div>
    </div>

    <div class="loader-wrapper">
        <span class="loader"><span class="loader-inner"></span></span>
    </div>
    <script src="https://unpkg.com/polipop/dist/polipop.min.js"></script>
    <script src="./login_assets/js/loader.js"></script>
    <script>
        var polipop = new Polipop('mypolipop', {
            layout: 'popups',
            insert: 'before',
            pool: 5,
            sticky: false,
            position: 'bottom-right',
            life: 2500
        });
        
        <c:if test="${requestScope.SIGNUP_STATUS != null}">
            polipop.add({
            content: "${requestScope.SIGNUP_STATUS}",
            title: 'Successfully!',
            type: 'success',
        });
        </c:if>
        
        <c:if test="${sessionScope.MESSAGE_ERROR != null}">
            polipop.add({
            content: "${sessionScope.MESSAGE_ERROR}",
            title: 'Login Fail!',
            type: 'error',
        });
        </c:if>
        <c:remove var="MESSAGE_ERROR" scope="session" />
    </script>
</body>
</html>