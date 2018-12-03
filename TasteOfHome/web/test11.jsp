<%-- 
    Document   : test11
    Created on : Nov 28, 2018, 11:05:35 PM
    Author     : Windows 8.1
--%>

<%@page import="classes.myconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            
            try
            {
                myconnection obj=new myconnection();
                String q="select * from tbregister";
                PreparedStatement pst=obj.db.prepareStatement(q);
                ResultSet rs=pst.executeQuery();
                while(rs.next())
                {
                    
                }
               
            }
            catch(Exception e)
            {
                out.println(e.getMessage());
            }
            
            
            %>
        
    </body>
</html>
