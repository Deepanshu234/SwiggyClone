
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<html>
<head>
		
                
                
                <link rel="stylesheet" href="../css/styles.css" type="text/css" media="all" />



		
		
                
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>




</head>
<body>
    <div class="header-bg">
     
      <!-- End Categories -->
      <%
            try
            {
            myconnection obj=new myconnection();
            String q="";
            if(request.getParameter("id")!=null)
                q="select * from tbitems  where cid="+request.getParameter("id");
            else
                q="select * from tbitems";
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
            %>
                
            
    <!-- Products -->
      <div class="products">
        <div class="cl">&nbsp;</div>
        <ul>
            <%
            while(rs.next())
            {
                %>
                <form action="Pdetails.jsp" method="POST">
               
                    <input type="hidden" name="id" value="<%=rs.getInt("iid")%>"/>
                <li> <a href="#"><img src="../foodpics/northindian/<%= rs.getString("image")%>" width="250px" height="180px" alt="" /></a>
            <div class="product-info">
              <h2><%= rs.getString("iname")%></h2>
              <div class="product-desc">
              
                <strong class="price">Rs <%=rs.getInt("price")%></strong> 
              </div>
				
	<div class="cl">&nbsp;</div>
		<inputtype="submit" value="ADD TO CART" /> 
                
                </form>
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
        </ul>
        <div class="cl">&nbsp;</div>
      </div>
      <!-- End Products -->
    
       
      
   
     
    </div>
    <!-- End Sidebar -->
    <div class="cl">&nbsp;</div>

  <!-- End Main -->
    
    
    </div>
      
    
     
	 

    <!-- End Sidebar -->
    <div class="cl">&nbsp;</div>
  
  <!-- End Main -->
  
  
  
  
  
    
    
   
			
	
</body>
</html>