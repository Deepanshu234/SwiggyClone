<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Cbill"%>
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
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home
             </span></div>
		<div class="top-nav">
	        <ul>
                  
                       
	            <li class="active"><a href="index.jsp">Home</a></li>
	            <li><a href="gallery.jsp">Gallery</a></li>
	            <li><a href="blog.jsp">Blog</a></li>
                     <%
                        if(session.getAttribute("username")==null)
                        {
                        %>
                   
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Session"%>
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
	            <li><a href="contact.html" style="padding-right: 44px;">Contact</a></li>
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
		<div class="header" >
			<h1>Login or Create a Free Account!</h1>
		</div>
		<p></p>
                <form method="post">
				<ul class="left-form">
					<h2>New Account:</h2>
					<li>
						<input type="text" name="t1"  placeholder="Full Name" pattern="\w+" required/>
						
						<div class="clear"> </div>
					</li> 
                                        <li>
                                            <input type="text" name="t2"  id="t2" placeholder="Username" pattern="\w+" onblur="checkusername('t2');" required/>
						
						<div class="clear"> </div>
					</li>
					<li>
						<input type="email" name="t3"  placeholder="Email" required/>
						
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="password" name="t4"  placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"  id="t3" required/>
						
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="password" name="t5"  placeholder="Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" id="t4" required/>
					
						<div class="clear"> </div>
					</li> 
                                         
                                        
                                        <select style="width:443px;height:45px;" required="reuired" name="s1">
                                            <option>City</option>
                                                 <option>Chandigarh</option>
                                                  <option>Panchkula</option>
                                                   <option>Mohali</option> 
                                                   
                                            </select>
                                        <br>
                                       
<!--					<label class="checkbox"><input type="checkbox" name="password=rs.getString("password");checkbox" checked=""><i> </i>Please inform me of upcoming  w3layouts, Promotions and news</label>-->
<input type="submit"  value="Create Account" onclick="password()" name="b1">
						<div class="clear"> </div>
				</ul>
                                <%
                                    if(request.getParameter("b1")!=null && request.getParameter("t3")==request.getParameter("t4"))
                                    {
                                     String name,username,email,password,city,conpassword;
                                     name=request.getParameter("t1");
                                     username=request.getParameter("t2");
                                     email=request.getParameter("t3");
                                     password=request.getParameter("t4");
                                     conpassword=request.getParameter("t5");
                                     city=request.getParameter("s1");
//                                     if(password!=conpassword)
//                                     {
//                                         out.println("alert('JOB DONE');");
//                                     }
                                     try
                                     {
                                         myconnection obj=new myconnection();
                                         String q="Insert into tbregister(name,username,email,password,city) values(?,?,?,?,?)";
                                         PreparedStatement pst=obj.db.prepareStatement(q);
                                         pst.setString(1, name);
                                           pst.setString(2, username);
                                         pst.setString(3, email);
                                         pst.setString(4, password);
                                         pst.setString(5, city);
                                         
                                         pst.executeUpdate();
                                         response.sendRedirect("signup.jsp");
                                     }
                                     catch(SQLException e)
                                     {
                                         out.println(e.getMessage());
                                     }
                                    }
                                    %>
                        </form>
                        <form method="post">
				<ul class="right-form">
					<h3>Login:</h3>
					<div>
                                            <li><input type="text"  placeholder="Username" name="username" required/></li>
						<li> <input type="password"  placeholder="Password" name="password" required/></li>
                                                <h4 onclick="div_show()" style="cursor:pointer" >I forgot my Password!</h4>
							<input type="submit" value="Login" name="b1" id="b1">
                                                        <%
                                    if(request.getParameter("b1")!=null)
                                    {
                                        String username,password;
                                        username=request.getParameter("username");
                                        password=request.getParameter("password");
                                        try
                                        {
                                            myconnection obj1=new myconnection();
                                            String r="select * from tbregister where username=? and password=?";
                                            PreparedStatement pst1=obj1.db.prepareStatement(r);
                                            pst1.setString(1, username);
                                            pst1.setString(2, password);
                                            
                                            ResultSet rs1;
                                            rs1=pst1.executeQuery();
                                             
                                            if(rs1.next())
                                            {
                                               
                                                session.setAttribute("name", username);
                                                if(username.equals("admindeepika")&&password.equals("manchanda"))
                                                { session.setAttribute("adminusername", username);
                                                    response.sendRedirect("main.jsp");
                                                   
                                                }
                                                
                                                else
                                                {
                                                    session.setAttribute("username", username);
                                                    response.sendRedirect("index.jsp");
                                                }
                                                
                                            }
                                            else
                                            {
                                                out.println("invalid username and password");
                                            }
                                            
                                             
                                        }
                                        catch(SQLException e)
                                        {
                                            out.println(e.getMessage());
                                        }
                                    }
                                    %>
					</div>
					<div class="clear"> </div>
				</ul>
				<div class="clear"> </div>
					
			</form>
                        
<div id="abc">
<!-- Popup Div Starts Here -->
<div id="popupContact">
<!-- Contact Us Form -->
<form action="#" id="popupform" method="post" name="form">
<img id="close" src="images/cross.png" onclick ="div_hide()">
<h3>Forgot Password</h3>
<hr>
Please enter your email id below. We will send you a link to reset your password.<br>
Email <input id="pop" name="t1" placeholder="example@example.com" type="text">
<a href="javascript:%20check_empty()" style="margin-top: 15px;" id="submit" name="b5">Send</a>

        <%
                                
                                     try
                                     {
                                    if(request.getAttribute("b5")!=null)
                                         {
                                             
                                        
              String email=request.getParameter("t1");
            myconnection obj=new myconnection();
            String q="";
           
                q="select username,password from tbregister where username='email'";
           
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs1;
             rs1=pst.executeQuery();
            String pwd="";
          pwd=rs1.getString("password");
           
                
                            
           
           
            
            
            
            
            
            
            String host = "smtp.gmail.com";
String from = "vciinfotech.in@gmail.com";
String pass = "test01";
Properties props = System.getProperties();
props.put("mail.smtp.starttls.enable", "true"); // added this line
props.put("mail.smtp.host", host);
props.put("mail.smtp.user", from);
props.put("mail.smtp.password", pass);
props.put("mail.smtp.port", "587");
props.put("mail.smtp.auth", "true");

// Get the default Session object.
Session s1 = Session.getDefaultInstance(props, null);

try {
    // Create a default MimeMessage object.
    MimeMessage message = new MimeMessage(s1);

    // Set sender
    message.setFrom(new InternetAddress(email));

    // Set recipient
    message.addRecipient(Message.RecipientType.TO, new InternetAddress("rimpysharma81@hotmail.com"));

    // Set Subject: header field
    message.setSubject("we are learning java");

    // set content and define type
    message.setContent(pwd, "text/html; charset=utf-8");

    Transport transport = s1.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
  } catch (MessagingException mex) {
    System.out.println(mex.getLocalizedMessage());
    out.println(mex.getMessage());
    out.println(mex.getLocalizedMessage());
}

 }
        
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            
            %>
   

</form>
</div>
<!-- Popup Div Ends Here -->
</div>
			
	
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
        
         <%
                 Cshipping obj=(Cshipping)session.getAttribute("shipdetails");
                 
                Cbill obj1=(Cbill)session.getAttribute("billing");
            %>
            
        <%
            if(request.getParameter("b1")!=null)
            {
                
                Cshipping o=new Cshipping();
                o.setSlname(request.getParameter("slname"));
                o.setSphone(request.getParameter("sphone"));
               
                o.setSpincode(request.getParameter("Spincode"));
                o.setSfname(request.getParameter("sfname"));
                o.setSaddress(request.getParameter("saddress"));
                o.setScity(request.getParameter("scity"));
                o.setShippingcharges(request.getParameter("shippingchargers"));
                o.setSlocality(request.getParameter("slocatlity"));
                o.setSregion(request.getParameter("sregion"));
                o.setSubtotal(request.getParameter("subtotal"));
               
                
                session.setAttribute("shipdetails",o);
                
           
                   
                response.sendRedirect("confirm_order.jsp");
               
            }

%>
    </form>
                </td>
                <td style="position: absolute;padding-top: 50px">
            
     <fieldset style="width: 570px;border-style: solid;border-width: 2px;border-color: gray;float: right" >
                
           
            <jsp:useBean id="cart" scope="session" class="classes.Cart" />
		
            
            
            
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
                                    Delivered By <%  String name=(String)session.getAttribute("username");
                                            out.print(name);%>
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
                            Subtotal <c:out value="${cart.orderTotal}" />
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
                            Total   <c:out value="${cart.orderTotal}" />
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