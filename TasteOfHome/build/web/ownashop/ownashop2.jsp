<%@page import="java.sql.SQLException"%>
<%@page import="classes.myconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" style="height: 100%;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="csss/style.css" type="text/css">

    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		
                <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<link href="../css/elements.css" rel="stylesheet">
    <title>Owna shop next</title>
    
    

<body style="position: relative; min-height: 100%; top: 0px;">
    
    

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
    
     <%
         
         String name2=(String)session.getAttribute("username");
            
            try
            {
            String q="select * from tbseller where username='"+name2+"'";
            myconnection obj=new myconnection();
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
           
           int contact,zip;
            String name="",area="",image="",cname="";
            if(rs.next())
            {
                name=rs.getString("sellername");
                contact=rs.getInt("contact");
                area=rs.getString("area");
                image=rs.getString("image");
                cname=rs.getString("cname");
                
                %>
<li class="active has-sub1"><a style="padding:0; margin:5px 0 0 5px;" href=""><img src="csss/vkman.png" alt="Order Home Cooked Food | Home Based Online Restaurant Chain | India"></a>
<ul>
<li style="border:none; background:#efefef;" class="has-sub1"><a href="" style="background:#efefef;width:146px; height:45px; padding:5px;">
<img src="../images/<%=image%>" width="36" height="40" alt="" class="imglt"><span style=" float:left; width:100px; line-height:15px; padding:5px 0 5px 5px; font-weight:600; font-size:15px; color:#000;"><%=rs.getString("sellername")%></span>
</a></li> 
<li class="has-sub1"><a href=""><span>Settings</span></a></li> 
<li class="has-sub1"><a href=""><span>Favorites</span></a></li> 
<li class="has-sub1"><a href=""><span>Orders Placed</span></a></li>
<li class="has-sub1"><a href=""><span>My Following</span></a></li>
<li style="border:none;" class="has-sub1"><a href="singup.jsp" style="background:#efefef;width:136px; height:6px;"><span style="float:left; width:132px; text-align:center; font-weight:600; font-size:14px; color:#000;">LOG OUT</span></a></li>
</ul></li>
</ul>
</div></div>
                        </li>
	           
	            <li><a href="contact.jsp" style="padding-right: 44px;">Contact</a></li>
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

<div class="cvb1"><a href=""><img src="csss/cv1.png" class="cvimg" > <p class="cvp"><%=name%></p></a></div>



<div class="cvb3" style="background:BD6436;"><a href=""> Orders Received </a></div>
<div class="cvb4"><a href="ownashop3.jsp"> Add Dish </a></div>
<div class="cvbb1"><a href=""> View </a></div>
</div>




<div id="greyboxstartvk">



<div id="greyfirstbox">

<div id="greyboxleftvk"><a href=""><img src="../images/<%=image%>" width="180" height="200" alt=" at watscooking.com" class=""></a></div>

<div id="greyboxright">

<h2><%=name%></h2>



	<div class="tuto-cnt">

        

        <div class="box-result-cnt">

            
           

            <div class="rate-result-cnt">

                <div class="rate-bg" style="width:60%"></div>

                <div class="rate-stars"></div>

            </div>
            



        </div>

       </div> 

       

       

    

    

<div id="greychefdet">

<div id="greyby">By</div>

<div id="greychef"><a href="">

<img src="csss/nousersmlimage.jpg" width="50" height="56" alt="" class="">
</a></div>

<div id="greychefname"><%=name%></div>

</div>

<div id="greyboxaddress"><span><img src="csss/locateiocon.png" ></span><%=area%></div>







<%
            }
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            %>

</div>

</div>



<div id="darkgreyboxpart">

<div class="cved"><img src="csss/cvedit.png" class="cvedimg" > <span><a href="ownashop.jsp">Edit</a></span></div>
<form name="actpasorder" method="post" action="">
<div class="cved">
<img src="csss/cvdel.png" class="cvedimg1" >
<span><a href="">Delete</a></span></div>
</form>
</div>



</div>





<div class="myactpast">

<form name="actpasorder" method="post" action="">



<div class="myactpastlt">

<input type="submit" name="activedish" value="Active Dish" class="actsub1"> 

<span></span>

<input type="submit" name="pastdish" value="Deleted Dish" class="pastsub1"> </div>

 </form>


<div class="myactpastrt">

<div id="greyboxnewdis"><a href="ownashop3.jsp"> + ADD NEW DISH</a></div>

</div>



</div>













	
<div class="tablestartvk">



<div class="mobileappitem">

<div class="mobileapphead">

<div class="mobileapphead1"><p>Image</p></div>

<div class="mobileapphead2"><p>Dish Name</p></div>

<div class="mobileapphead3"><p>Category</p></div>



<div class="mobileapphead5"><p>Type</p></div>

<div class="mobileapphead6"><p>Ranking</p></div>

<div class="mobileapphead7"><p>Status</p></div>

<div class="mobileapphead8"><p>Actions</p></div>

</div>

<% 
             try
            {
            String q="select * from tbitems where sellername='"+session.getAttribute("sellername")+"'";
              String q1="select * from tbcategory ";
            
            myconnection obj=new myconnection();
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
             PreparedStatement pst1=obj.db.prepareStatement(q1);
            ResultSet rs1;
            rs1=pst1.executeQuery();
           
           int contact,zip;
            String type="",iname="",image="",cname="";
            boolean status=true;
            int rank;
            if(rs.next())
            {
                
                
                %>
            
	
        <div class="mobileappheadin">

<div class="mobileappbelo1"><p><%=rs.getString("image")%></p></div>

<div class="mobileappbelo2"><p><%=rs.getString("iname")%></p><span><p><%=rs.getString("cid")%></p></span></div>


<div class="mobileappbelo3"><p><strong><%=rs.getString("type")%></strong></p></div>




<div class="mobileappbelo5"><p><a onclick="displayHideBox('15'); return false;" ><%=rs.getInt("rank")%></a></p></div>

<div class="mobileappbelo6"><p><%=rs.getBoolean("status")%></p></div>



<div class="mobileappbelo8">

<div class="ed">

<div class="cved"><img src="" class="cvedimg" /> <span><a href="" >Edit</a></span></div>
<form name="actpasorder" method="post"" >
<div class="cved">
<img src="" class="cvedimg1" /> <span>
<input type="submit" name="delete" value="Delete" class="delsub" onclick="return confirm('Are You Want To Delete This Dish From your Cafe ?');"/><input type="hidden" name="del_id" value="2273" /> </span>
</div>
</form>
</div>
<%
            }
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            %>

</div>


</div>
</div>


</div>
</div>


</div>
</div>
</div>
</div>
          
        <%@include file="footer.jsp" %>
</body>
</html>