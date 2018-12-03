<%-- 
    Document   : toconfirm
    Created on : Apr 30, 2015, 5:50:40 PM
    Author     : sony
--%>

<%@page import="classes.cshipping"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function check()
            {
                
                if(document.getElementById("c1").checked)
                {
                    
                    document.getElementById("st1").value=document.getElementById("t1").value;
                   document.getElementById("st2").value=document.getElementById("t2").value;
                   document.getElementById("st3").value=document.getElementById("t3").value;
                   document.getElementById("st4").value=document.getElementById("t4").value;
                   document.getElementById("st5").value=document.getElementById("t5").value;
                   document.getElementById("st6").value=document.getElementById("t6").value;
        }
        else
        {
             document.getElementById("st1").value="";
                   document.getElementById("st2").value="";
                   document.getElementById("st3").value="";
                   document.getElementById("st4").value="";
            document.getElementById("st5").value="";
             document.getElementById("st6").value="";
        }
            }
            
        </script>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <div class="main">
        <div class="container">
<ul class="product-head">
    <li><a href="ViewCart.jsp">Cart</a> <span>::</span></li>
<li class="active-page">shipping details</li>
<div class="clear"> </div>
</ul>
<div class="register">
    <form>
        <%
        buysession obj=(buysession)session.getAttribute("buyer");
        if(obj!=null)
       {
        %>
       <div class="register-top-grid">
<h3>Billing Details</h3>
 <div class="wow fadeInLeft" data-wow-delay="0.4s">
        <span>Billing address<label>*</label></span>
        <input type="text" name="t1" id="t1" value=<%=obj.getSaddress()%> required> 
 </div>
          <div class="wow fadeInRight" data-wow-delay="0.4s">
          <span>Contact<label>*</label></span>
          <input type="text" id="t2" name="t2" value=<%=obj.getContact()%> required> 
   </div>
   <div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Email Address<label>*</label></span>
           <input type="text" name="t3" id="t3" value=<%=obj.getEmail()%> required/>
           </div>  
            <div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Name<label>*</label></span>
           <input type="text" name="t4" id="t4" value=<%=obj.getFname()+' '+obj.getLname() %> required/>
            </div>

<div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Pincode<label>*</label></span>
           <input type="text" name="t5" id="t5" value=<%=obj.getPincode()%>  required/>
            </div>
<div class="wow fadeInRight" data-wow-delay="0.4s">
<span>city<label>*</label></span>
<input type="text" name="t6" id="t6" value=<%=obj.getCity()%> required/>

 </div>
<div class="wow fadeInRight" data-wow-delay="0.4s">
<span>shipping details same as above<label>*</label></span>
 <input type="checkbox" id="c1" name="c1" value="ON" onchange="check()" />
 </div>

       </div>
        <%
        }
       %>
       <%
        
         if(session.getAttribute("shipdetails")==null)
         {
                
           
        %>
       <!--shipping details--->
<div class="register-bottom-grid">
    
     <h3>Shipping Details</h3>
     
     <div class="wow fadeInLeft" data-wow-delay="0.4s">
        <span>Shipping address<label>*</label></span>
        <input type="text" name="st1" id="st1" required> 
 </div>
          <div class="wow fadeInRight" data-wow-delay="0.4s">
          <span>Contact<label>*</label></span>
          <input type="text" id="st2" name="st2" required> 
   </div>
   <div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Email Address<label>*</label></span>
           <input type="text" name="st3" id="st3" value="" required/>
           </div>  
            <div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Name<label>*</label></span>
           <input type="text" name="st4" id="st4" value=""  required/>
            </div>

<div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Pincode<label>*</label></span>
           <input type="text" name="st5" id="st5" value=""  required/>
            </div>
<div class="wow fadeInRight" data-wow-delay="0.4s">
<span>City<label>*</label></span>
<input type="text" name="st6" id="st6" value=""  required/>
 </div>
</div>
<%
}
 else
{
cshipping o=(cshipping)session.getAttribute("shipdetails");        
         
%>
    
<div class="register-bottom-grid">
   
     <h3>Shipping Details</h3>
     <div class="wow fadeInLeft" data-wow-delay="0.4s">
        <span>Shipping address<label>*</label></span>
        <input type="text" name="st1" id="st1" value=<%=o.getSaddress()%> required> 
 </div>
          <div class="wow fadeInRight" data-wow-delay="0.4s">
          <span>Contact<label>*</label></span>
          <input type="text" id="st2" name="st2" <%=o.getContact()%> required> 
   </div>
   <div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Email Address<label>*</label></span>
           <input type="text" name="st3" id="st3" value=<%=o.getEmail()%> required/>
           </div>  
            <div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Name<label>*</label></span>
           <input type="text" name="st4" id="st4" value=<%=o.getName()%> required/>
            </div>

<div class="wow fadeInRight" data-wow-delay="0.4s">
           <span>Pincode<label>*</label></span>
           <input type="text" name="st5" id="st5" value=<%=o.getPincode()%>  required/>
            </div>
<div class="wow fadeInRight" data-wow-delay="0.4s">
<span>city<label>*</label></span>
<input type="text" name="st6" id="st6" value=<%=o.getCity()%>  required/>
 </div>
</div>
<%
}
         %>

<div class="clearfix"> </div>
 <div class="single-but">
				   
     <input type="submit" value="submit" name="bproceed"></div>
<div class="clearfix"> </div>

<%
            if(request.getParameter("bproceed")!=null)
            {
                cshipping j=new cshipping();
                j.setSphone(request.getParameter("sphone"));
               
                j.setspincode(request.getParameter("spincode"));
                j.setsfname(request.getParameter("sfname"));
                j.setSaddress(request.getParameter("saddress"));
                j.setScity(request.getParameter("scity"));
                session.setAttribute("shipdetails",j);
                response.sendRedirect("confirm_order.jsp");
            }

%>
            
    </form>




</div>


</div>

</div>

        
        <%@include file="footer.jsp" %>
    </body>
</html>
