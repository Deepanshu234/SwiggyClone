<%-- 
    Document   : checjsessio
    Created on : May 22, 2015, 5:08:42 AM
    Author     : deepika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CHECK SESSION</title>
    </head>
    <body>
       <%
           
           if(session.getAttribute("username")!=null)
           {
               response.sendRedirect("Checkout.jsp");
           }
           else
               response.sendRedirect("Checkout.jsp");
           %>
    </body>
</html>
