<%-- 
    Document   : ownashopnext
    Created on : May 21, 2015, 11:28:55 PM
    Author     : deepika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OWNSHOP</title>
    </head>
    <body>
       <%-- 
    Document   : inserthos
    Created on : Apr 21, 2015, 12:32:30 AM
    Author     : user
--%>
<%@page import="classes.myconnection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
           <form>
                       <%
            
            
           
  
            
            String area="",image="",state="",cname="",address="",name="";
            int contact=0,zip=0;
            boolean check=ServletFileUpload.isMultipartContent(request);
            if(check)
            {
                FileItemFactory factory=new DiskFileItemFactory();
                //set temporary location to store files
                ServletFileUpload upload=new ServletFileUpload(factory);
                //change size of the file we are uploading
                List items=null;
                try
                {
                    items=upload.parseRequest(request);
                    
                }
                catch(FileUploadException e)
                {
                    e.printStackTrace();
                }
                String d="";
                Iterator itr=items.iterator();
                while(itr.hasNext())
                {
                    FileItem item=(FileItem) itr.next();
                if(item.isFormField())
                {
                    d=item.getFieldName();
                    if(d.equals("name"))
                    {
                        cname=item.getString();
                }
                                       else if(d.equals("address")){
                        address=item.getString();
                        
                    }
                       else if(d.equals("cname")){
                        cname=item.getString();
                        
                    }
                    else if(d.equals("state")){
                        state=item.getString();
                        
                    }
                    else if(d.equals("area")){
                        area=item.getString();
                        
                    }
                    else if(d.equals("contact")){
                        contact=Integer.parseInt(item.getString());
                        
                    }
                    else if(d.equals("zip")){
                        zip=Integer.parseInt(item.getString());
                        
                    }
                }
                else
                {
                     image=item.getName();
                     File savedFile= new File(config.getServletContext().getRealPath("images")+image);
                     item.write(savedFile);
                     
                        
                }
                                       
                                   }
            }
            
             try{
              
               String image1,cname1,address1,state1,area1,name1;
               int contact1,zip1;
               image1=image;
               cname1=cname;
               address1=address;
               state1=state;
               area1=area;
               name1=name;
               contact1=contact;
               zip1=zip;
                myconnection obj=new myconnection();
                String q="insert into tbseller(sellername,address,state,area,zip,contact,image,cname,status)value(?,?,?,?,?,?,?,?,?)";
                PreparedStatement pst=obj.db.prepareStatement(q);
                pst.setString(1,name1);
                pst.setString(2,address1);
                pst.setString(3,state1);
                pst.setString(4,area1);
                pst.setInt(5,zip1);
                pst.setInt(6,contact1);
                pst.setString(7,image1);
                pst.setString(8,cname);
                pst.setBoolean(9,true);
              
                int s=pst.executeUpdate();
                if(s>0)
                {
                    session.setAttribute("sellername", name);
                    response.sendRedirect("ownashop2.jsp");
                }
                
            }
            catch(SQLException e){
                out.println(e.getMessage());
                           }             
                 
            %>
            
           </form>        
    </body>
</html>

    </body>
</html>
