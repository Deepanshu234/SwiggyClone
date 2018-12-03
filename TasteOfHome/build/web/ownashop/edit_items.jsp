<%-- 
    Document   : edit_cato
    Created on : Apr 7, 2015, 10:32:25 PM
    Author     : deepika
--%>

<%@page import="classes.myconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <form>
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
            <div class="entry">
                     <input type="button" name="b1" value="Edit" >
                 </div>
                    </form>
            
              <%
                
            try
            {
               
                if(request.getParameter("b1")!=null)
                 {
                     
                     
            myconnection obj=new myconnection();
            String r="Select * from tbitems where cid=?";
                         PreparedStatement pst1=obj.db.prepareStatement(r);
                        
                         ResultSet rs;
                         rs=pst1.executeQuery();
            %>
                
            
   
            <%
            while(rs.next())
            {
                String iname,description,image,sellername;
                             Boolean status;
                             int rank,quantity,price;
                             
                             iname=rs.getString("iname");
                             sellername=rs.getString("sellername");
                             status=rs.getBoolean("status");
                             rank=rs.getInt("rank");
                             quantity=rs.getInt("quantity");
                             price=rs.getInt("price");
                             image=rs.getString("image");
                             
                             description=rs.getString("description");
                %>
                <form action="editdta.jsp">
               Item NAME   <input type="text" name="name" value="<%=rs.getString("iname")%>"/><br>
                Price <input type="text" name="status" value="<%=rs.getInt("price")%>"/><br>
                Rank<input type="text" name="rank" value="<%=rs.getInt("rank")%>"/><br>
                Status<input type="text" name="status" value="<%=rs.getBoolean("status")%>"/><br>
                Image<input type="text" name="image" value="<%=rs.getString("image")%>"/><br>
                quantity<input type="text" name="quantity" value="<%=rs.getInt("quantity")%>"/><br>
                DESCription <input type="description" name="id" value="<%=rs.getString("description")%>"/><br>
                 Seller NAME   <input type="text" name="name" value="<%=rs.getString("sellername")%>"/><br>
          <input type="button" value="save change" name="b2" id="b2"/>
           

      <%
    
            }
            }
        
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            
            
            
            
            
            
            %>
            
              
            
            <%
             try
            {
               
                if(request.getParameter("b2")!=null)
                 {
                     
                     myconnection obj=new myconnection();
                     String iname,description,image,sellername;
                     
                     int rank,quantity,price;
                     Boolean status;
                     iname=request.getParameter("name");
                       sellername=request.getParameter("sellername");
                     rank=Integer.parseInt(request.getParameter("rank"));
                     status=Boolean.getBoolean(request.getParameter("status"));
                     description=request.getParameter("description");
            String r="insert into tbitems(iname,description,image,price,quantity,rank,status,sellername) values(?,?,?,?,?,?,?)";
                         PreparedStatement pst=obj.db.prepareStatement(r);
                pst.setString(1, request.getParameter("iname"));
                pst.setString(2,request.getParameter("description"));
                pst.setString(3,request.getParameter("image"));
                 pst.setInt(4, Integer.parseInt(request.getParameter("price")));
                          pst.setInt(5, Integer.parseInt(request.getParameter("quantity")));
                                   pst.setInt(6, Integer.parseInt(request.getParameter("rank")));
                 pst.setBoolean(7,Boolean.getBoolean(request.getParameter("status")));
                    pst.setString(8, request.getParameter("sellername"));
                
                pst.executeUpdate();
                
                out.println("data is inserted sucessfully");
                         
                         ResultSet rs;
                         rs=pst.executeQuery();
                     
                     
                     
                     
                 
            }
             
            }
                catch(SQLException e)
                {
                    out.println(e.getMessage());
                }
                 
             
             
            %>
       
             
    
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
            
             </form>
            
            
     
    </body>
</html>
