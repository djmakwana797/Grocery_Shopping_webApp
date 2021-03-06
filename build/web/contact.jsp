<%-- 
    Document   : register
    Created on : 13 Feb, 2021, 6:48:17 PM
    Author     : Dilip J Sarvaiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    if (email != null) {
%>
<!--<div style="margin-top: 140px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4 class="text-white">Welcome  <strong><%=email%></strong></h4>
        </div>
    </div>
</div>-->
<%
    } else {
        httpSession.setAttribute("not_login_checkout", "You are not logged in!! ");
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/ion.rangeSlider.css" />
        <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/main.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Contact us</title>
        <style>
            .col-md-12{
                text-align: left;
            }
            .login_form_inner
            {
                padding-top: 100px;
            }
            .form-select .nice-select
            {
                padding-left: 12px;
            }
            .alert
            {
                font-size: 16px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="dashboardNavbar/user_nav.jsp"/>
        <section class="banner-area organic-breadcrumb">
                <div class="container">
                    <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                        <div class="col-first">
                            <h1>Contact us</h1>
                            <nav class="d-flex align-items-center">
                                <a href="index.jsp">Home<span class="lnr lnr-arrow-right"></span></a>
                                <a href="dashboard.jsp">Dashboard</a>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
        <div class="container" style="margin-top: 10px;margin-bottom: 20px;">
            <section class="login_box_area section_gap">
                <div class="container">
                    <div class="row" style="justify-content: center;"> 
                        <div class="col-lg-6">
                            <div class="login_form_inner">
                                <h3>Contact Us</h3>
                                <div style="padding-left:60px;padding-right: 60px;" class="col-sm-9 col-lg-12 container">
                                <%
                                    String message = (String) session.getAttribute("message");
                                    if (message != null) {
                                %>
                                <div class="alert alert-success alert-dismissible fade show">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong><%=message%></strong>
                                </div>
                                <%
                                        session.removeAttribute("message");
                                    }%>
                                </div>
                                <form class="row login_form" action="contact_data.jsp"  method="post" id="contact_form" class="form-horizontal" role="form">

                                    <input type="hidden" name="email" value="<%=email%>" />

                                    <div class="col-md-12 form-group">
                                        <label for="subject" class="control-label">Subject<span style="color: red;">*</span></label>
                                        <input type="subject" name="subject" id="subject" placeholder="Subject" class="form-control">
                                        <p id="p1"></p>
                                    </div>

                                    <div class="col-md-12 form-group">
                                        <label for="userAddress" class="control-label">Message<span style="color: red;">*</span></label>
                                        <textarea type="text"  name="message" rows="3" id="message" reuired placeholder="Enter your message" class="form-control"></textarea>
                                        <p id="p2"></p>
                                    </div>
                                    <%
                                        String user_type = (String) session.getAttribute("user_type");
                                    %>
                                    <div class="col-md-12 form-group">
                                        <div class="form-select" id="default-select" style="margin-bottom: 20px">
                                            <label for="userType" class="control-label">User type<span style="color: red;">*</span></label>
                                            <select name="user_type" id="user_type">
                                                <option value="<%=user_type%>"><%=user_type%></option>
                                            </select>
                                            <p id="p3"></p>
                                        </div>
                                    </div>
                                    <br></br>

                                    <div style="margin-top: 20px;" class="col-md-12 form-group">
                                        <button  type="submit" value="submit" class="primary-btn">Message</button>
                                    </div>

                                </form> <!-- /form -->
                            </div>     
                        </div> 
                    </div>
            </section>
        </div> <!-- ./container -->

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
</html>