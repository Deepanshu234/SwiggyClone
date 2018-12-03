<%-- 
    Document   : edit_cato
    Created on : Apr 7, 2015, 10:32:25 PM
    Author     : deepika
--%>

<%@page import="classes.myconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href="css-discovergreatfood/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> 


<script src="js/jquery.openCarousel.js" type="text/javascript"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="js/bjqs-1.3.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       	<div class="header-bg">
            <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
                <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home</span></div>
                <div class="top-nav">
                    <ul>
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="gallery.jsp">Gallery</a></li>
                        <li><a href="writeblog.jsp">Blog</a></li>
                        <li><a href="signup.jsp">Login/Sign Up</a></li>
                        <li><a href="contact.jsp" style="padding-right: 44px;">Contact</a></li>
                    </ul>
                </div>
                <div class="clear"> </div>
            </div>
            <div class="wrap">


                <div class="header">
                    <!--    <div class="logo" style="width: 980px; padding-left: 0px;">
                                    <a href="index.html"><img src="images/logo.png" title="logo" alt=""> </a>
                            </div>-->
                    <div class="menu">

                        <nav style="padding-top: 40px; padding-bottom: 40px">
                            <ul class="sf-menu">
                                <li><a href="index.jsp" style="padding-left: 49px; padding-right: 40px;">Home</a></li>
                                <li><a href="about.jsp" style="padding-left: 40px; padding-right: 40px;" >About</a></li>
                                <li class="current" style="width:304px"><a href="discovergreatfood.jsp" style="padding-left: 49px; padding-right: 40px;">Discover Great Food</a></li>
                                <li><a href="ownashop/ownashop.jsp" style="padding-left: 49px; padding-right: 40px;">Own A Shop</a></li>
                                <li><a href="contact.jsp" >Contact</a></li>
                            </ul>

                        </nav>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>

        <div class="clear"></div>
        <div class="body-bg">
            <div class="wrap">
                <div class="b-main">
                    <div class="content">
                        <!------------End Header ------------>
                        <div class="main">
                            <div class="content">
                                <div class="content_top">

                                </div>
                                <div class="content_bottom" style="height:542px;">
                                    <div class="wrap">
                                        <div class="content-bottom-left">
                                            <div class="categories">
                                                <ul>
                                                    <h3 style="padding-top: 13px;">Admin</h3>

                                                    <li><a href="insert_cat.jsp">Insert Category</a></li>
                                                    <li><a href="edit_cat.jsp">Edit Category</a></li>
                                                    <li><a href="delete_cat.jsp">Delete Category</a></li>


                                                </ul>
                                            </div>	




<div class="categories">
                                                <ul>
                                                    <h3 style="padding-top: 13px;">CUSTOMERS</h3>

                                                    <li><a  href="view_customer_personal_info.jsp">Personal Information</a></li>
                                                    <li><a  href="customer_order_details.jsp">Order Details</a></li>



                                                </ul>
                                            </div>	










                                            <div class="categories">
                                                <ul>
                                                    <h3 style="padding-top: 13px;">SELLER</h3>

                                                    <li><a  href="view_seller_personal_info.js">Personal Information</a></li>
                                                    <li><a  href="view_seller_shop_details.jsp">Shop Information</a></li>
                                                    <li><a  href="block_seller.jsp">Block</a></li>


                                                </ul>
                                            </div>	












                                        </div>

                                        <div class="content-bottom-right" >
                                            <h3 style="padding-top: 13px;">ADMIN PANEL</h3>
                                            <div class="section group">
                                                <div id="d1">
                                                    <form>
                                                        <%
                                                            try {
                                                                myconnection obj = new myconnection();
                                                                String q = "";

                                                                q = "select * from tbseller";


                                                                PreparedStatement pst = obj.db.prepareStatement(q);
                                                                ResultSet rs;
                                                                rs = pst.executeQuery();

                                                        %>                




                                                        SELECT sellername  <select name ="s1" id="s1" >
                                                            <%
                                                                String f = "";
                                                                while (rs.next()) {
                                                                    f = rs.getString("sellername");
                                                            %>

                                                            <option>

                                                                <%= rs.getString("sellername")%>

                                                            </option></a>
                                                            <%

                                                                    }

                                                                } catch (SQLException e) {
                                                                    out.println(e.getMessage());
                                                                }






                                                            %>
                                                        </select>
                                                        <div class="entry">
                                                            <input type="submit" name="b1" value="show" >
                                                        </div>
                                                    </form>

                                                    <%

                                                        try {

                                                            if (request.getParameter("b1") != null) {
                                                                String selected_category;
                                                                selected_category = request.getParameter("s1");
                                                                myconnection obj = new myconnection();
                                                                String r = "Select * from tbseller where sellername=?";
                                                                PreparedStatement pst1 = obj.db.prepareStatement(r);
                                                                pst1.setString(1, selected_category);
                                                                ResultSet rs;
                                                                rs = pst1.executeQuery();
                                                    %>



                                                    <%
                                                        while (rs.next()) {
                                                            String sellername,address,state,area,cname,image;
                                                            int zip,contact;
                                                            boolean status;
                                                            image = rs.getString("image");

                                                            sellername = rs.getString("sellername");
                                                            status = rs.getBoolean("status");
                                                            contact = rs.getInt("contact");
                                                            address = rs.getString("address");
                                                    %>
                                                    <form >
                                                        <div id="greyfirstbox">

<div id="greyboxleftvk"><a href=""><img src="../image/<%=image%>" width="180" height="200" alt=" at watscooking.com" class=""></a></div>
                                                        Seller name   <input type="text" name="name" value="<%=rs.getString("sellername")%>"/><br>
                                                        status <input type="text" name="status" value="<%=rs.getBoolean("status")%>"/><br>
                                                        contact  <input type="text" name="rank" value="<%=rs.getInt("contact")%>"/><br>
                                                        address<input type="description" name="id" value="<%=rs.getString("address")%>"/><br>
                                                        state<input type="description" name="id" value="<%=rs.getString("state")%>"/><br>
                                                        area<input type="description" name="id" value="<%=rs.getString("area")%>"/><br>
                                                         zip <input type="text" name="rank" value="<%=rs.getInt("zip")%>"/><br>
                                                       


                                                        <%

                                                                    }
                                                                }

                                                            } catch (SQLException e) {
                                                                out.println(e.getMessage());
                                                            }






                                                        %>



                                                       




                                                    </form>
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <div class="footer-top">
                <div class="wrap">
                    <div class="footer">
                        <div class="footer-nav">
                            <h5>Home</h5>
                            <ul>
                                <li><a href="#">Locations</a></li>
                                <li><a href="#">Team</a></li>
                                <li><a href="#">Work</a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                        <div class="footer-nav">
                            <h5>About</h5>
                            <ul>
                                <li><a href="#">Advance</a></li>
                                <li><a href="#">Inspire</a></li>
                                <li><a href="#">Flourish</a></li>
                            </ul>
                        </div>
                        <div class="footer-nav">
                            <h5>Programs</h5>
                            <ul>
                                <li><a href="#">Advance</a></li>
                                <li><a href="#">Inspire</a></li>
                                <li><a href="#">Extend</a></li>
                            </ul>
                        </div>
                        <div class="footer-nav">
                            <h5>Schedule</h5>
                            <ul>
                                <li><a href="#">Advance</a></li>
                                <li><a href="#">Inspire</a></li>
                                <li><a href="#">Extend</a></li>
                            </ul>
                        </div>
                        <div class="footer-nav1">
                            <h5>Contact</h5>
                            <ul>
                                <li id="fb"><a href=""><img src="images/fb.png" alt="" title="facebook"></a></li>
                                <li id="twr"><a href=""><img src="images/twr.png" alt=""  title="Twitter"></a></li>
                                <li id="mail"><a href=""><img src="images/mail.png" alt="" title="Mail"></a></li>
                                <li id="feed"><a href=""><img src="images/feed.png" alt="" title="Feed"></a></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>	
                </div>
            </div>
            <div class="footer1-bg">
                <div class="wrap">
                    <div class="copy">
                        <p>© 2015 All rights Reserved | Design by Deepika Manchanda</p>
                    </div>	
                </div>
            </div>

            <script type="text/javascript">
                                                                   $(document).ready(function() {
                                                                       $().UItoTop({easingType: 'easeOutQuart'});

                                                                   });
            </script>
            <a href="#" id="toTop"> </a>
            <script type="text/javascript" src="js/navigation.js"></script>


    </body>
</html>
