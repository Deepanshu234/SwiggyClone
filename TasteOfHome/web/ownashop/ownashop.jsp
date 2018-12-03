

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<html>
    
    
    
</html>
<body>
    <%if(session.getAttribute("username")!=null)
    {
        String name=(String)session.getAttribute("username");
        
                                     try
                                        {
                                            myconnection obj1=new myconnection();
                                            String r="select * from tbseller where username='"+name+"'";
                                            PreparedStatement pst1=obj1.db.prepareStatement(r);
                                         
                                          
                                            
                                            ResultSet rs1;
                                             rs1=pst1.executeQuery();
                                            
                                                    
                                          if(rs1.next())
                                            {
                                                String uname=rs1.getString("username");
                                                
                                                session.setAttribute("sellername",name);
                                                if(name.equals(uname))
                                                
                                                {
                                                   
                                                     session.setAttribute("sellername", name);
                                                     response.sendRedirect("ownashop2.jsp");
                                                  }
                                              
                                            else
                                            {
                                                 session.setAttribute("username",name);
                                                     response.sendRedirect("ownashop.jsp");
                                            }
                                               }
                                          }
                                        catch(SQLException e)
                                        {
                                            out.println(e.getMessage());
                                        }
    }
   
    else
    {
        response.sendRedirect("../signup.jsp");
}
    
 
    %>
</body>
</html>