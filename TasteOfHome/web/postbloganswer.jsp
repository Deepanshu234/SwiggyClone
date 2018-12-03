
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
		<link rel="stylesheet" href="../csss/style.css" type="text/css">
                <link href="../css/elements.css" rel="stylesheet">
<script type="text/javascript" src="js/move-top.js"></script>
                <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		
                <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<link href="css/elements.css" rel="stylesheet">
<script src="js/my_js.js"></script>
<title>POST BLOG ANSWER</title>
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
  
    <div class="header-bg">
     <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home</span></div>
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
	
                      <div align="center">

            
             <input type="hidden" name="qid" value="<%=request.getParameter("qid")%>">
              
             <h3>Your Answer</h3>   <textarea name="t1" rows="4" cols="20">
              </textarea>
              <input type="submit" value="submit" name="b1" />
              <%
               if(session.getAttribute("username")!=null)
        {
          
                 String b,username;
             int id,qid=0;
             id=0;
            
             b=request.getParameter("qid");
             username=(String)session.getAttribute("username");
             
            if(b!=null)
            {
                qid=Integer.parseInt(b); 
              }
            
              if(request.getParameter("b1")!=null)
                           {
                  
           
                     try
                            {
             myconnection obj=new myconnection();
           
            String q="insert into tbbloganswer(answer,qid,username) values(?,?,?)";
           PreparedStatement pst=obj.db.prepareStatement(q);
           
                  pst.setString(1,request.getParameter("t1"));
                  pst.setInt(2, qid);
                  
                  pst.setString(3,username);
                   pst.executeUpdate();
                   String name1=(String)session.getAttribute("username");
            session.setAttribute("username", name1);
                       
                     }
                     
                     
                  catch(SQLException e)
                                  {
                                       
                                       
                                   }
            
            
                      }
                       
        }
                else
       {
            response.sendRedirect("signup.jsp");
           
       }
            
            %>
            
            </form>
            
              </div>         
                            
                            
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