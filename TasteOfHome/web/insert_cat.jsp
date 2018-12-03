<%-- 
    Document   : insert_cato
    Created on : Mar 26, 2015, 8:22:11 PM
    Author     : Deepika
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="classes.myconnection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <title>INSERT CATEGORY</title>
    


            
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
                                                       
							     <li><a href="view_customer_personal_info.jsp">Personal Information</a></li>
                                                               <li><a href="customer_order_details.jsp">Order Details</a></li>
                                                                      
							      
							       
						  	 </ul>
						</div>	
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <div class="categories">
						   <ul>
                                                       <h3 style="padding-top: 13px;">SELLER</h3>
                                                       
							    <li><a href="view_seller_personal_info.js">Personal Information</a></li>
                                                               <li><a href="view_seller_shop_details.jsp">Shop Information</a></li>
                                                                    <li><a href="block_seller.jsp">Block</a></li>
							      
							       
						  	 </ul>
						</div>	
                    
                    
                    
                    
                    
                    
							
					  
    	    	</div>
    	    	
            <div class="content-bottom-right" >
                    <h3 style="padding-top: 13px;">ADMIN PANEL</h3>
	            <div class="section group">
                        <div id="d1">
		<div class="header" >
			<h1> Insert  Categories</h1>
		</div>
		<p></p>
                <form method="post">
				<ul class="left-form">
					
					<li>
						<input type="text" name="t1"  placeholder="Category Name"  required/>
						
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="text" name="t2"  placeholder="Rank" required/>
						
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="checkbox" name="c1"  placeholder="Status"   id="t3" required/>
						
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="text" name="t4"  placeholder="Description"  id="t4" required/>
					
						<div class="clear"> </div>
					</li> 
                                       
						
						
<!--					<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Please inform me of upcoming  w3layouts, Promotions and news</label>-->
<input type="submit"  value="Insert"  name="b1">
						<div class="clear"> </div>
				</ul>
                    
       
					
					
	 
           <%
               
               
                 
            try
            {
                
                if(request.getParameter("b1")!=null)
                    {
                        
                 myconnection obj=new myconnection();
                String q="insert into tbcategory(cname,rank,description,status) values(?,?,?,?)";
                PreparedStatement pst=obj.db.prepareStatement(q);
                pst.setString(1, request.getParameter("t1"));
                
                pst.setInt(2, Integer.parseInt(request.getParameter("t2")));
                pst.setString(3,request.getParameter("t4"));
                 pst.setBoolean(4,Boolean.getBoolean(request.getParameter("c1")));
                pst.executeUpdate();
                
                out.println("data is inserted sucessfully");
             }
                
            }
            catch(SQLException e)
            {
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
			<p>© 2015 All rights Reserved | Design by  Deepika Manchanda</p>
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
