<%-- 
    Document   : checkusername
    Created on : Apr 30, 2015, 11:02:25 PM
    Author     : user
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
         
            String uname=request.getParameter("uname");
             try
             {
                 myconnection obj=new myconnection();
                 String q="select * from tbregister where username=?";
                 PreparedStatement pst=obj.db.prepareStatement(q);
               pst.setString(1, uname);
               ResultSet rs;
               rs=pst.executeQuery();
              // out.println(uname);
               if(rs.next())
                    {   // out.println("available");
                        out.println("red");

                    }
               else {
                       out.println("green");

                    }

                 
             }
             catch(Exception e)
             {
                 out.println(e.getMessage());
             }
            %>
    
