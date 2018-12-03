<%-- 
    Document   : ViewCart
    Created on : Apr 12, 2015, 7:51:37 PM
    Author     : VCI Panchkula
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="classes.Product" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table width="70%">
               
        <jsp:useBean id="cart" scope="session" class="classes.Cart" />
        <c:if test="${cart.lineItemCount==0}">
            <tr>
                <td>
                    No Products
                </td>
            </tr>
        </c:if>
            
            <c:forEach var="cartItem" items="${cart.allCartItems}" varStatus="counter">
                <form name="f1" method="post" action="CartController.jsp">
                    <tr>
                        
                        <td>
                            <c:out value="${cartItem.id}" />
                            <input type="hidden" value="${cartItem.id}" name="id" />
                              <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                               
                            <c:out value="${cartItem.name}" />
                            <input type="text" name="quantity"  size="2" value="${cartItem.quantity}" />
                            <input type="submit" name="action" value="Change Qty"/>
                            
                           <c:out value="${cartItem.price}" />
                           <c:out value="${cartItem.quantity}" />
                           <c:out value="${cartItem.totprice}" />
                           
                           <input type="submit" name="action" value="Delete"   onclick="return confirm('Are you sure you want to delete?')"/>
                        </td>
                    </tr>
j                     
                </form>
                
            </c:forEach>
            
             <c:if test="${cart.lineItemCount!=0}">
                 <tr>
                     <td>
                 <c:out value="${cart.orderTotal}" />
                     </td>
                 </tr>
             </c:if>
                 
                 <c:if test="${cart.lineItemCount!=0}">
                     <form method="post" action="CartController.jsp">
                         <input type="submit" name="action" value="Empty Cart"    onclick="return confirm('Are you sure you want to delete?')"/>
                
                     </form>
                     </c:if>
            
        </table>
    </body>
</html>
