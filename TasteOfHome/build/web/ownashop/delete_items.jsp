<%-- 
    Document   : delete_cat
    Created on : Apr 29, 2015, 10:11:33 AM
    Author     : deepika
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form>
            <%
                try
            {
            myconnection obj=new myconnection();
            String q="";
           
                q="select * from tbcato";
           
        
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
                     <input type="submit" name="b1" value="delete" >
                 </div>
                    </form>
            
              <%
                
            try
            {
               
                if(request.getParameter("b1")!=null)
                 {
                     String selected_category;
                     selected_category=request.getParameter("s1");
            myconnection obj=new myconnection();
            String r="delete from tbcategory where cname=?";
            
                         PreparedStatement pst1=obj.db.prepareStatement(r);
                         pst1.setString(1, selected_category);
                         ResultSet rs;
                         rs=pst1.executeQuery();
                         String q="delete from tbitems where cid=?";
                         PreparedStatement pst2=obj.db.prepareStatement(q);
                          ResultSet rs1;
                         rs1=pst2.executeQuery();
                
            
   
                 }
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            
            
            
            
            
            
            %>
            
              
            
            
    
            
            
             </form>
            
    </body>
</html>
