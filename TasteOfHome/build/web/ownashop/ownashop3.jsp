<%-- 
    Document   : ownashop3
    Created on : May 1, 2015, 1:07:31 PM
    Author     : deepika
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.UUID"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%@page import="classes.myconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="csss/style.css" type="text/css">

    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		
                <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<link href="../css/elements.css" rel="stylesheet">
    
    </head>
    <body>
        
        
        <div class="header-bg">
     <div class="top-head" style="background-color: rgb(172,97,76); height:46px;">
         <div class="welcome" style="padding-left: 44px;">Welcome To <span>Taste Of Home</span></div>
		<div class="top-nav">
	        <ul>
	            <li class="active"><a href="../index.jsp">Home</a></li>
	           
	            <li>
                            <div class="vkusr">
<div id="cssmenu1">
<ul>
<li class="active has-sub1"><a style="padding:0; margin:5px 0 0 5px;" href=""><img src="csss/vkman.png" alt="Order Home Cooked Food | Home Based Online Restaurant Chain | India"></a>
<ul>
<li style="border:none; background:#efefef;" class="has-sub1"><a href="" style="background:#efefef;width:146px; height:45px; padding:5px;">
        <img src="csss/nousersmlimage.jpg" width="36" height="40" alt="" class="imglt"><span style=" float:left; width:100px; line-height:15px; padding:5px 0 5px 5px; font-weight:600; font-size:15px; color:#000;">
            <%
   session.getAttribute("sellername");
%>
</span>
</a></li> 
<li class="has-sub1"><a href=""><span>Settings</span></a></li> 
<li class="has-sub1"><a href=""><span>Favorites</span></a></li> 
<li class="has-sub1"><a href=""><span>Orders Placed</span></a></li>
<li class="has-sub1"><a href=""><span>My Following</span></a></li>
<li style="border:none;" class="has-sub1"><a href="" style="background:#efefef;width:136px; height:6px;"><span style="float:left; width:132px; text-align:center; font-weight:600; font-size:14px; color:#000;">LOG OUT</span></a></li>
</ul></li>
</ul>
</div></div>
                        </li>
	            <li><a href="signup.jsp">Login/Sign Up</a></li>
	            <li><a href="contact.html" style="padding-right: 44px;">Contact</a></li>
	        </ul>
	    </div>
	    <div class="clear"> </div>
    </div>
<div class="wrap">
   
   
<div class="header">


<div class="clear"></div>
</div>
</div>
</div>


    <div class="main" style="margin-top:10px; margin-bottom: 10px;">
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<div id="homepagestarts"><div id="homepageparts"><div id="homepagearampam"><div id="homepage"><div id="cvblue">

<div class="cvb1"><a href=""><img src="csss/cv1.png" class="cvimg" > <p class="cvp">d</p></a></div>

<div class="ccvb2"><a href=""> <img src="csss/cv2.png" class="cvimg2" > <p class="cvp1">Manage</p></a></div>

<div class="cvb3"><a href=""> Orders Received </a></div>
<div class="cvb4"><a href=""> Add Dish </a></div>
<div class="cvbb1"><a href=""> View </a></div>
</div>
        
        
        
        <div id="boxopen_notlightbox">

	<div id="boxmel"><div style="float:left; font-size:23px; font:Arial, Helvetica, sans-serif; margin:20px 0 0 0;">Create a new dish</div>      <!--<div style="cursor:pointer; width:50px; float:right; margin:0px 10px 0 0;" align="right"><a href="http://www.watscooking.com/MyCafe-Manage.htm"><img src="http://www.watscooking.com/images/vkclose1.png" style="width:25px; height:25px; opacity:0.8;" alt="Order Home Cooked Food | Home Based Online Restaurant Chain | India"/></a></div>-->

</div>

	<!--<div id="boxnaduu2">-->
	<div id="boxnaduu_notlightbox">

	 <div style=" color:#000; font-family:Arial, Helvetica, sans-serif; font-size:15px; font-weight:bold; padding:10px; height:auto;">

	 

<form action="ownashop3next.jsp" method="post"  name="dishaddDis" onSubmit="return chkdishadDis();" enctype="multipart/form-data">







<div id="vklight2name">

<p>Dish Name</p>

<input type="text" name="iname" value="" class="vktext" Placeholder="Enter Name " />
<br>
<br>


<div id="vklight1veg"><span><img src="" /></span>Vegetarian <input type="radio" value="Vegetarian" id="veg" name="vegnonveg" /></div>

<div id="vklight2veg"><span><img src="" /></span>Non Vegetarian <input type="radio" value="Non Vegetarian" id="nonveg" name="vegnonveg" /></div>

</div>







<div id="vksele2">

Select Category<select name="cname" id="tagname" class="vktext3">
    
    
    
    <%
   session.getAttribute("username");
                try
            {
            myconnection obj=new myconnection();
            String q="";
           
                q="select * from tbcategory";
           
        String q1="select cid from tbcategory where cname=?";
            PreparedStatement pst=obj.db.prepareStatement(q);
             PreparedStatement pst1=obj.db.prepareStatement(q1);
             pst1.setString(1, request.getParameter("cname"));
            ResultSet rs;
            ResultSet rs1;
            rs1=pst1.executeQuery();
          
            rs=pst.executeQuery();
                
                %>                
                 <%
            String f="";
                    while(rs.next())
                {
                    f=rs.getString("cname");
                    %>
                    
                 <option value="<%=rs.getInt("cid")%>" >
                   
                 <%= rs.getString("cname")%>
                    
                </option>
                <%
                    
                    
    
            }
        
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            
            
            
            
            
            
            %>
        </select>
        
        

</div>







</div>



<div id="vklight2cuis23">



<div class="onec-new">

<p>Price (Per Portion)</p>

<input type="text" name="price" value="" placeholder="Price Per Portion" class="vktext43" />

</div>



</div>



<div class="twoc">

<p>Quantity (in grams)</p>

<input type="text" name="quantity" class="vktext44" />

</div>



</div>







<div id="vklight2cuis24">



<div class="descleft">

<p>Description</p>

<textarea class="vktext2t" name="description" rows="7"></textarea>

</div>




    <br>
<div class="descright">

<p>Dish Image <span style="font-size: 10px;">you can add  Images here</span></p>






<input type="file" name="image" id="uploadFile1" />


</div>







</div>

</div>



</div>









 



</div>

</div>



<div id="vklight2but">

<input type="submit" value="Submit" name="submit1" class="vklight2subto" />

</div>  



</form>
            <%@include  file="footer.jsp" %>
    </body>
</html>
