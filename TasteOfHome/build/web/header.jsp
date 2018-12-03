<%-- 
    Document   : header
    Created on : May 22, 2015, 11:59:24 AM
    Author     : deepika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="header-bg">
    <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home
             </span></div>
		<div class="top-nav">
	        <ul>
                    <%String name=(String)session.getAttribute("adminusername");
            session.setAttribute("adminusername", name);
             
                        if(session.getAttribute("adminusername")!=null)
                        {
                        %>
                     
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
                    
                        if(session.getAttribute("adminusername")!=null)
                        {
                        %>
                     
                    <li><a href="adminchangepass.jsp" style="padding-right: 44px;">Change password</a></li>
	            <li><%=session.getAttribute("adminusername")%>
                               </li>
          
                        
            <div class="profile-actions">
                <form>
                   
                    <input type="submit" id="logout" name="logout" class="button" value="Log Out"/>
                        <%}
                        else
                        {
                            %>
                            <li><a href="signup.jsp">Login/Sign Up</a></li>
	            

                    <%
                        }
                        
                            %>
                    
                    <%
                        if (request.getParameter("logout") != null) {
                            

                            session.invalidate();
                            response.sendRedirect("signup.jsp");
                        }
                    %>
                        %>
	            <li class="active"><a href="index.jsp">Home</a></li>
	            <li><a href="gallery.jsp">Gallery</a></li>
	            <li><a href="writeblog.jsp">Blog</a></li>
                   
                   
                    <li><a href="adminchangepass.jsp" style="padding-right: 44px;">Change password</a></li>
	            <li><%=session.getAttribute("adminusername")%>
                               </li>
          
                        
            <div class="profile-actions">
               
                
            
      
	           
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
    </body>
</html>
