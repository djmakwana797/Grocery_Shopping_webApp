<%-- 
    Document   : register
    Created on : 13 Feb, 2021, 6:48:17 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <link rel="shortcut icon" href="img/fav.png">

        <meta charset="UTF-8">

        <title>Register</title>

        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>

        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">

                        <a class="navbar-brand logo" href="index.html">Online Kirana Store</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
                                <li class="nav-item"><a class="nav-link" href="dashboard.jsp">Dashboard</a></li>
                                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item"><a href="#" class="cart"><span class="lnr lnr-cart"></span></a></li>
                                
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </header>


        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Register</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="register.jsp">Registration</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>


        <section class="login_box_area section_gap">
            <div class="container">
                <div class="row" style="justify-content: center;"> 
                    <div class="col-lg-6">
                        <div class="login_form_inner align-items-center">
                            <h3>Registration</h3>
                            <div style="padding-left:60px;padding-right: 60px;" class="col-sm-9 col-lg-12 container">
                                <%@include file="message.jsp" %>
                            </div>
                            <form class="row login_form" action="register_data.jsp" method="post" id="reg_form">
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userName" name="userName" placeholder="Username"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'">
                                    <p id="p1"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="Email Address"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
                                    <p id="p2"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="Password"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
                                    <p id="p3"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userPhone" name="userPhone" placeholder="Phone number"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone number'">
                                    <p id="p4"></p>
                                </div>
                                <div class="form-select" id="default-select">
                                    <select style="margin-bottom: 20px;" name="user_type" id="user_type">
                                        <option value="none">Select user type</option>
                                        <option value="Customer">Customer</option>
                                        <option value="Delivery boy">Delivery boy</option>
                                        <option value="Shopkeeper">Shopkeeper</option>
                                    </select>
                                    <p id="p5"></p>
                                </div>
                                <br></br>
                                <div style="margin-top: 20px;" class="col-md-12 form-group">
                                    <input type="text" class="form-control" id="userAddress" name="userAddress" placeholder="Address"
                                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'">
                                    <p id="p6"></p>
                                </div>
                                <div class="col-md-12 form-group">
                                    <button type="submit" value="submit" class="primary-btn">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp"/>
        
        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="../../../cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
                integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/script.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
                            window.dataLayer = window.dataLayer || [];
                            function gtag() {
                                dataLayer.push(arguments);
                            }
                            gtag('js', new Date());
                            gtag('config', 'UA-23581568-13');
        </script>
    </body>

    <!-- Mirrored from preview.colorlib.com/theme/karma/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Mar 2021 05:34:31 GMT -->

</html>