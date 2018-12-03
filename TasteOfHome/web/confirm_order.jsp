

<%@page import="java.sql.Date"%>
<%@page import="classes.Cbill"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="classes.Cart"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<%@page import="classes.Cshipping"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="classes.Product" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONFERM ORDER</title>
    </head>
    <body>
       <html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="js/easing.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<link href="css-header/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css-header/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Creative Studio Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,300,600,800,400' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>

<script src="js/bjqs-1.3.min.js"></script>

<script>
$(window).load(function() {
	$('.blueberry').blueberry();
});
</script>
</head>
<body>
<div class="header-bg">
     <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home
             </span></div>
		<div class="top-nav">
	        <ul>
	            <li class="active"><a href="index.jsp">Home</a></li>
	            <li><a href="gallery.jsp">Gallery</a></li>
	            <li><a href="blog.jsp">Blog</a></li>
	            <li><a href="signup.jsp">Login/Sign Up</a></li>
	            <li><a href="contact.jsp" style="padding-right: 44px;">Contact</a></li>
	        </ul>
	    </div>
	    <div class="clear"> </div>
    </div>
    <div class="container1">
    <div class="header1" style="padding-bottom: 0px">
			<div class="logo1">
                            <a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt="" style="padding-left: 6px;padding-bottom: 10px;margin-left: 178px; width: 212px;height: 138px"></a>
                            
        
          <div class="product">
<div class="container">
<div class="col-md-9 ctnt-bar">
	<div class="content-bar">
<div class="single-page">
    <ul class="product-head">
        <li><a href="pdetails.jsp">Products</a> <span>::</span></li>
                <li><a href="ViewCart.jsp" >Cart</a><span>::</span></li>
                <li><a href="confirm_order.jsp">Confirm Order</a></li>
		<div class="clear"> </div>
                <form action="toconfirm.jsp">
                     <div class="single-but">
                         <input type="submit" value="change shipping details" name="b"/>
                     
                     
                     
                     </div>
                     </form>
       
     </ul>
                </div>
                      <%
            String sfname="",slname="",scontact="",scity="",spincode="",semail="",sstate="",saddress="";
            Cshipping   sobj;
            sobj=(Cshipping)session.getAttribute("shipdetails");
               sfname=sobj.getSfname();
             slname=sobj.getSlname();
             scontact=sobj.getSphone();
             scity=sobj.getScity();
             spincode=sobj.getSpincode();
           
            sstate=sobj.getSregion();
            saddress=sobj.getSaddress();
            
            
            
            
           
            
        %>   
    
    <table width="80%" cellpadding="5" cellspacing="10"  border="2px" bordercolor="#ffffff" >
                <%
            session.setAttribute("orderid", (String)session.getId());
            %>
        <jsp:useBean id="cart" scope="session" class="classes.Cart" />
        <c:if test="${cart.lineItemCount==0}">
            <tr >
                <td>
                    No Products
                </td>
            </tr>
        </c:if>
            
            <c:forEach var="cartItem" items="${cart.alCartItems}" varStatus="counter">
                
                <form name="f1" method="post" action="CartController.jsp">
                    <tr bgcolor="#f7ec13">
                        
                        <td>
                           
                            
                            <c:set var="s3" value="${cartItem.id}" />
                           
                           
                            <input type="hidden" value="${cartItem.id}" name="id" />
                           
                            <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                               
                            <c:out value="${cartItem.name}" />
                            <input type="text" name="quantity"  size="2" value="${cartItem.quantity}" disabled />
                            <!input type="submit" name="action" value="Change Qty"/>
                            
                           <c:out value="${cartItem.price}" />
                           
                           <c:out value="${cartItem.totprice}" />
                         
                           <!input type="submit" name="action" value="Delete"   onclick="return confirm('Are you sure you want to delete?')"/>
                            
                            </td>
                    </tr>
                    
                </form>
                
            </c:forEach>
            <form>
             <c:if test="${cart.lineItemCount!=0}">
                 <tr>
                     <td>
                         <h4>Order Total:    <c:out value="${cart.orderTotal}" /></h4>
                 <input type="hidden" name="subtotal" value="${cart.orderTotal}"/>
                     </td>
                 </tr>
             </c:if>
             <%
                 Cshipping obj=(Cshipping)session.getAttribute("shipdetails");
                 
                Cbill obj1=(Cbill)session.getAttribute("billing");
            %>
            <h3>Shipping Information</h3>
            <table>
                <tr>
                <td>FIRST NAME </td>
                <td><%=obj.getSfname()%></td>
                </tr>
                <tr>
                    <td>LAST NAME </td>
                    <td><%=obj.getSlname()%></td>
                </tr>
                <tr>
                    <td> region </td>
                    <td><%=obj.getSregion()%></td>
                </tr>
                <tr>
                    <td>CONTACT </td>  
                    <td><%=obj.getSaltphone()%></td>
                    </tr>
                    <tr>
                <td>PINCODE </td>   
                <td>  <%=obj.getSpincode()%></td>
                </tr>
                <tr>
                <td>CITY  </td>
                <td>  <%=obj.getScity()%> </td>
                </tr>
            </table>
                
                            <h3>Billing Information</h3>
            <table>
                <tr>
                <td>FIRST NAME </td>
                <td><%=obj.getSfname()%></td>
                
                </tr>
                <tr>
                    <td>LAST NAME </td>
                    <td><%=obj.getSlname()%></td>
                </tr>
               
                    <td>CONTACT </td>  
                    <td><%=obj.getSphone()%></td>
                    </tr>
                    <tr>
                <td>PINCODE </td>   
                <td>  <%=obj.getSpincode()%></td>
                </tr>
                <tr>
                <td>CITY  </td>
                <td>  <%=obj.getScity()%> </td>
                </tr>
                
            </table>
               
                    <input type="submit" value="Proceed to payment" name="b1"/>
                           <%
                     if(request.getParameter("b1")!=null)
                     {
                     
                        try{
                        
                    myconnection obj23=new myconnection();
                    String uname=(String)session.getAttribute("username");
                    Double tax=0.0,shippingcharges=0.0,total=0.0;
                    String crDate="";
                    java.util.Date date=new java.util.Date();
                    crDate=""+date;
                    
                    tax=0.12*cart.getOrderTotal();
                    shippingcharges=50.0;
                    total=cart.getOrderTotal()+tax+shippingcharges;
                    
                    for(int i=0;i<cart.getLineItemCount();i++)
                    {
                    String q1="insert into tborder(orderid,iid,quantity,WID,Price) values(?,?,?,?,?)";
                    PreparedStatement pst1=obj23.db.prepareStatement(q1);
                    pst1.setString(1, (String)session.getAttribute("orderid"));
                    pst1.setInt(2, cart.getIndex(i));
                    pst1.setInt(3, cart.getQuantity(i));
                    pst1.setString(4,(String)session.getAttribute("warehouseid"));
                    
                    pst1.setDouble(5,cart.getOrderTotal());
                    pst1.executeUpdate();
                    }
                    
                    String q2="insert into tborderdetails(orderid,username,sfname,slname,sphone,saltphone,spincode,slocality,saddress,scity,sregion,ssubtotal,tax,shippingcharges,total,crDate,WID,PaymentStatus,deliverystatus) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now(),?,?,?)";
                    PreparedStatement pst2=obj23.db.prepareStatement(q2);
                    pst2.setString(1, (String)session.getAttribute("orderid"));
                    pst2.setString(2, uname);
                    pst2.setString(3, sobj.getSfname());
                    pst2.setString(4, sobj.getSlname());
                    pst2.setString(5, sobj.getSphone());
                    pst2.setString(6, sobj.getSaltphone());
                    pst2.setString(7, sobj.getSpincode());
                    pst2.setString(8, sobj.getSlocality());
                    pst2.setString(9, sobj.getSaddress());
                    pst2.setString(10, sobj.getScity());
                    pst2.setString(11, sobj.getSregion());
                    pst2.setDouble(12, cart.getOrderTotal());
                     pst2.setDouble(13, tax);
                     pst2.setDouble(14,shippingcharges);
                   
                   
                    pst2.setDouble(15, total);
                     pst2.setString(16,crDate);
                    pst2.setString(17,(String)session.getAttribute("warehouseid"));
                    pst2.setBoolean(18,false);
                    pst2.setBoolean(19,false);
                    pst2.executeUpdate();
                }
                         catch(Exception e){
                             System.out.println(e.getMessage());
                         }
                    response.sendRedirect("pay1.jsp");
                     }
                     
                     %>
                                      </form>

        
</div>
        </div>
</div>
</div>
          
        
   <div class="footer1-bg">
<div class="wrap">
	<div class="copy">
			<p>© 2015 All rights Reserved | Design by Deepika manchanda</p>
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
