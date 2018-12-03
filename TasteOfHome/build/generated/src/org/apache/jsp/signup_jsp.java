package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.Message;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.InternetAddress;
import javax.mail.Session;
import java.util.Properties;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import classes.myconnection;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("                <link href=\"css/signup.css\" rel='stylesheet' type='text/css' />\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\t<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("\t\t\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("                <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>\n");
      out.write("\t\t\n");
      out.write("                <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js\"></script>\n");
      out.write("<link href=\"css/elements.css\" rel=\"stylesheet\">\n");
      out.write("<script src=\"js/my_js.js\"></script>\n");
      out.write("<title>SIGNUP</title>\n");
      out.write("<script>\n");
      out.write("$(window).load(function() {\n");
      out.write("\t$('.blueberry').blueberry();\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("function password()\n");
      out.write("{\n");
      out.write("    pass=document.getElementById(\"t3\").value;\n");
      out.write("    conpass=document.getElementById(\"t4\").value;\n");
      out.write("    if(pass!=conpass)\n");
      out.write("        {\n");
      out.write("            alert(\"Error: Please check that you have entered and confirmed the password correctly!\");\n");
      out.write("        }\n");
      out.write(" \n");
      out.write("    \n");
      out.write("  }\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write(" var x=false;\n");
      out.write("            if(window.XMLHttpRequest)\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    x=new XMLHttpRequest();\n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("                else if(window.ActiveXObject)\n");
      out.write("                        {\n");
      out.write("                            x=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("                            \n");
      out.write("                        }\n");
      out.write("                        function checkusername(obj)\n");
      out.write("                        {\n");
      out.write("                             \n");
      out.write("                            if(x)\n");
      out.write("                                {\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    var uname=document.getElementById(\"t2\").value;\n");
      out.write("                                    x.open(\"GET\",\"checkusername.jsp?uname=\"+uname,true);\n");
      out.write("                                   \n");
      out.write("                                    x.onreadystatechange=function()\n");
      out.write("                                    {\n");
      out.write("                                          \n");
      out.write("                                          if(x.readyState==4 && x.status==200)\n");
      out.write("                                          {\n");
      out.write("                                            \n");
      out.write("                                              document.getElementById(\"t2\").style.color=x.responseText;\n");
      out.write("                                          }\n");
      out.write("                                    }\n");
      out.write("                                    x.send(null);change\n");
      out.write("                                }\n");
      out.write("                        }\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
 
    String uname=(String)session.getAttribute("username");
                   if(uname!=null)
                   {
                       response.sendRedirect("signup.jsp");
                   }
                   
      out.write("\n");
      out.write("    <div class=\"header-bg\">\n");
      out.write("     <div class=\"top-head\" style=\"background-color: rgb(172,97,76); height:46px;\">\n");
      out.write("         <div class=\"welcome\" style=\"padding-left: 44px;\">Welcome To <span>Taste Of Home</span></div>\n");
      out.write("\t\t<div class=\"top-nav\">\n");
      out.write("\t        <ul>\n");
      out.write("\t            <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t            <li><a href=\"gallery.jsp\">Gallery</a></li>\n");
      out.write("\t            <li><a href=\"blog.jsp\">Blog</a></li>\n");
      out.write("\t            <li><a href=\"signup.jsp\">Login/Sign Up</a></li>\n");
      out.write("\t            <li><a href=\"contact.jsp\" style=\"padding-right: 44px;\">Contact</a></li>\n");
      out.write("\t        </ul>\n");
      out.write("\t    </div>\n");
      out.write("\t    <div class=\"clear\"> </div>\n");
      out.write("    </div>\n");
      out.write("<div class=\"wrap\">\n");
      out.write("   \n");
      out.write("   \n");
      out.write("<div class=\"header\">\n");
      out.write("<!--\t<div class=\"logo\">\n");
      out.write("  \t\t<a href=\"index.html\"><img src=\"images/logo.png\" title=\"logo\" alt=\"\"> </a>\n");
      out.write(" \t</div>-->\n");
      out.write("\n");
      out.write("<div class=\"clear\"></div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"main\" style=\"margin-top:10px; margin-bottom: 10px;\">\n");
      out.write("\t\t<div class=\"header\" >\n");
      out.write("\t\t\t<h1>Login or Create a Free Account!</h1>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<p></p>\n");
      out.write("                <form method=\"post\">\n");
      out.write("\t\t\t\t<ul class=\"left-form\">\n");
      out.write("\t\t\t\t\t<h2>New Account:</h2>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"t1\"  placeholder=\"Full Name\" pattern=\"\\w+\" required/>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</li> \n");
      out.write("                                        <li>\n");
      out.write("                                            <input type=\"text\" name=\"t2\"  id=\"t2\" placeholder=\"Username\" pattern=\"\\w+\" onblur=\"checkusername('t2');\" required/>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<input type=\"email\" name=\"t3\"  placeholder=\"Email\" required/>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</li> \n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<!--<input type=\"password\" name=\"t4\"  placeholder=\"Password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,}\"  id=\"t3\" required/>-->\n");
      out.write("                                                \n");
      out.write("                                                <input type=\"password\" name=\"t4\"  placeholder=\"Password\"   id=\"t3\" required/>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</li> \n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<!--<input type=\"password\" name=\"t5\"  placeholder=\"Confirm Password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,}\" id=\"t4\" required/>-->\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                                \n");
      out.write("                                                <input type=\"password\" name=\"t5\"  placeholder=\"Confirm Password\"  id=\"t4\" required/>\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t</li> \n");
      out.write("                                         \n");
      out.write("                                        \n");
      out.write("                                        <select style=\"width:443px;height:45px;\" required=\"reuired\" name=\"s1\">\n");
      out.write("                                            <option>City</option>\n");
      out.write("                                                 <option>Chandigarh</option>\n");
      out.write("                                                  <option>Panchkula</option>\n");
      out.write("                                                   <option>Mohali</option> \n");
      out.write("                                                   \n");
      out.write("                                            </select>\n");
      out.write("                                        <br>\n");
      out.write("                                       \n");
      out.write("<!--\t\t\t\t\t<label class=\"checkbox\"><input type=\"checkbox\" name=\"password=rs.getString(\"password\");checkbox\" checked=\"\"><i> </i>Please inform me of upcoming  w3layouts, Promotions and news</label>-->\n");
      out.write("<input type=\"submit\"  value=\"Create Account\" onclick=\"password()\" name=\"b1\">\n");
      out.write("\t\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("                                ");

                                    if(request.getParameter("b1")!=null && request.getParameter("t3")==request.getParameter("t4"))
                                    {
                                     String name,username,email,password,city,conpassword;
                                     name=request.getParameter("t1");
                                     username=request.getParameter("t2");
                                     email=request.getParameter("t3");
                                     password=request.getParameter("t4");
                                     conpassword=request.getParameter("t5");
                                     city=request.getParameter("s1");
//                                     if(password!=conpassword)
//                                     {
//                                         out.println("alert('JOB DONE');");
//                                     }
                                     try
                                     {
                                         myconnection obj=new myconnection();
                                         String q="Insert into tbregister(name,username,email,password,city) values(?,?,?,?,?)";
                                         PreparedStatement pst=obj.db.prepareStatement(q);
                                         pst.setString(1, name);
                                           pst.setString(2, username);
                                         pst.setString(3, email);
                                         pst.setString(4, password);
                                         pst.setString(5, city);
                                         
                                         pst.executeUpdate();
                                         response.sendRedirect("sendemail.jsp");
                                     }
                                     catch(SQLException e)
                                     {
                                         out.println(e.getMessage());
                                     }
                                    }
                                    
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                        <form method=\"post\">\n");
      out.write("\t\t\t\t<ul class=\"right-form\">\n");
      out.write("\t\t\t\t\t<h3>Login:</h3>\n");
      out.write("\t\t\t\t\t<div>\n");
      out.write("                                            <li><input type=\"text\"  placeholder=\"Username\" name=\"username\" required/></li>\n");
      out.write("\t\t\t\t\t\t<li> <input type=\"password\"  placeholder=\"Password\" name=\"password\" required/></li>\n");
      out.write("                                                <h4 onclick=\"div_show()\" style=\"cursor:pointer\" >I forgot my Password!</h4>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Login\" name=\"b1\" id=\"b1\">\n");
      out.write("                                                        ");

                                    if(request.getParameter("b1")!=null)
                                    {
                                        String username,password;
                                        username=request.getParameter("username");
                                        password=request.getParameter("password");
                                        try
                                        {
                                            myconnection obj1=new myconnection();
                                            String r="select * from tbregister where username=? and password=?";
                                            PreparedStatement pst1=obj1.db.prepareStatement(r);
                                            pst1.setString(1, username);
                                            pst1.setString(2, password);
                                            
                                            ResultSet rs1;
                                            rs1=pst1.executeQuery();
                                             
                                            if(rs1.next())
                                            {
                                               
                                                session.setAttribute("name", username);
                                                if(username.equals("admindeepika")&&password.equals("manchanda"))
                                                { session.setAttribute("adminusername", username);
                                                    response.sendRedirect("main.jsp");
                                                   
                                                }
                                                
                                                else
                                                {
                                                    session.setAttribute("username", username);
                                                    response.sendRedirect("index.jsp");
                                                }
                                                
                                            }
                                            else
                                            {
                                                out.println("invalid username and password");
                                            }
                                            
                                             
                                        }
                                        catch(SQLException e)
                                        {
                                            out.println(e.getMessage());
                                        }
                                    }
                                    
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<div class=\"clear\"> </div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t</form>\n");
      out.write("                        \n");
      out.write("<div id=\"abc\">\n");
      out.write("<!-- Popup Div Starts Here -->\n");
      out.write("<div id=\"popupContact\">\n");
      out.write("<!-- Contact Us Form -->\n");
      out.write("<form action=\"#\" id=\"popupform\" method=\"post\" name=\"form\">\n");
      out.write("<img id=\"close\" src=\"images/cross.png\" onclick =\"div_hide()\">\n");
      out.write("<h3>Forgot Password</h3>\n");
      out.write("<hr>\n");
      out.write("Please enter your email id below. We will send you a link to reset your password.<br>\n");
      out.write("Email <input id=\"pop\" name=\"t1\" placeholder=\"example@example.com\" type=\"text\">\n");
      out.write("<a href=\"javascript:%20check_empty()\" style=\"margin-top: 15px;\" id=\"submit\" name=\"b5\">Send</a>\n");
      out.write("\n");
      out.write("        ");

                                
                                     try
                                     {
                                    if(request.getAttribute("b5")!=null)
                                         {
                                             
                                        
              String email=request.getParameter("t1");
            myconnection obj=new myconnection();
            String q="";
           
                q="select username,password from tbregister where username='email'";
           
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs1;
             rs1=pst.executeQuery();
            String pwd="";
          pwd=rs1.getString("password");
           
                
                            
           
           
            
            
            
            
            
            
            String host = "smtp.gmail.com";
String from = "vciinfotech.in@gmail.com";
String pass = "test01";
Properties props = System.getProperties();
props.put("mail.smtp.starttls.enable", "true"); // added this line
props.put("mail.smtp.host", host);
props.put("mail.smtp.user", from);
props.put("mail.smtp.password", pass);
props.put("mail.smtp.port", "587");
props.put("mail.smtp.auth", "true");

// Get the default Session object.
Session s1 = Session.getDefaultInstance(props, null);

try {
    // Create a default MimeMessage object.
    MimeMessage message = new MimeMessage(s1);

    // Set sender
    message.setFrom(new InternetAddress(email));

    // Set recipient
    message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));

    // Set Subject: header field
    message.setSubject("we are learning java");

    // set content and define type
    message.setContent("YOUR PASSWORD IS "+pwd, "text/html; charset=utf-8");

    Transport transport = s1.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
  } catch (MessagingException mex) {
    System.out.println(mex.getLocalizedMessage());
    out.println(mex.getMessage());
    out.println(mex.getLocalizedMessage());
}

 }
        
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            
            
      out.write("\n");
      out.write("   \n");
      out.write("\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("<!-- Popup Div Ends Here -->\n");
      out.write("</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t<div class=\"clear\"></div>\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"clear\"></div>\n");
      out.write("\t\t</div>\t\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"footer1-bg\">\n");
      out.write("<div class=\"wrap\">\n");
      out.write("\t<div class=\"copy\">\n");
      out.write("\t\t\t<p>© 2015 All rights Reserved | Design by Deepika Manchanda</p>\n");
      out.write("\t</div>\t\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" <script type=\"text/javascript\">\n");
      out.write("         \n");
      out.write("\t\t$(document).ready(function() {\t\t\t\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t\t\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("    <a href=\"#\" id=\"toTop\"> </a>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/navigation.js\"></script>\n");
      out.write("\t\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
