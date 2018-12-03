<%-- 
    Document   : index
    Created on : Mar 27, 2015, 11:13:04 AM
    Author     : user--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
<title>TASTE OF HOME</title>

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
                    <%String name=(String)session.getAttribute("username");
            session.setAttribute("username", name);
                        %>
                       
	            <li class="active"><a href="index.jsp">Home</a></li>
	            <li><a href="gallery.jsp">Gallery</a></li>
                    
	            <li><a href="blog.jsp">Blog</a></li>
                    
                    
                     <%
                        if(session.getAttribute("username")!=null)
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
                    %>
                </form>
          
                
                 
      
	           
	        </ul>
	    </div>
	    <div class="clear"> </div>
    </div>
<!--<div class="wrap">
   
   
<div class="header">
	<div class="logo">
            <a href="index.jsp"><img src="images/logo.png" title="logo" alt=""> </a>
 	</div>
<div class="menu">
    <nav style="padding-top: 40px; padding-bottom: 40px">
        <a href="index.jsp"><img src="images/logo.png" title="logo" alt=""> </a>
		    <ul class="sf-menu">
                        
		        <li class="current" style="width:144px;"><a href="index.jsp" style="padding-left: 49px; padding-right: 40px;">Home</a></li>
		        <li><a href="about.jsp" style="padding-left: 40px; padding-right: 45px;" >About</a></li>
                        <li><a href="discovergreatfood.jsp" style="padding-left: 49px; padding-right: 40px;">Discover Great Food</a></li>
		        <li><a href="pizza.html" style="padding-left: 49px; padding-right: 40px;">Own A Shop</a></li>
		        <li><a href="contact.jsp" >Contact</a></li>
		    </ul>
		    <div class="clear"></div>
		</nav>
</div>-->
<div class="container1">
    <div class="header1" style="padding-bottom: 0px">
			<div class="logo1">
                            <a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt="" style="padding-left: 6px;padding-bottom: 10px;margin-left: 178px; width: 212px;height: 138px"></a>
    
                           
			
				<div class="head-nav1">
					<span class="menu1"> </span>
						<ul class="cl-effect-16">
                                                    <li><a href="index.jsp" data-hover="HOME" style="color: black">home</a></li>
							<li><a href="about.jsp" data-hover="ABOUT US">about us</a></li>
                                                        <li><a href="discovergreatfood.jsp" data-hover="DISCOVER GREAT FOOD">discover great food</a></li>
							<li><a href="ownashop/ownashop.jsp" data-hover="OWN A SHOP">own a shop</a></li>
							
							<li><a href="contact.jsp" data-hover="CONTACT US">contact us</a></li>
                                                         
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
<div class="clear"></div>
</div>

<div class="slider-bg">
    <div class="wrap" >
<div class="slider">
<div class="blueberry">
      <ul class="slides" style="height: 400px;">
           
          <li style="display: list-item;" class="active"><img src="img/banner1.jpg" alt="" height="400"></li>
        <li style="display: none;" class=""><img src="img/banner2.jpg" height="400" alt=""></li>
        
        
        <li style="display: none;" class=""><img src="img/banner3.jpg" height="400" alt=""></li>
        <li style="display: none;" class=""><img src="img/banner4.jpg" height="400" alt=""></li>
        
       </ul>
    <ul class="pager"><li class="active"><a href="#"><span>0</span></a></li>
        <li class=""><a href="#"><span>1</span></a></li>
        
        <li class=""><a href="#"><span>2</span></a></li>
        <li class=""><a href="#"><span>3</span></a></li>
       
        </ul></div>
</div>
<div class="clear"></div>
</div>
</div>
<div class="clear"></div>
<div class="body-bg">
<div class="wrap">
<div class="b-main">
<div class="content">
		<div class="content-grids">
      		<div class="content-grid">
      			<ul>
                            <li><img src="foodimages/latest-product/kadahi-panner.jpg" title="pic1" alt="" height="200" width="250"></li>
      				<li><h4> Lorem ipsum dolor sit amet</h4></li>
      				<li><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></li>
      				<li><a href="#">Details</a></li>
      			</ul>
      		</div>
      		<div class="content-grid">
      			<ul>
                            <li><img src="foodimages/latest-product/chicken-pie.jpg" title="pic2" alt="" height="200" width="250"></li>
      				<li><h4>Sed do eiusmod tempor incididunt</h4></li>
      				<li><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate</p></li>
      				<li><a href="#">Details</a></li>
      			</ul>
      		</div>
      		<div class="content-grid">
      			<ul>
                            <li><img src="foodimages/latest-product/cheese-cake.jpg" title="pic3" alt="" height="200" width="250"></li>
      				<li><h4> Reprehenderit in voluptate</h4></li>
      				<li><p>dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estlsikaos</p></li>
      				<li><a href="#">Details</a></li>
      			</ul>
      		</div>
      <div class="clear"></div>
      </div>
<div class="cnt-btm">
<div class="grid-list-main">
		<h4>Special Offers</h4>
		<div class="grid-list">
		<div class="grid-list-pic1">
			<img src="images/pic1.jpg" alt="">
		</div>
		<div class="grid-list-para">
		<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy </p>
		</div>
		<div class="clear"></div>
		</div>
		
		<div class="grid-list">
		<div class="grid-list-pic1">
			<img src="images/pic2.jpg" alt="">
		</div>
		<div class="grid-list-para">
		<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy </p>
		</div>
		<div class="clear"></div>
		</div>
		<div class="grid-list1">
		<div class="grid-list-pic1">
			<img src="images/pic3.jpg" alt="">
		</div>
		<div class="grid-list-para">
		<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy  </p>
		</div>
		<div class="clear"></div>
		</div>
		<div class="grid-list1">
		<div class="grid-list-pic1">
			<img src="images/pic4.jpg" alt="">
		</div>
		<div class="grid-list-para">
		<p>Lorem Ipsum is simply dummy text of the printing and try. Loretypesetting indusm Ipsum has been the industry's standard </p>
		</div>
		<div class="clear"></div>
		</div>
		</div>
		<div class="sidebar"> 
		<h4>Services</h4>
 		<div class="grid-nav">
		<ul>
			<li><a href="">Curabitur in nisi eget nulla ndusm </a></li>
			<li><a href="">Etiam vitae nulla pretium est ndusm</a></li>
			<li><a href="">Nam bibendum tempus ante, ndusm</a></li>
			<li><a href="">Integer vitae nulla non felis ndusm </a></li>
			<li><a href="">Etiam vitae nulla pretium est ndusm </a></li>
		</ul>	
	</div>
	</div>
	<div class="clear"></div>
</div>
<div class="clear"></div>
</div>
<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
	
		

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
