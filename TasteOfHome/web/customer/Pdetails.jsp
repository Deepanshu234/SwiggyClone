<%-- 
    Document   : Pdetails
    Created on : Apr 12, 2015, 6:45:57 PM
    Author     : VCI Panchkula
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<%@page import="java.sql.SQLException"%>
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
            String q="select * from tbitems where iid="+request.getParameter("id");
            myconnection obj=new myconnection();
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
            int pid=Integer.parseInt(request.getParameter("id"));
            double price=0;
            String imgName="",pName="",description="";
            if(rs.next())
            {
                pName=rs.getString("iname");
                price=rs.getDouble("price");
                description=rs.getString("description");
                imgName=rs.getString("image");
                
                %>
                <form name="f1" action="CartController.jsp">
                    <input type='hidden' name='id' value="<%=pid%>" />
                    <img src="images/<%=imgName%>" width="120" height="200" />
                    <input type="hidden" name="name" value="<%=pName%>" />
                    <br/>
                    <%=pName%>
                    <input type="hidden" name="price" value="<%=price%>" />
                    <br/>
                    <b> Price is : <%=price%></b><br/>
                    
                    
                    <jsp:useBean id="cart" scope="session" class="classes.Cart" />
                   
                    <%
                    int qty=0;
                    %>
                    <input type="number" name="quantity"  value="${cart.getQuantity(param.id)}" required />
                   
                                             
                   <input type="submit"  value="${cart.getQuantity(param.id)==0?'Add To Cart':'Change Qty'}"    name="action" class="buy"/>
                                               
                <%
            }
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            %>
    </body>
</html>
