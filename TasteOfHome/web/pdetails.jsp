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
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> 
<script src="js/jquery.openCarousel.js" type="text/javascript"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<link href="css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all"/>
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
<title>PRODUCTS DETAILS</title>

<script>
$(window).load(function() {
	$('.blueberry').blueberry();
});
</script>
<style>
   .share-desc input[type="submit"] {
  border: none;
  outline: none;
  color: #fff;
  background:#FE9B00;
  padding: 0.5em 1.5em;
  font-size: 1em;
  font-weight: 300;
  text-transform: uppercase;
  margin-top: 1.5em;
  letter-spacing: 1px;
  -webkit-appearance: none;
  transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
  -ms-transition: 0.5s all;
}
.share-desc input[type="submit"]:hover{
  background:#833000;
}
    </style>
 <script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion           
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
   </script>		
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
	  <script src="js/star-rating.js" type="text/javascript"></script>
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
	            <li><a href="contact.jsp" style="padding-right: 44px;">Contact</a></li>

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

   
   

    <div class="container1">
    <div class="header1" style="padding-bottom: 0px">
			<div class="logo1">
                            <a href="index.html"><img src="images/logo.png" style="margin-left: 113px" class="img-responsive" alt="" width="204px"></a>
			
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
</div>

<div class="clear"></div>
<div class="body-bg">
<div class="wrap">
    <div class="b-main" style="
    padding-top: 26px;
    width: 1348px;
    padding-left: 24px;
">

       <!------------End Header ------------>
   <div class="main" style="
    width: 1189px;
">
   	 <div class="wrap" style="
    margin-left: 0px;
    margin-right: 0px;
    width: 1162px;
">
   	 	<div class="preview-page">
   	 	       <div class="section group">
				<div class="cont-desc span_1_of_2">
					<ul class="back-links" style="background: #fe9b00 !important;color:white !important">
                                            <li><a href="#" style="color:white !important">Home ::</a></li>
						<li><a href="#" style="color:white">Discover Great Food ::</a></li>
						<li style="color:white">Product Name</li>
						<div class="clear"> </div>
					</ul>
				  <div class="product-details">	
                                      <form name="f1" action="CartController.jsp">
					<div class="grid images_3_of_2">
                                          
							<ul id="etalage">
                                                            <%
                                                                 try
            {
                String q="Select * from tbitems where iid=?";
                
                myconnection obj=new myconnection();
                PreparedStatement pst=obj.db.prepareStatement(q);
                pst.setInt(1, Integer.parseInt(request.getParameter("iid")));
                ResultSet rs;
                rs=pst.executeQuery();
                int pid=Integer.parseInt(request.getParameter("iid"));
                int price=0;
                String imgName="",iName="",description="",type="";
                if(rs.next())
                {
                    iName=rs.getString("iname");
                    price=rs.getInt("price");
                    description=rs.getString("description");
                    imgName=rs.getString("image");
                    type=rs.getString("type");
                    %>
                                                            
							<li>
								<a href="optionallink.html">
                                                                      <input type="hidden" name="iid" value="<%=pid%>" />
									<img class="etalage_thumb_image" src="foodimages/<%=imgName%>" />
									
								</a>
							</li>
							
						</ul>
                                                                        
				     </div>
				   <div class="desc span_3_of_2">
                                       <input type="hidden" name="name" value="<%=iName%>" />
                                       <h2><%=iName%></h2>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>					
					<div class="price">
                                             <input type="hidden" name="price" value="<%=price%>" />
						<p>Price: <%=price%></p>
					</div>
					<div class="available">
						<ul>
						  <li><span>Type:</span><%=type%></li>
						  
					    </ul>
					</div>
				<div class="share-desc">
					<div class="share">
                                             <jsp:useBean id="cart" scope="session" class="classes.Cart" />
						<p>Number of units :</p><input type="text" name="quantity" value="${cart.getQuantity(param.id)}" style="width: 43px;height: 42px;text-align: center;font-size: 26px;" required />
   
    
    			
					</div>
					<div class="button"><span><input type="submit" value="${cart.getQuantity(param.id)==0?'Add to Cart':'Change Quantity'}" name="action" /></span></div>					
					<div class="clear"></div>
                                       
                        <%
                    int qty=0;
                    %>
                    
                   
                    
                    
                                        
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
				 
			</form>	
			</div>
			<div class="clear"></div>
		  </div>
		<div class="product_desc">	
			<div id="horizontalTab">
				
				<div class="resp-tabs-container">
					
				 
				  

				
			  </div>
		    </div>
	    </div>
      </div>
				   <div class="rightsidebar span_3_of_1 sidebar">
					<h3>Popular Products</h3>
					<ul class="popular-products">
						<li>
                                                    <%
                                                        try
                                                        {
                                                            myconnection obj=new myconnection();
                                                        
          
               String q="select * from tbitems  where rank<=4";
        
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
            
            while(rs.next())
            {
                                                        
                                                        
                                                        %>
                                                               
							 <h4><a href="preview.html"><a href='pdetails.jsp?iid="+rs.getInt("iid")+"'><%= rs.getString("iname")%></a></h4>
							  <a href="preview.html"><img src="foodimages/<%= rs.getString("image")%>" alt="" /></a>
							  <div class="price-details">
						       <div class="price-number">
									<p><span class="rupees">Rs <%=rs.getInt("price")%></span></p>
							    </div>
							       		<div class="add-cart">								
											<h4><a href="preview.html">More Info</a></h4>
									     </div>
									 <div class="clear"></div>
							</div>					 
						</li>
                                                
                                                
                                                <%
            }
                                                        }
                                                        catch(SQLException e)
                                                        {
                                                            out.println(e.getMessage());
                                                        }
                                                        
                                                        %>
<!--						<li>
							 <h4><a href="preview.html">Whirlpool LTE5243D 3.4 CuFt.... </a></h4>
							  <a href="preview.html"><img src="images/product-img3.jpg" alt="" /></a>
							  <div class="price-details">
						       <div class="price-number">
									<p><span class="rupees line-through">$899.95 </span> &nbsp; <span class="rupees">$839.93 </span></p>
							    </div>
							       		<div class="add-cart">								
											<h4><a href="preview.html">More Info</a></h4>
									     </div>
									 <div class="clear"></div>
							</div>					 
						</li>
						<li>
							 <h4><a href="preview.html">Whirlpool LTE5243D 3.4 CuFt.... </a></h4>
							  <a href="preview.html"><img src="images/product-img4.jpg" alt="" /></a>
							  <div class="price-details">
						       <div class="price-number">
									<p><span class="rupees line-through">$899.95 </span> &nbsp; <span class="rupees">$839.93 </span></p>
							    </div>
							       		<div class="add-cart">								
											<h4><a href="preview.html">More Info</a></h4>
									     </div>
									 <div class="clear"></div>
							</div>					 
						</li>-->
				     </ul>
				    
      				   
					</div>
 		 		   </div>
 		 		</div>
   	 		</div>
   	 		
        </div>
        
   
       <div class="clear"></div>

<div class="footer1-bg" width="1349px">

	<div class="copy">
			<p>© 2015 All rights Reserved | Design by Nupur Gupta</p>
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

