
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
<title>SIGNUP</title>
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
                   if(uname!=null)
                   {
                     //  response.sendRedirect("signup.jsp");
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
						<!--<input type="password" name="t4"  placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"  id="t3" required/>-->
                                                
                                                <input type="password" name="t4"  placeholder="Password"   id="t3" required/>
						
						<div class="clear"> </div>
					</li> 
					<li>
						<!--<input type="password" name="t5"  placeholder="Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" id="t4" required/>-->
					
                                                
                                                <input type="password" name="t5"  placeholder="Confirm Password"  id="t4" required/>
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
                                    if(request.getParameter("b1")!=null && request.getParameter("t3")!=null && request.getParameter("t4")!=null)
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
                                         String q="Insert into tbregister(name,username,email,password,city,custid) values(?,?,?,?,?,?)";
                                         PreparedStatement pst=obj.db.prepareStatement(q);
                                         pst.setString(1, name);
                                           pst.setString(2, username);
                                         pst.setString(3, email);
                                         pst.setString(4, password);
                                         pst.setString(5, city);
                                         pst.setInt(6,11);
                                         pst.executeUpdate();
                                         out.println("record is inserted successfully!");
                                         //response.sendRedirect("sendemail.jsp");
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
    message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));

    // Set Subject: header field
    message.setSubject("we are learning java");

    // set content and define type
    message.setContent("YOUR PASSWORD IS "+pwd, "text/html; charset=utf-8");

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