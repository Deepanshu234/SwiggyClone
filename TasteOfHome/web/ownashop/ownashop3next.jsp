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
        <title>JSP Page</title>
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <form>
               
                       <%
            
            
           
  
            
            String iname="",image="",description="",vegnonveg="veg";
            int quantity=0,price=0,cid=0;
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
                    if(d.equals("iname"))
                    {
                        iname=item.getString();
                }
                                       else if(d.equals("cid")){
                        cid=Integer.parseInt(item.getString());
                        
                    }
                       else if(d.equals("description")){
                        description=item.getString();
                        
                    }
                    else if(d.equals("quantity")){
                        quantity=Integer.parseInt(item.getString());
                        
                    }
                    else if(d.equals("price")){
                        price=Integer.parseInt(item.getString());
                        
                    }
                   
                    
                }
                else
                {
                     image=item.getName();
                     File savedFile= new File(config.getServletContext().getRealPath("Documents")+"/images/"+image);
                     item.write(savedFile);
                     
                        
                }
                                       
                                   }
            }
            
             try{
              
               String image1,description1,vegnonveg1,iname1;
               int quantity1,price1,rank=5,cid1;
               image1=image;
               cid1=cid;
               iname1=iname;
               description1=description;
               quantity1=quantity;
               price1=price;
               vegnonveg1=vegnonveg;
               
           String s="";
            s=(String)session.getAttribute("username");
             
               
                myconnection obj=new myconnection();
                String q="insert into tbitems(cid,iname,description,image,price,quantity,type,rank,status,sellername)value(?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement pst=obj.db.prepareStatement(q);
                pst.setInt(1,cid1);
                pst.setString(2,iname1);
                pst.setString(3,description1);
                pst.setString(4,image1);
                pst.setInt(5,price1);
                pst.setInt(6,quantity1);
                pst.setString(7,vegnonveg1);
                pst.setInt(8,rank);
                pst.setBoolean(9,true);
                pst.setString(10, s);
              
              int r=0;
                      r= pst.executeUpdate();
                      if(r>0)
                      {
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
