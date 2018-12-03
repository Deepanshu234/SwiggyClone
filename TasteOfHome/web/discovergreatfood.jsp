<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href="css-discovergreatfood/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> 
<script src="js/jquery.openCarousel.js" type="text/javascript"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<link href="css-header/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Creative Studio Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,300,600,800,400' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script>
<title>DISCOVER GREAT FOOD</title>
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

   
   
<!--<div class="header">
    <div class="logo" style="width: 980px; padding-left: 0px;">
  		<a href="index.html"><img src="images/logo.png" title="logo" alt=""> </a>
 	</div>
<div class="menu" style="padding-left: 112px">
	     
		     <nav style="padding-top: 40px; padding-bottom: 40px">
		    <ul class="sf-menu">
		        <li><a href="index.jsp" style="padding-left: 49px; padding-right: 40px;">Home</a></li>
		        <li><a href="about.jsp" style="padding-left: 40px; padding-right: 40px;" >About</a></li>
                        <li class="current" style="width:304px"><a href="discovergreatfood.jsp" style="padding-left: 49px; padding-right: 40px;">Discover Great Food</a></li>
		        <li><a href="food.jsp" style="padding-left: 49px; padding-right: 40px;">Own A Shop</a></li>
		        <li><a href="contact.jsp" >Contact</a></li>
		    </ul>
		    
		</nav>
</div>
<div class="clear"></div>
</div>-->
<div class="container1">
    <div class="header1" style="padding-bottom: 0px">
			<div class="logo1">
                            <a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt="" style="padding-left: 6px;padding-bottom: 10px;margin-left: 178px; width: 212px;height: 138px"></a>
				<div class="head-nav1">
					<span class="menu1"> </span>
						<ul class="cl-effect-16">
							<li><a href="index.jsp" data-hover="HOME">home</a></li>
							<li><a href="about.jsp" data-hover="ABOUT US">about us</a></li>
                                                        <li><a href="discovergreatfood.jsp" style="color: black" data-hover="DISCOVER GREAT FOOD">discover great food</a></li>
							<li><a href="ownashop/ownashop.jsp" data-hover="OWN A SHOP">own a shop</a></li>
							
							<li><a href=" contact.jsp" data-hover="CONTACT US">contact us</a></li>
								<div class="clearfix"> </div>
						</ul>
							<!-- script-for-nav -->
						<script>
							$( "span.menu" ).click(function() {
							  $( ".head-nav ul" ).slideToggle(300, function() {
								// Animation complete.
							  });
							});
						</script>
					<!-- script-for-nav --> 
				</div>
                                </div>
					<div class="clearfix"> </div>
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
    	        	<div class="wrap">
		          	   <h3>Latest Products</h3>
		          	</div>
		          	<div class="line"> </div>
		          	<div class="wrap">
		          	 <div class="ocarousel_slider">  
	      				<div class="ocarousel example_photos" data-ocarousel-perscroll="3">
			                <div class="ocarousel_window">
                                           <a href="#" title="img1"> <img src="foodimages/carrot-cake.jpg" alt="" height="150" width="198px"/><p>Carrot Cake</p></a>
                                            <a href="#" title="img2"> <img src="foodimages/cheese-cake.jpg" alt="" height="150" width="198px" /><p>Cheese Cake</p></a>
                                            <a href="#" title="img3"> <img src="foodimages/chicken-pie.jpg" alt="" height="150" width="198px" /><p>Chicken Pie</p></a>
                                            <a href="#" title="img4"> <img src="foodimages/chinese-noodles.jpg" alt="" height="150" width="198px"  /><p>Chinese Noodles</p></a>
                                            <a href="#" title="img5"> <img src="foodimages/classic-chicken-panini.jpg" alt="" height="150" width="198px" /><p>Classic Chicken</p></a>
                                            <a href="#" title="img6"> <img src="foodimages/idli.jpg" alt="" height="150" width="198px" /><p>Idli</p></a>
                                            <a href="#" title="img1"> <img src="foodimages/kadhai-paneer.jpg" alt="" height="150" width="198px" /><p>Kadhai Paneer</p></a>
                                            <a href="#" title="img2"> <img src="foodimages/kai-murukku.jpg" alt="" height="150" width="198px" /><p>Kai Muru</p></a>
                                            <a href="#" title="img3"> <img src="foodimages/samosa.jpg" alt="" height="150" width="198px"/><p>Samosa</p></a>
                                            <a href="#" title="img4"> <img src="foodimages/thepla.jpg" alt="" height="150" width="198px" /><p>Thepla</p></a>
                                            <a href="#" title="img5"> <img src="foodimages/tomato-rice.jpg" alt="" height="150" width="198px"  /><p>Tomato Rice</p></a>
                                            <a href="#" title="img6"> <img src="foodimages/upma.jpg" alt="" height="150" width="198px" /><p>Upma</p></a>
			                 </div>
			               <span>           
			                <a href="#" data-ocarousel-link="left" style="float: left;" class="prev"> </a>
			                <a href="#" data-ocarousel-link="right" style="float: right;" class="next"> </a>
			               </span>
					   </div>
				     </div>  
				   </div>    		
    	       </div>
    	 
      </div>
  
				     </div>  
				   </div>    		
    	       </div>
    	  <div class="content_bottom" style="height:542px;">
    	    <div class="wrap" style="width:1150px">
    	    	<div class="content-bottom-left">
    	    		<div class="categories">
						   <ul>
                                                       <h3 style="padding-top: 13px;">Browse All Categories</h3>
                                                        <%
            try
            {
            myconnection obj=new myconnection();
            String q="select * from tbcategory ";
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
           
             while(rs.next())
            {
                
               
            %>
							      <li><a href="discovergreatfood.jsp?id=<%=rs.getInt("cid")%>"><%= rs.getString("cname")%></a></li>
							       <%
    
            }
        
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            
            
            
            
            
            
            %>
							       
						  	 </ul>
						</div>		
						<div class="buters-guide">
						<h3 style="padding-top: 13px;">Buyers Guide</h3>
						<p><span>We want you to be happy with your purchase.</span></p>	
						<p>So we're committed to giving you all the tools to make the right decision with minimum fuss. </p>
					  </div>	
					  
    	    	</div>
    	    	
            <div class="content-bottom-right" >
                    <h3 style="padding-top: 13px;" style="background: #fe9b00 !important">Browse All Categories</h3>
	            <div class="section group">
                         <%
            try
            {
//                int count=0;
            myconnection obj=new myconnection();
            String q="";
            if(request.getParameter("id")!=null)
                q="select * from tbitems  where cid="+request.getParameter("id");
            else
                q="select * from tbitems";
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
           String name=(String)session.getAttribute("username");
//               for(count=0;count<2;count++)
//               {
                   while(rs.next())
                   {
                       session.setAttribute("username",name);
            %>
				  <div class="grid_1_of_4 images_1_of_4">
                                      <h4 style="margin-top: 20px;"><a href=pdetails.jsp?iid=<%=rs.getInt("iid")%>"><%= rs.getString("iname")%></a></h4>
                                      <a href="pdetails.jsp?iid=<%=rs.getInt("iid")%>" style="margin-top: 20px;"><img src="foodimages/<%= rs.getString("image")%>" alt="" height="134px" width="198px" /></a>
					  <div class="price-details" style="margin-top: 12px;">
                                              <div class="price-number">
							<p><span class="rupees">Rs <%=rs.getInt("price")%></span></p>
					    </div>
					       		<div class="add-cart">								
                                                            <h4><a href="pdetails.jsp?iid=<%=rs.getInt("iid")%>">More Info</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>					 
				</div>
				   <%
    
            }
               
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            catch(NumberFormatException ne)
            {
                out.println(ne.getMessage());
            }
            
            
            
            
            
            %>
			  
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

<div class="footer1-bg">
<div class="wrap">
	<div class="copy">
			<p>© 2015 All rights Reserved | Design by Deepika Manchanda</p>
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

