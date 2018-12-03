<%@page import="java.util.ArrayList"%>
<%@page import="classes.Product"%>
<%@page import="classes.Cart"%>

<%@page import="java.util.Properties"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<html>
<head>
		<meta charset="utf-8">
                <link href="css/signup.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
<script type="text/javascript" src="js/move-top.js"></script>
                <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		
                <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<link href="css/elements.css" rel="stylesheet">
<script src="js/my_js.js"></script>

<script>
$(window).load(function() {
	$('.blueberry').blueberry();
});
</script>
<script>
function password()
{
    pass=document.getElementById("t3").value;
    conpass=document.getElementById("t4").value;
    if(pass!=conpass)
        {
            alert("Error: Please check that you have entered and confirmed the password correctly!");
        }
 
    
  }
</script>
<script type="text/javascript">
    


 var x=false;
            if(window.XMLHttpRequest)
                {
                    
                    x=new XMLHttpRequest();
                    
                }
                else if(window.ActiveXObject)
                        {
                            x=new ActiveXObject("Microsoft.XMLHTTP");
                            
                        }
                        function checkusername(obj)
                        {
                             
                            if(x)
                                {
                                    
                                    
                                    var uname=document.getElementById("t2").value;
                                    x.open("GET","checkusername.jsp?uname="+uname,true);
                                   
                                    x.onreadystatechange=function()
                                    {
                                          
                                          if(x.readyState==4 && x.status==200)
                                          {
                                            
                                              document.getElementById("t2").style.color=x.responseText;
                                          }
                                    }
                                    x.send(null);change
                                }
                        }

 

</script>
</head>
<body>
    <% 
    String uname=(String)session.getAttribute("username");
                   if(uname==null)
                   {
                       response.sendRedirect("signup.jsp");
                   }
                   %>
    <div class="header-bg">
     <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home</span></div>
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
<div class="wrap">
   
   
<div class="header">
<!--	<div class="logo">
  		<a href="index.html"><img src="images/logo.png" title="logo" alt=""> </a>
 	</div>-->

<div class="clear"></div>
</div>
</div>
</div>


    <div class="main" style="margin-top:10px; margin-bottom: 10px;">
       
        
        
        
        
        
        <form action="https://www.sandbox.paypal.com/webscr" method="post">

  <input type="hidden" name="cmd" value="_cart"/>
<input type="hidden" name="upload" value="1">

<!--<input type="hidden" name="deepika" value="tasteofhome6@gmail.com"/>-->

<input type="hidden" name="business" value="ishmahajan11-facilitator@gmail.com"/>

<input type="hidden" name="password" value="webtech123"/>

<input type="hidden" name="custom" value="1123"/>
       

<input type="hidden" name="TOKEN" value="OQeWlOAjAF8mb0-LHAUa-OQ9ZB4Gnn4khzJ6YGXDA-YP85Szs4VAelFOXXq"/>

<input type="hidden" name="tx" value="TransactionID"/>



 <input type="hidden" name="rm" value="2" />


 <%
         
         if(session.getAttribute("cart")!=null)
         {
             
         
         
          Cart cobj=(Cart)session.getAttribute("cart");
                             Product pobj;
                             ArrayList<Product> alCartItems=cobj.getAlCartItems();
                             
                             for(int i=0;i<alCartItems.size();i++)
                             {
                            //  buysession m=(buysession)session.getAttribute("buyer");
                               
                                 pobj=(Product)alCartItems.get(i);
                          
     
         
         
         %>



<input type="hidden" name="item_name_<%=i+1%>" value=<%=pobj.getName()%> />
<input type="hidden" name="amount_<%=i+1%>" value=<%=pobj.getPrice()%> />
<input type="hidden" name="quantity_<%=i+1%>" value=<%=pobj.getQuantity()%>  />



<%
                             }
         }

%>


<input type="submit" value="PayPal">
<input type="hidden" name="return" value="http://localhost:8080/shopkart/pay3.jsp"/>

<input type="hidden" name="cancel_return" value="http://localhost.54:8080/SSC/unsuccessfulPayment.jsp"/>


<input type="hidden" name="notify_url" value="http://localhost:8080/SSC/test.jsp"/>

</form>
			
	
		</div>
			<div class="clear"></div>

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
    </body>
</html>
