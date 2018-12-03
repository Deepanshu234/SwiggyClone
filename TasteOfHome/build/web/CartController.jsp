<%-- 
    Document   : CartController
    Created on : Apr 16, 2015, 12:05:05 PM
    Author     : user
--%>

<%@page import="classes.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CART CONTROLLER</title>
    </head>
    <body>
        <%
            String strAction=request.getParameter("action");
            if(strAction!=null)
            {
                if(strAction.equals("Add to Cart"))
                        {
                           addtoCart(request);
                        }
               else if(strAction.equals("Change Quantity"))
                {
                    updateCart(request);
                }
               else if(strAction.equals("Delete"))
                {
                    deleteCart(request);
                }
               else if(strAction.equals("Empty Cart"))
                {
                     emptyCart(request);
                }
                response.sendRedirect("ViewCart.jsp");
            }
            %>
                  
            
            
            
            <%!
                
                protected void addtoCart(HttpServletRequest request)
                {
                     HttpSession session=request.getSession();
                int id,quantity;
                int price;
                String name;
                id=Integer.parseInt(request.getParameter("iid"));
                name=request.getParameter("iname");
                price=Integer.parseInt(request.getParameter("price"));
                quantity=Integer.parseInt(request.getParameter("quantity"));
                Cart obj;
                if(session.getAttribute("cart")!=null)
                {
                    obj=(Cart)session.getAttribute("cart");
                }
                else
                {
                    obj=new Cart();
                    session.setAttribute("cart", obj);
                }
                obj.addCartItem(id, name, price, quantity);
                 session.setAttribute("cart", obj);
                }
                %>
                
                <%!
                
                public void updateCart(HttpServletRequest request)
                
           
            {
                int qty=Integer.parseInt(request.getParameter("quantity"));
                int index=0,id;
                HttpSession session=request.getSession();
                Cart obj=(Cart)session.getAttribute("cart");
                if(request.getParameter("itemIndex")==null)
                {
                    id=Integer.parseInt(request.getParameter("iid"));
                    index=obj.getIndex(id)+1;
                    
                }
                else
                {
                    index=Integer.parseInt(request.getParameter("itemIndex"));
                    obj.UpdateCartItem(index, qty);
                }
            }
            
            %>
            
            <%!
                public void deleteCart(HttpServletRequest request)
                {
                   HttpSession session=request.getSession();
                    int index=Integer.parseInt(request.getParameter("itemIndex"));
                    Cart obj=(Cart)session.getAttribute("cart");
                   obj.deleteCartItem(index);
                    
                    
                }
                
                %>
                
                <%!
                public void emptyCart(HttpServletRequest request)
                {
                    HttpSession session=request.getSession();
                     Cart obj=(Cart)session.getAttribute("cart");
                     
                     obj.emptyCart();
                    
                }
                %>
    </body>
</html>
