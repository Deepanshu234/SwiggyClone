<%@page import="java.util.ArrayList"%>
<%@page import="classes.Cart"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<%@page import="classes.Cshipping"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
    <head>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="classes.Product" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="js/easing.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<link rel="stylesheet" type="text/css" href="css/simplegrid.css" />
<script src="js/bjqs-1.3.min.js"></script>
<script>
$(window).load(function() {
	$('.blueberry').blueberry();
});
</script>
        <link rel="stylesheet" type="text/css" href="css/simplegrid.css" />
        <style>
    .required label:after { content:"*"; }
  
</style>
<style>
			.content {
/*				background: #ccc;*/
				
                                padding:1px;
			}
                        
                        .content input[type="text"]
                        {
                            height: 25px;
                        }
                        
                        .content2 label:before{ content: "*";}
                       
		</style>
    </head>
    <body>
         <div class="header-bg">
    <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home</span></div>
		<div class="top-nav">
	        <ul>
	            <li class="active"><a href="index.jsp">Home</a></li>
	            <li><a href="gallery.jsp">Gallery</a></li>
	            <li><a href="blog.jsp">Blog</a></li>
	            <li><a href="signup.jsp">
                             <form>
                    <input type="submit" id="logout" name="logout" class="button" value="Log Out"/>


                    <%
                        if (request.getParameter("logout") != null) {
                            if (session.isNew()) {

                                response.sendRedirect("signup.jsp");
                            }

                            session.invalidate();
                            response.sendRedirect("singup.jsp");
                        }
                    %>
                </form>
                Login/Sign Up</a></li>
	            <li><a href="contact.jsp" style="padding-right: 44px;">Contact</a></li>
	        </ul>
	    </div>
	    <div class="clear"> </div>
    </div>
<div class="wrap">
   
   
<div class="header">
<!--	<div class="logo">
  		<a href="index.html"><img src="images/logo.png" title="logo" alt=""> </a>
 	</div>-->

<div class="clear"></div>
</div>
</div>
</div>
            <div class="clear"></div>
<div class="body-bg">
    <div class="wrap" style="width:1084px">
    <table>
        <tr>
            <td style="padding-right: 100px">
                
            

    <form style="padding-top: 50px" method="post">
          <div style=" padding-bottom: 21px;/* padding-left: 301px; */width: 412px;height:650px;border-style: solid;border-width: 2px;border-color: gray">
           <div class="grid grid-pad">
                    <div class="col-1-2 mobile-col-1-2" style="width:192px">
                        <div class="content" style="width: 192px">
                                    <div style='width: 192px'>
                                        <label><h4 style="width: 192px;font-weight: 700">Enter Shipping Address</h4></label>
                                    </div>
				</div>
                    </div>
           </div>
        
		<!-- Grid 1/2 -->
                <div class="grid grid-pad" style="padding-top:24px">
                    <div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div class="required">
                                    <label>First Name</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="sfname" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div class="required">
                                    <label>Last Name</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="slname" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div class="required">
                                    <label>Phone</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="sphone" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div>
                                    <label>Alternate Phone</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="saltphone" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div class="required">
                                    <label>Pincode</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="spincode" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div>
                                    <label>Locality</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="slocality" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div class="required">
                                    <label>Address</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="saddress" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div class="required">
                                    <label>City</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="scity" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content">
                                    <div class="required">
                                    <label>State/Region</label>
                                    </div>
				</div>
			</div>
			<div class="col-1-2 mobile-col-1-2">
				<div class="content">
                                      <input type="text" name="sregion" value="" />
				</div>
			</div>
			
			
		</div>
                <div class="grid grid-pad" style="padding-top:24px">
			<div class="col-1-2 mobile-col-1-2" style="width:185px">
				<div class="content2">
                                    <div>
                                        <label style="color: grey; font-size: 12px;">Required Fields</label>
                                    </div>
				</div>
                        </div>
                </div>
                <div class="grid grid-pad" style="padding-top:24px">
                   
                    <div class="col-1-2 mobile-col-1-2" style="padding-left: 184px;">
                        <div class="content" style="width:179px">
                                    <input type="submit" value="Save & Continue" name='b1' style="width: 173px;height: 47px;background-color: navajowhite;border:none;font-size: 16px" />
                                    
				</div>
			</div>
                </div>
                </div>
    </form>
                </td>
                <td style="position: absolute;padding-top: 50px">
            
     <fieldset style="width: 570px;border-style: solid;border-width: 2px;border-color: gray;float: right" >
                
           
            <jsp:useBean id="cart" scope="session" class="classes.Cart" />
		<%
//               
//               
//                if(request.getParameter("b1")!=null)
//                    
//                { 
//                    if(session.getAttribute("username")!=null)
//                    {
//                        try
//                        {
//                            Cart cobj=(Cart)session.getAttribute("cart");
//                            Product pobj;
//                            ArrayList<Product> carray=cobj.getAlCartItems();
//                            for (int i=0;i<carray.size();i++)
//                            {
//                                int ff=0;
//                                 pobj=(Product)carray.get(i);
//                         
//                           
//                            
//                    Cshipping obj=new Cshipping();
//                    obj.setSfname(request.getParameter("sfname"));
//                    obj.setSlname(request.getParameter("slname"));
//                    obj.setSphone(request.getParameter("sphone"));
//                    obj.setSaltphone(request.getParameter("saltphone"));
//                    obj.setSpincode(request.getParameter("spincode"));
//                    obj.setSlocality(request.getParameter("slocality"));
//                    obj.setSaddress(request.getParameter("saddress"));
//                    obj.setScity(request.getParameter("scity"));
//                    obj.setSregion(request.getParameter("sregion"));
////                    obj.setSubtotal(request.getParameter("subtotal"));
////                    obj.setShippingcharges(request.getParameter("shippingcharges"));
////                    obj.setTax(request.getParameter("tax"));
////                    obj.setTotal(request.getParameter("total"));
//                    
//                    session.setAttribute("cshipping",obj);
//                    
//                   
//                    String orderid=(String)session.getAttribute("orderid");
//                    String uname=(String)session.getAttribute("username");
//                    
//                   
//                        myconnection obj1=new myconnection();
//                        
//                        String q="insert into tborderdetails(orderid,username,sfname,slname,sphone,saltphone,spincode,slocality,saddress,scity,sregion,subtotal,shippingcharges,tax,total) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
//                        PreparedStatement pst=obj1.db.prepareStatement(q);
//                        pst.setString(1,"oredrid");
//                        pst.setString(2,"uname");
//                        pst.setString(3,request.getParameter("sfname"));
//                        pst.setString(4,request.getParameter("slname"));
//                        pst.setString(5,request.getParameter("sphone"));
//                        pst.setString(6,request.getParameter("saltphone"));
//                        pst.setString(7,request.getParameter("spincode"));
//                        pst.setString(8,request.getParameter("slocality"));
//                        pst.setString(9,request.getParameter("saddress"));
//                        pst.setString(10,request.getParameter("scity"));
//                        pst.setString(11,request.getParameter("sregion"));
//                        pst.setString(12,pobj.get());
//                        pst.setString(13,request.getParameter("shippingcharges"));
//                        pst.setString(14,request.getParameter("tax"));
//                        pst.setString(15,request.getParameter("total"));
//                        pst.executeUpdate();
//                        
//                      
//                        
//                        
//                        
//                    
//                     }
//                        }
//                        catch(SQLException e)
                      {
//                            out.println(e.getMessage());
//                        }
                  
                   
                   
               }
                
                %>
            
            
            
<!--            order summary-->
            <div class="grid grid-pad" >
                 <div class="col-1-4" style="width:inherit;padding-right: 0px">
                     <div class="content">
                         <h2 style="height: 23px;font-size: 20px"> Order Summary</h2>
                     </div>
            </div>
            </div>
            <hr style="border-style: solid;border-color: gray;border-width: 1px">
		<div class="grid grid-pad" >
                    <div class="col-1-4" style="width:140px;padding-right: 0px">
                        <div class="content" style="background:#ccc;padding: 5px">
                                    Product
				</div>
			</div>
			<div class="col-1-4" style="width:90px;padding-right: 0px">
				<div class="content" style="background:#ccc;padding: 5px">
                                    Qty
				</div>
			</div>
			<div class="col-1-4" style="width:140px;padding-right: 0px">
				<div class="content" style="background:#ccc;padding: 5px">
                                    Delivered By
				</div>
			</div>
			<div class="col-1-4" style="width:123px;padding-right: 0px">
				<div class="content" style="background:#ccc;padding: 5px">
                                    Price
				</div>
			</div>
		</div>
        <c:forEach var="cartItem" items="${cart.alCartItems}" varStatus="counter">
            <%
//                 try
//                     
//                 {
//                      String orderid=(String)session.getAttribute("orderid");
//                     myconnection obj1=new myconnection();
//                     
//                String r="insert into tborder(orderid,iid,quantity) values(?,?,?)";
//                        PreparedStatement pst1=obj1.db.prepareStatement(r);
//                        pst1.setString(1,orderid);
////                        pst1.setString(2,);
////                        pst1.setString(3,);
////                        pst1.executeUpdate();
//                        
//                        
//                       
//                 }
//                 catch(SQLException e)
//                 {
//                     out.println(e.getMessage());
//                 }
                
                %>
        <div class="grid grid-pad" >
                    <div class="col-1-4" style="width:140px;padding-right: 0px">
				<div class="content" style="background:none;padding: 5px">
                                  <c:out value="${cartItem.id}" />
                            <input type="hidden" value="${cartItem.id}" name="id" />
                              <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                              <br>
                              <c:out value="${cartItem.name}" />
				</div>
			</div>
			<div class="col-1-4" style="width:90px;padding-right: 0px">
                            <div class="content" style="background:none;padding: 5px">
                                      <c:out value="${cartItem.quantity}" />
                                      <input type="hidden" value="${cartItem.quantity}" name="quantity" />
				</div>
			</div>
			<div class="col-1-4" style="width:140px;padding-right: 0px">
				<div class="content" style="background:none;padding: 5px">
                                    Delivered By
				</div>
			</div>
			<div class="col-1-4" style="width:123px;padding-right: 0px">
				<div class="content" style="background:none;padding: 5px">
                                    <img src="images/ruppe.png" width="8" height="10">  <c:out value="${cartItem.price}" />
				</div>
			</div>
                              
		</div>
        
                                <hr style="width: 495px">   
        </c:forEach>
                                
                                <div class="grid grid-pad" style="padding-left: 249px;padding-top: 0px" >
                    <div class="col-1-4" style="width:140px;padding-right: 0px">
                        <div class="content" style="background:none;padding: 5px;text-align: center;padding-bottom: 5px;padding-top: 5px">
                            Subtotal
                        </div>
                    </div>
                      <div class="col-1-4" style="width:140px;padding-right: 0px">
                        <div class="content" style="background:none;padding: 5px;padding-bottom:5px;padding-top: 5px">
                            <img src="images/ruppe.png" width="8" height="10">  <c:if test="${cart.lineItemCount!=0}"> <c:out value="${cart.orderTotal}" /></c:if>
                    </div>
                                  </div> 
                                </div>
                                 <div class="grid grid-pad" style="padding-left: 217px;padding-top: 0px" >
                    <div class="col-1-4" style="width:140px;padding-right: 0px">
                        <div class="content" style="background:none;padding: 5px;padding-bottom: 5px;padding-top: 5px">
                            Shipping Charges
                        </div>
                    </div>
                    <div class="col-1-4" style="width:140px;padding-right: 0px;padding-left: 32px">
                        <div class="content" style="background:none;padding: 5px;padding-bottom: 5px;padding-top: 5px;">
                             <img src="images/ruppe.png" width="8" height="10"> 50
                        </div>
                    </div>
                                     </div>
                                 <div class="grid grid-pad"  style="padding-left: 246px;padding-top: 0px">
                    <div class="col-1-4" style="width:140px;padding-right: 0px">
                        <div class="content" style="background:none;padding: 5px;padding-bottom: 5px;padding-top: 5px">
                            Tax Collected
                        </div>
                    </div>
                    <div class="col-1-4" style="width:140px;padding-right: 0px;padding-left: 3px">
                        <div class="content" style="background:none;padding: 5px;padding-bottom: 5px;padding-top: 5px">
                             <img src="images/ruppe.png" width="8" height="10">
                        
                 
                        </div>
                    </div>
                                     </div>
                                <hr style="width: 495px">
                                 <div class="grid grid-pad" style="padding-left: 244px;padding-top: 0px" >
                    <div class="col-1-4" style="width:140px;padding-right: 0px;padding: 5px;padding-left: 65px">
                        <div class="content" style="padding: 5px;padding-bottom: 5px;padding-top: 5px">
                            Total
                        </div>
                    </div>
                    <div class="col-1-4" style="width:140px;padding-right: 0px;padding-left:5px;padding-top: 8px ">
                        <div class="content" style="padding: 5px;padding-bottom: 5px;padding-top: 5px">
                          <img src="images/ruppe.png" width="8" height="10">
                        </div>
                    </div>
                                     </div>
                                
                                
                                
                                
                                 </fieldset>
             </td>
        </tr>
    </table>
    
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
                    	<li id="twr"><a href=""><img src="images/twr.png" alt="" title="Twitter"></a></li>
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
			<p>© 2015 All rights Reserved | Design by Nupur Gupta</p>
	</div>	
</div>
</div>
 <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"> </a>
    <script type="text/javascript" src="js/navigation.js"></script>

	

    </body>
</html>