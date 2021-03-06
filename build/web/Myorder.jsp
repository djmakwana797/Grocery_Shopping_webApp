<%-- 
    Document   : order
    Created on : 6 Mar, 2021, 11:12:17 AM
    Author     : Dilip J Sarvaiya
--%>

<%@page import="Pojo.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Pojo.Cart"%>
<%@page import="Pojo.DeliveryBoy"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page import="DAO.*"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%
    Connection conn = DBConnect_JDBC.getConnection();
    Statement st = conn.createStatement();
    HttpSession httpSession = request.getSession();
    String email = (String) session.getAttribute("login_or_not");
    String db_charge = (String) session.getAttribute("db_charge");
    String d_boy = (String) session.getAttribute("d_boy");
    if (email != null) {
%>
<div style="margin-top: 145px;" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-8">
            <h4>Welcome  <strong style="color:#ff6c00;"><%=email%></strong></h4>
        </div>
    </div>
</div>
<%
} else {
%>
<%
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
        <title>Order Page</title>
        <style>
            h3
            {
                color: #ff6c00;
                text-align: center;
            }
            .bs-example{
                margin: 20px;
            }
        </style>

    </head>
    <body>
        <jsp:include page="dashboardNavbar/customer_nav.jsp"/>

        <div style="padding-top: 10px;" class="container-fluid">

            <%@include file="message.jsp" %>
            <%                String one_db = (String) httpSession.getAttribute("one_db");
                if (one_db == null) {
            %>
            <form action="changedeliveryboy.jsp" id="change_db" method="post">
                <div class="right-div">

                    <h3 style="color: red">*If Delivery Boy does not Accept order within 10 minutes ,replace Delivery Boy</h3>
                </div>
                <h3><b>Select Available Delivery boy</b></h3>

                <div class="form-select" id="default-select">
                    <select class="input-style" id="d_boy" name="d_boy">
                        <%                             List<DeliveryBoy> list = DeliveryboyDAO.For_getting_all_boys();
                            if (list.isEmpty()) {
                        %>
                        <option value="none" >Delivery boys are not available on this time</option> 
                        <%} else {
                            for (DeliveryBoy d : list) {
                        %>
                        <option value="<%=d.getDbName()%>"><%=d.getDbName()%></option> 
                        <%}%>
                        <%}%>
                    </select>
                </div>
                <div style="margin-top: 20px;text-align: center;" class="col-md-12 form-group">
                    <button  type="submit" value="submit" class="primary-btn">Change</button>
                </div>
            </form>
            <%}%>
            <table class="table table-hover" width='100%'>
                <h3 class="text-center">My Orders<i class="fa fa-cart-plus"></i></h3>  
                <thead>
                    <tr>
                        <th>S.no</th>
                        <th>Product Name</th>
                        <th>Product Image</th>
                        <th>Price </th>
                        <th>Quantity</th>
                        <th>Discount</th>
                        <th>Sub total</th>
                        <th>Delivery boy charge</th>
                        <th>Delivery boy name</th>
                        <th>Delivery boy email</th>
                        <th>Delivery boy phone</th>
                        <th>Order date</th>
                        <th>Expected Delivery date</th>
                        <th>Payment Method</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <%                    int sno = 0;
                    String db_email = "";
                    try {
                        ResultSet rs1 = st.executeQuery("select * from cart inner join product where cart.p_id=product.pid and cart.email='" + email + "' and cart.orderDateTime is not NULL");
                        int c = 0;
                        while (rs1.next()) {
                            DeliveryBoy db = DeliveryboyDAO.viewSingle_by_name(d_boy);
                            sno = sno + 1;
                            c = c + 1;
                %>
                <tbody>
                    <tr>
                        <td><%out.println(sno);%></td>
                        <td><%=rs1.getString(19)%></td>
                        <td><img src="img/product/<%=rs1.getString(21)%>" style="max-height:500px; max-width: 100%; width:auto"  class="card-img-top m-2" alt=".."></td>
                        <td><i class="fa fa-inr"></i><%=rs1.getString(5)%></td>
                        <td><%=rs1.getString(4)%></td>
                        <td><%=rs1.getLong(23)%>%</td>
                        <td><i class="fa fa-inr"></i><%out.println(rs1.getString(6));%></td>
                        <td><i class="fa fa-inr"></i><%out.println(Integer.parseInt(db_charge));%></td>
                            <%
                                DeliveryBoy db1 = DeliveryboyDAO.viewSingle(rs1.getString(17));
                                db_email = db1.getDbEmail();
                            %>
                        <td><%=db1.getDbName()%></td>
                        <td><%=rs1.getString(17)%></td>

                        <td><%=db1.getDbPhone()%></td>
                        <td><%=rs1.getString(15)%></td>
                        <td><%=rs1.getString(16)%></td>
                        <td><%=rs1.getString(12)%></td>
                        <td><%=rs1.getString(14)%></td>

                    </tr>
                </tbody>
                <%
                        }

                    } catch (Exception ex) {
                        out.println(ex.getMessage());
                    }
                    if (sno == 0) {
                        out.println("<h2 class='text-center'>You have not did any order.</h2>");
                    }
                %>


            </table>

            <%
                ResultSet rs2 = st.executeQuery("select * from cart inner join product where cart.p_id=product.pid and cart.email='" + email + "' and cart.orderDateTime is not NULL");

                while (rs2.next()) {
                    if (!rs2.getString(14).equals("Accepted")) {
            %>
            <div class="bs-example">
                <div class="text-center">
                    <a href="delete_myorder.jsp?id=<%=rs2.getString(1)%>&email=<%=email%>&db_email=<%=db_email%>"><button type="button" class="btn btn-danger text-right">Remove</button></a>

                </div>
            </div>
            <%}
                    break;
                }
            %>

        </div>

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
        <script src="js/countdown.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script>
            $("document").ready(function ()
            {
                var d_boy_available = $("#d_boy").val();
                $("#change_db").submit(function ()
                {
                    if (d_boy_available == "none")
                    {
                        alert("Please try later...");
                        return false;
                    }

                });
            });
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'UA-23581568-13');
        </script>
        <script defer src="../../../static.cloudflareinsights.com/beacon.min.js"
        data-cf-beacon='{"version":"2021.2.0","si":10,"rayId":"62fb204e0dc00fce"}'></script>

    </body>
</html>