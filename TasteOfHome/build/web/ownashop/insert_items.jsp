<%-- 
    Document   : insert_cato
    Created on : Mar 26, 2015, 8:22:11 PM
    Author     : Deepika
--%>

<%@page import="classes.myconnection"%>
<%@page import="java.io.File"%>
<%@page import="java.util.UUID"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>



<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href="../css-discovergreatfood/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> 

<script src="js/jquery.openCarousel.js" type="text/javascript"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="js/bjqs-1.3.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    


            
    </head>
    <body>
        <div class="header-bg">
    <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home</span></div>
		<div class="top-nav">
	        <ul>
	            <li class="active"><a href="index.jsp">Home</a></li>
	            <li><a href="gallery.html">Gallery</a></li>
	            <li><a href="#">Blog</a></li>
	            <li><a href="signup.jsp">Login/Sign Up</a></li>
	            <li><a href="contact.html" style="padding-right: 44px;">Contact</a></li>
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
		        <li><a href="food.jsp" style="padding-left: 49px; padding-right: 40px;">Own A Shop</a></li>
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
                                                       <h3 style="padding-top: 13px;">Items</h3>
                                                       
                                                       <li><a onclick="getdata('insert_items.jsp','d1');">Insert Items</a></li>
                                                           <li><a onclick="getdata('edit_items.jsp','d1');">Edit Items</a></li>
                                                               <li><a onclick="getdata('delete_items.jsp','d1');">Delete Items</a></li>
							      
							       
						  	 </ul>
						</div>	
                    
                    
                    
                    
                    
                    <div class="categories">
						   <ul>
                                                       <h3 style="padding-top: 13px;">STATUS</h3>
                                                       
							     <li><a onclick="getdata('change_status.jsp','d1');">CHANGE STATUS</a></li>
                                                               <li><a onclick="getdata('change_passord.jsp','d1');">CHANGE PASSWORD</a></li>
                                                                      
							      
							       
						  	 </ul>
						</div>	
                    
                    
                    
                    
                    
                    
                    
                    
                   
                    
                    
                    
                    
                    
                    
							
					  
    	    	</div>
    	    	
            <div class="content-bottom-right" >
                    <h3 style="padding-top: 13px;">WELCOME</h3>
	            <div class="section group">
                        <div id="d1">
        
       <h1>Insert  Categories</h1>
      
					
           <form name="f1" method="POST" enctype="multipart/form-data">
            <%
                try
            {
            myconnection obj=new myconnection();
            String q="";
           
                q="select * from tbcategory";
           
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
                
                %>                
                
<div class="element">
                
                    
                SELECT CATOGERY  <select name ="s1" id="s1" >
                 <%
            String f="";
                    while(rs.next())
                {
                    f=rs.getString("cname");
                    %>
                    
                  <a href="edit_cato.jsp?id=<%=rs.getInt("cid")%>"> <option>
                   
                 <%= rs.getString("cname")%></a>
                    
                </option></a>
                <%
    
            }
        
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            
            
            
            
            
            
            %>
                </select>
						
					</div>
                 <div class="element">
                    TYPE  <select name="s2">
                         <option>Vegetarian</option>
                         <option>Non-Vegetarian</option>
                     
                     </select>
                                       
                                               
					</div>
                 <div class="element">
					<label for="category">Item Name</label>
                                        <input type="text" name="t1" id="t3"/>
                                       
                                               
					</div>
					<div class="element">
           </form>
                
			<label for="category">Image</label>
                                        <input type="file" name="t1" /><br/>
                                               <input type="submit" value="" name="b1" />
					</div>
               
                                     <div class="element">
					<label for="category">Price</label>
                                        <input type="text" name="t3" id="c1">
                                       
                                               
					</div>
                 <div class="element">
					<label for="category">Quantity</label>
                                        <input type="text" name="t4" id="t3"/>
                                       
                                               
					</div>
           
           <div class="element">
					<label for="category">Description</label>
                                        <input type="text" name="t4" id="t3"/>
                                       
                                               
					</div>
                 <div class="element">
					<label for="category">Status</label>
                                        <input type="checkbox" name="c1" id="t3"/>
                                       
                                               
					</div>
           
           <div class="entry">
                <input type="button" class="add" name="save"  value="save page"/> 
					</div>
	 <div id="d1">
                <b>  Your final outcome display here</b>
            </div>
                <%
                String getFieldName,itemName,first="",second;

boolean check=ServletFileUpload.isMultipartContent(request);
        if(check)
                       {
            FileItemFactory factory=new DiskFileItemFactory();//set temporary location to store files
            ServletFileUpload upload=new ServletFileUpload(factory);//set maximum size of file
            List items=null;
            try
                                       {
                
                items=upload.parseRequest(request);
                
                               }
            catch(FileUploadException e)
                                       {
              e.printStackTrace();
                               }
            String d="";
            Iterator itr =items.iterator();
            while(itr.hasNext()) {
                FileItem item=(FileItem)itr.next();
                if(item.isFormField())
                {
                                       }
                else
                                                {          
                    try
                                       {
                        getFieldName=item.getFieldName();
                        String key=UUID.randomUUID().toString();
                        itemName=key+".jpg";
                        if(getFieldName.equals("t1"))
                                                       {
                            if(item.getSize()==0)
                                                               {
                                out.println("image not uploaded");
                            }
                                                       else{
                                File savedFile=new File(config.getServletContext().getRealPath("/")+"userimage/"+itemName);
                                item.write(savedFile);
                                                       }
                        
                    
                    }
                               else if(getFieldName.equals("t2"))
                                                                                                     {  
                                   if(item.getSize()==0)
                                                                             {
                                       out.println("second image not uploaded");
                                   }
                                   else
                                                                             {
                                    File savedFile=new File(config.getServletContext().getRealPath("/")+"images2/"+itemName);
                                item.write(savedFile);
                                   
                                                                  }
                               }
                                               }
                     
                    catch(Exception e)
                                                       {
                                         out.println(e.getMessage());               
                        
                     
                                               }
                                       }
                       }

         }
                                                                            
            try{
                    
               myconnection obj=new myconnection();
                String q="insert into tbcategory(cname,rank,description,status) values(?,?,?,?)";
                PreparedStatement pst=obj.db.prepareStatement(q);
                pst.setString(1, request.getParameter("cname"));
               
                pst.setInt(2, Integer.parseInt(request.getParameter("rank")));
                pst.setString(3,request.getParameter("description"));
                pst.setBoolean(4,Boolean.getBoolean(request.getParameter("status")));
                pst.executeUpdate();
                
                out.println("data is inserted sucessfully");
             }
            
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
                
        %>
					
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
			<div class="footer-nav">
		    <h5>Home</h5>
					<ul>
						<li><a href="#">Locations</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Work</a></li>
					</ul>
					<div class="clear"></div>
			</div>
			<div class="footer-nav">
					<h5>About</h5>
					<ul>
						<li><a href="#">Advance</a></li>
						<li><a href="#">Inspire</a></li>
						<li><a href="#">Flourish</a></li>
					</ul>
			</div>
		   <div class="footer-nav">
					 <h5>Programs</h5>
					<ul>
						<li><a href="#">Advance</a></li>
						<li><a href="#">Inspire</a></li>
						<li><a href="#">Extend</a></li>
					</ul>
			</div>
			<div class="footer-nav">
					<h5>Schedule</h5>
					<ul>
						<li><a href="#">Advance</a></li>
						<li><a href="#">Inspire</a></li>
						<li><a href="#">Extend</a></li>
					</ul>
			</div>
			<div class="footer-nav1">
                	<h5>Contact</h5>
                    <ul>
                    	<li id="fb"><a href=""><img src="images/fb.png" alt="" title="facebook"></a></li>
                    	<li id="twr"><a href=""><img src="images/twr.png" alt=""  title="Twitter"></a></li>
                    	<li id="mail"><a href=""><img src="images/mail.png" alt="" title="Mail"></a></li>
                    	<li id="feed"><a href=""><img src="images/feed.png" alt="" title="Feed"></a></li>
					</ul>
             </div>
			<div class="clear"></div>
		</div>	
		</div>
</div>
<div class="footer1-bg">
<div class="wrap">
	<div class="copy">
			<p>© 2015 All rights Reserved | Design by Nupur Gupta</p>
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
