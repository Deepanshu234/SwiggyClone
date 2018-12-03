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
                    
                    <li><a href="userchangepass.jsp" style="padding-right: 44px;">Change password</a></li>
	            <li><%=session.getAttribute("username")%>
                               </li>
          
                        
            <div class="profile-actions">
                <form>
                    <input type="submit" id="logout" name="logout" class="button" value="Log Out"/>


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
     <form align="center" name="f1">

       <div class="register-top-grid">

<div class="wow fadeInLeft" data-wow-delay="0.4s">
        <span> Enter username<label>*</label></span>
       <input type="text" name="t4" value="" />
 </div>
        
 <div class="wow fadeInLeft" data-wow-delay="0.4s">
        <span> Enter Old Password<label>*</label></span>
       <input type="password" name="t1" value="" />
 </div>
          <div class="wow fadeInRight" data-wow-delay="0.4s">
          <span>Enter New Password<label>*</label></span>
           <input type="password" name="t2" value="" />
   </div>
   <div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Re-enter Password<label>*</label></span>
           <input type="password" name="t3" value="" />
           </div>
 <%
 
 if(session.getAttribute("username")!=null)
 {
     
 String  a=(String)session.getAttribute("username");
 %>
          
          <%
 }
          %>
            
       </div>
           <div class="clearfix"> </div>
 <div class="single-but">
				   
     <input type="submit" value="submit" name="b1"></div>
<div class="clearfix"> </div>
            <%
                if(request.getParameter("b1")!=null)
                {
            try
            {
                String a,b,c,u;
                a=request.getParameter("t1");
                b=request.getParameter("t2");
                c=request.getParameter("t3");
                 u=request.getParameter("t4");
                 
                if(b.equals(c))
                {
                myconnection obm=new myconnection();
                String sm="update tbregister set password=? where username='"+u+"'";
                PreparedStatement pstm=obm.db.prepareStatement(sm);
                pstm.setString(1,c);
                
                pstm.executeUpdate();
                
                }
                else
                {
                    out.println("new password doesn't match with rentered password");
                }
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
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