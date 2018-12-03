

<%@page import="java.io.File"%>
<%@page import="java.util.UUID"%>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myconnection"%>
<html>
<head>
    <script>
function zip()
{
    pass=document.getElementById("zip").value;
    
    if((pass!="160101")||(pass!="140110")||(pass!="134102"))
        {
            alert("Error: Please check that you have enteredand Zip correctly!");
        }
 
    
  }
</script>
    
    <link rel="stylesheet" href="formcsss/style.css" type="text/css">
        


		<meta charset="utf-8">
               <meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	      <script type="text/javascript" src="js/move-top.js"></script>
 <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<link href="../css/elements.css" rel="stylesheet">
<script src="js/my_js.js"></script>


 
   
  
   
</div>
  
    </div>
 



</div>
</form>



</div>

</div>

</div>

<script type="text/javascript">
function checkspecial()
{
	var getval = document.getElementById("name");
	//alert(/^[a-zA-Z0-9- ]*$/.test(getval));
	//var splChars = "*|,\":<>[]{}`\';()@&$#%";
	var splChars = "*|,\":<>[]{}`\;()@&$#%^?.~+-!_=/\\";
	for (var i = 0; i < getval.value.length; i++) 
	{
	    if (splChars.indexOf(getval.value.charAt(i)) != -1)
	    {
   		alert ("No special characters allowed except space and single quote");
			getval.value = "";   		 
    		getval.focus(); 
		 }		 
	}
}


function validateNumbers(elementValue)
{
 var numPattern = /^[0-9]+$/;
 return numPattern.test(elementValue);

}

function validfield()
{
	//alert("hai");
	var formvas = document.cafesetup;
	//alert(formvas.name.value.length);
	if(formvas.name.value == "" )
	{
		alert("Enter Your Cafe Name");
		formvas.name.focus();
		return false;
	}
	else if(formvas.name.value.length > 50 )
	{		
		alert("Cafe Name Should Minimum or Equal to 50 Characters");
		formvas.name.focus();
		return false;
	}
	
	else if(formvas.address.value == "" )
	{
		alert("Enter Your Address");
		formvas.address.focus();
		return false;
	}
	else if(formvas.area.value == "" )
	{
		alert("Enter Your Area / Locality");
		formvas.area.focus();
		return false;
	}
	else if(formvas.state.value == "" )
	{
		alert("Enter Your Country");
		formvas.country.focus();
		return false;
	}
	
	else if(formvas.zip.value == "" )
	{
		alert("Enter Your Zip code");
		formvas.zip.focus();
		return false;
	}
	else if(validateNumbers(formvas.zip.value) == false)
	{
		alert("Enter the Valid Zip code");
		formvas.zip.focus();
		return false;
	}

	else if(formvas.contact.value == "" )
	{
		alert("Enter Your Mobile Number");
		formvas.contact.focus();
		return false;
	}
	
	else if(validateNumbers(formvas.conatct.value) == false) 
 	{
 		alert("Enter the valid Mobile Number"); 
  		formvas.contact.focus();  
  		formvas.contact.value = "";
  		return false; 
 	}
 	
 	else if(formvas.contact.value.length <= 9 )
	{
		alert("Mobile Number Must be in 10 Digit");
		formvas.contact.focus();
		return false;
	}

	
}

   
   function nextvalidation_new()
   {
   	var num = document.getElementById("contact");
 		if(num.value.length <= 9 )
		{
			alert("Mobile Number Must be in 10 Digit");
			num.value = "";		
		}
 	} 
</script>


</head>
<body>
    <%@include file="header.jsp" %>
		
		
<form method="post" name="f1"  enctype="multipart/form-data" id="cafesetup"  onsubmit="return validfield();" action="ownashopnext.jsp">
<input type="hidden" value="add" name="mode">
  <div class="setup-top">

    <div class="setup-leftbox">

     

    

    

    <div class="setup-right">
		
      <div class="setuprt-first">
		<div id="form_error"><p style="width:650px;"></p></div>
        <p>Full Name</p>
        <input type="text" id="name" name="name"  value="" class="setup-textbox" >
      </div>
        
      <div class="setuprt-first1">

        <p>
        <span id="adr-img"><img src="formcsss/locateiocon.png" alt="Order Home Cooked Food | Home Based Online Restaurant Chain | India"></span>
        <span id="adr-lable">Address </span><span id="adr-lable1">Street / Lane</span></p>
        <input type="text" id="address" name="address" placeholder="Address" value="" class="setup-textbox">

      </div>      
		
      <div class="setuprt-first1">
			
        <p>State/Area/Zip</p>
        
        
			<select name="state" id="country" class="cafe-country" >

         <option value="">Select State</option>

         

        <option value="Punjab">Punjab</option>

         

        <option value="Haryana">Haryana</option>

         

        <option value="Chandigarh">Chandigarh</option>

         

       

         </select>
         
         <select name="area" id="city" class="cafe-country">
        
         <option value="">Select Area</option>

         

        <option value="Chandigarh">Chandigarh</option>

         

        <option value="Panchkula">Panchkula</option>

         

        <option value="Mohali">Mohali</option>

         

        

         </select>
         
       

        <input type="text" name="zip" placeholder="Zip" value="" class="setup-textbox" style="width:135px;" onclick="zip()">
        <div id="script_error8"></div>
      </div>
      
      

      <div class="setuprt-first1">
			        <p>Mobile No</p>
			<input type="text" class="setup-textbox" style="width:50px; margin-right:5px;" readonly="readonly" value="">
        	<input type="text" id="mobileno" name="contact" placeholder="Mobile Number" value="" class="setup-textbox" style="width:280px;" onchange="nextvalidation_new();"> <p style="width:80px; color:#aaaeaf; padding-left:5px;">Verify</p>

      </div>
        <div class="setuprt-first">
		<div id="form_error"><p style="width:650px;"></p></div>
        <p>Image</p>
        <input type="file" id="image" name="image"  value="" class="setup-textbox" >
      </div>
     

    </div>

  </div>
     
         
              
              
        
                  <div class="setuprt-firstvk1" style="padding-left:0px;">

    

Select Category<select name="cname" id="tagname" class="vktext3">
    
    
    
    <%
                try
            {
            myconnection obj=new myconnection();
            String q="";
           
                q="select * from tbcategory";
           
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
                
                %>                
                 <%
            String f="";
                    while(rs.next())
                {
                    f=rs.getString("cname");
                    %>
                    
                  <a href="edit_cato.jsp?id=<%=rs.getInt("cid")%>"> <option>
                   
                 <%= rs.getString("cname")%></a>
                    
                </option></a>
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
        <div class="setuprt-first">
        	
     
        
        <input type="submit" name="submit" value="Next" class="signup-button" id="next" onclick="javascript: return nextvalidation()" style="margin-top:10px; margin-bottom:10px; margin-left:380px;">
        </div>
        
     
        
        
        
</form>
            

			
	
    <%@include file="footer.jsp" %>
	
</body>
</html>