<%-- 
    Document   : ViewCart
    Created on : Apr 12, 2015, 7:51:37 PM
    Author     : VCI Panchkula
--%>

<%@page import="classes.Cart"%>
<%@page import="java.text.SimpleDateFormat"%>
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
<style>
			.content1 {
				background: #ccc;
				padding: 10px;
                                text-align: center;
			}
		</style>

<script src="js/bjqs-1.3.min.js"></script>
<script>
$(window).load(function() {
	$('.blueberry').blueberry();
});
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW CART</title>
    </head>
    <body>
        <%
            SimpleDateFormat format = new SimpleDateFormat("yyyyMMddhhmmss");
java.util.Date date = new java.util.Date();
String orderid = format.format(date);

session.setAttribute("orderid", orderid);

            %>
            <div class="header-bg">
    <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home
             </span></div>
		<div class="top-nav">
	        <ul>
                  
                       
	            <li class="active"><a href="index.jsp">Home</a></li>
	            <li><a href="gallery.jsp">Gallery</a></li>
	            <li><a href="blog.jsp">Blog</a></li>
                     <%
                        if(session.getAttribute("username")!=null)
                        {
                        %>
                     <li><a href="usermyaccount.jsp" style="padding-right: 44px;">My account</a></li>
                    <li><a href="userchangepass.jsp" style="padding-right: 44px;">Change password</a></li>
	            <li><%=session.getAttribute("username")%>
                               </li>
          
                        
            <div class="profile-actions">
                <form>
                   
                    <input type="submit" id="logout" name="logout" class="button" value="Log Out"/>
                        <%}
                        else
                        {
                            %>
                            <li><a href="signup.jsp">Login/Sign Up</a></li>
	            <li><a href="contact.html" style="padding-right: 44px;">Contact</a></li>

                    <%
                        }
                        
                            %>
                    
                    <%
                        if (request.getParameter("logout") != null) {
                            

                            session.invalidate();
                            response.sendRedirect("signup.jsp");
                        }
                    %>
                </form>
          
                
                 
      
	           
	        </ul>
	    </div>
	    <div class="clear"> </div>
    </div>
<div class="wrap">
   
   
<div class="header">
<!--	<div class="logo">
  		<a href="index.html"><img src="images/logo.png" title="logo" alt=""> </a>
 	</div>-->
<div class="menu">
	     <nav style="padding-top: 40px; padding-bottom: 40px">
		    <ul class="sf-menu">
		        <li><a href="index.jsp" style="padding-left: 49px; padding-right: 40px;">Home</a></li>
		        <li><a href="about.jsp" style="padding-left: 40px; padding-right: 45px;" >About</a></li>
                        <li><a href="discovergreatfood.jsp" style="padding-left: 49px; padding-right: 40px;">Discover Great Food</a></li>
		        <li><a href="ownashop/ownashop.jsp" style="padding-left: 49px; padding-right: 40px;">Own A Shop</a></li>
		        <li class="current" style="width:230px;"><a href="contact.jsp" >Contact</a></li>
		    </ul>
		    <div class="clear"></div>
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
      
            
            
            
<!--            //view cart-->
               
        <jsp:useBean id="cart" scope="session" class="classes.Cart" />
       
            <tr>
                <td>
                   <c:if test="${cart.lineItemCount==0}">
                                           No Products
                                            </c:if>
                </td>
            </tr>
       
            <div class="grid grid-pad">
			<div class="col-1-6" style="padding-right: 0px">
				<div class="content1" >
                                          
                                 Product
				</div>
			</div>
			<div class="col-1-6" style="padding-right: 0px">
				<div class="content1" >
                                    Price
				</div>
			</div>
			<div class="col-1-6" style="padding-right: 0px">
				<div class="content1" >
					Status
				</div>
			</div>
			<div class="col-1-6" style="padding-right: 0px">
				<div class="content1" >
                                    Qty.
				</div>
			</div>
			<div class="col-1-6" style="padding-right: 0px">
				<div class="content1" >
                                    Total Price
				</div>
			</div>
			<div class="col-1-6" style="padding-right: 0px">
				<div class="content1" >
                                    Remove
				</div>
			</div>
		</div>
            <hr>
            
            
            <c:forEach var="cartItem" items="${cart.alCartItems}" varStatus="counter">
                <form name="f1" method="post" action="CartController.jsp">
                    
                    
                    
                    <div class="grid grid-pad">
                        <div class="col-1-6">
                            
				<div class="content1" style="background: none">
                                   <c:out value="${cartItem.id}" />
                            <input type="hidden" value="${cartItem.id}" name="id" />
                            
                          
                              <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                              <br>
                              <c:out value="${cartItem.name}" />
                          
				</div>
			</div>
			<div class="col-1-6">
				<div class="content1" style="background: none">
                                  <img src="images/ruppe.png" width="8" height="10">  <c:out value="${cartItem.price}" />
				</div>
			</div>
			<div class="col-1-6">
				<div class="content1" style="background: none">
<!--					status-->
				</div>
			</div>
			<div class="col-1-6">
				<div class="content1" style="background: none">
                                    <input type="text" name="quantity"  size="2" value="${cartItem.quantity}" />
                                    <br> <input type="submit" name="action" value="Change Qty"/>
				</div>
			</div>
			<div class="col-1-6">
				<div class="content1" style="background: none">
                                    <img src="images/ruppe.png" width="8" height="10"><c:out value="${cartItem.totprice}" />
				</div>
			</div>
			<div class="col-1-6">
				<div class="content1" style="background: none">
                                    <input type="submit" name="action" value="Delete"   onclick="return confirm('Are you sure you want to delete?')"/>
				</div>
			</div>
		</div>
                                <hr>

                    
                </form>
                
            </c:forEach>
            
             
                 
                 <c:if test="${cart.lineItemCount!=0}">
                     <form method="post" action="CartController.jsp">
                           <div class="grid grid-pad">
			<div class="col-1-6">
				<div class="content1">
                         <input type="submit" name="action" value="Empty Cart"    onclick="return confirm('Are you sure you want to delete?')"/>
                                </div>
                        </div>
                           </div>
                     </form>
                     </c:if>
            
        
        
        <form action="checksession.jsp">
             <div class="grid grid-pad">
			<div class="col-1-6">
				<div class="content1">
                                    <%
                 Cart b=(Cart)session.getAttribute("cart");
                int h=b.getLineItemCount();
                 if(h>0)
                 {
                     String name1=(String)session.getAttribute("username");
                     session.setAttribute("username",name1);
                     
                 %>
            <input type="submit" value="Proceed" name="bproceed" />
             <%
                 }
                 %>
                                </div>
                        </div>
             </div>
        </form>
        </div>
</div>
</div>
</div>
        <div class="clear"></div>

		   
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


</html>
