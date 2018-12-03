<%-- 
    Document   : writeBlog1
    Created on : May 11, 2015, 10:16:56 AM
    Author     : chandan
--%>

<%@page import="classes.myconnection"%>
<%@page import="classes.MyConnection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.UUID"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String itemName, Name,bname="",decp="",bimg="";
           
           boolean status=true;
                   
           boolean check=ServletFileUpload.isMultipartContent(request);
            if(check)
            {   //org.?apache.?commons.?fileupload
                FileItemFactory factory=new DiskFileItemFactory();
                //org.?apache.?commons.?fileupload.?disk
//public class DiskFileItemFactory extends Object implements FileItemFactory
//DiskFileItemFctory is used to change the path image stored in temporary folder
                ServletFileUpload upload=new ServletFileUpload(factory);
//from servlet File upload we can change the size of file we are going to upload(otherwise it will be given default size)
             List items=null;
//list is a predefined class that is used to store entire collection
             try
             {
                 items=upload.parseRequest(request);
                 
             }
             catch(FileUploadException e)
             {
                 e.printStackTrace();
             }
             
             String d="";
             
             Iterator itr=items.iterator(); //Iterator reads elements of list one by one
             
             while(itr.hasNext()) //has next will point to one form tag at one point(t1 or t2 )
             {
                 FileItem item=(FileItem)itr.next();
//      org.?apache.?commons.?fileupload  public interface FileItem extends Serializable
//hasNext() is a function of iterator class that tells where elezment is present or not
// next() function of iterator class reads the element
//form tag has name and value which we require from requestz
//a form tag can have only its form element or image element
                 if(item.isFormField())
                 {
                        Name=item.getFieldName();
                      if(Name.equals("t1"))
                         {
                           bname=item.getString();
                                                     }
                                                     else if(Name.equals("t2")){
                                                        decp=item.getString();
                                                                          }
                                                
                                               else if(Name.equals("cb1")){
                                             status=Boolean.parseBoolean(item.getString()); 
                                                    }
                                   
                                          }     
                        
                 else
                 {
                     try
                                                         {
                     
                         Name=item.getFieldName();
                         //getFieldName function returns the name of the tag used(t1,t2..etc)
                         String key=UUID.randomUUID().toString();//java.util.UUID
                         //uuid returns an object we need to convert it into string
                         itemName=key+".jpg";
                       
                                          
                          if(Name.equals("r1"))
                         {
                             if(item.getSize()==0) //if user has uploaded image or not 
                             {
                                 out.println(" image not uploaded");
                             } 
                               else
                    {
                                 bimg=itemName;
                                 
                                File savedFile=new File(config.getServletContext().getRealPath("/")+"images/"+itemName);
                                 item.write(savedFile);                      
                    }   
                                                         }
                         
                        
                                                                                                                           
                                                       }                  
                                                                                 
                            
                         
                                        
                                                
                     catch(Exception e)
                     {
                         System.out.println(e.getMessage());
                     }
                        
                                         }
                 
                     
                                 
            } 

                          } 
        
        
        
        %>
        
        
        <%
        
                     try
                     {
                         myconnection obj= new myconnection();
                         String q="insert into tbblog(bname,description,blogimage,status) values(?,?,?,?)";
                         java.sql.PreparedStatement pst=obj.db.prepareStatement(q);
                        pst.setString(1,bname );
                       pst.setString(2,decp );  
                       pst.setString(3,bimg);
                          pst.setBoolean(4,status);  
                        pst.executeUpdate();
                                              }
                     
                     
                     catch(SQLException e)
            {
                         
                         
                     }
                     String name=(String)session.getAttribute("username");
            session.setAttribute("username", name);
                     
                     response.sendRedirect("main.jsp");
        
        %>
    </body>
</html>
