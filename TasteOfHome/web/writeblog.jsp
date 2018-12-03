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
<script>
$(window).load(function() {
	$('.blueberry').blueberry();
});
</script>

</head>
<body>
    <%@include file="header.jsp" %>
    	    	
            <div class="content-bottom-right" >
                    <h3 style="padding-top: 13px;">ADMIN PANEL</h3>
	            <div class="section group">
                        <div id="d1">
                            
                            <form action="writeBlog1.jsp" method="POST" enctype="multipart/form-data">
        
            
            <input type="text" name="t1" value="" placeholder="Blog Name" /><br>
            
            <textarea name="t2" rows="4" cols="20" placeholder="Description">
            </textarea><br>
            
         Upload Image   <input type="file" name="r1" value=""  /><br>
            
         Status<input type="checkbox" name="cb1" value="ON" /><br>
            
            <input type="submit" value="SUBMIT" name="b1" /><br>
            
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
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"> </a>
    <script type="text/javascript" src="js/navigation.js"></script>
</body>
</html>

