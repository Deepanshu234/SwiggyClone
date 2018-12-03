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

public final class postbloganswer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                \n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\t<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"../csss/style.css\" type=\"text/css\">\n");
      out.write("                <link href=\"../css/elements.css\" rel=\"stylesheet\">\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("                <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>\n");
      out.write("\t\t\n");
      out.write("                <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js\"></script>\n");
      out.write("<link href=\"css/elements.css\" rel=\"stylesheet\">\n");
      out.write("<script src=\"js/my_js.js\"></script>\n");
      out.write("<title>POST BLOG ANSWER</title>\n");
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
      out.write("  \n");
      out.write("    <div class=\"header-bg\">\n");
      out.write("     <div class=\"top-head\" style=\"background-color: rgb(172,97,76); height:46px;\">\n");
      out.write("         <div class=\"welcome\" style=\"padding-left: 44px;\">Welcome To <span>Taste Of Home</span></div>\n");
      out.write("\t\t<div class=\"top-nav\">\n");
      out.write("\t       <ul>\n");
      out.write("                    ");
String name=(String)session.getAttribute("username");
            session.setAttribute("username", name);
                        
      out.write("\n");
      out.write("                       \n");
      out.write("\t            <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t            <li><a href=\"gallery.jsp\">Gallery</a></li>\n");
      out.write("                    \n");
      out.write("\t            <li><a href=\"blog.jsp\">Blog</a></li>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                     ");

                        if(session.getAttribute("username")!=null)
                        {
                        
      out.write("\n");
      out.write("                     \n");
      out.write("                    <li><a href=\"userchangepass.jsp\" style=\"padding-right: 44px;\">Change password</a></li>\n");
      out.write("\t            <li>");
      out.print(session.getAttribute("username"));
      out.write("\n");
      out.write("                               </li>\n");
      out.write("          \n");
      out.write("                        \n");
      out.write("            <div class=\"profile-actions\">\n");
      out.write("                <form>\n");
      out.write("                   \n");
      out.write("                    <input type=\"submit\" id=\"logout\" name=\"logout\" class=\"button\" value=\"Log Out\"/>\n");
      out.write("                        ");
}
                        else
                        {
                            
      out.write("\n");
      out.write("                            <li><a href=\"signup.jsp\">Login/Sign Up</a></li>\n");
      out.write("\t            <li><a href=\"contact.html\" style=\"padding-right: 44px;\">Contact</a></li>\n");
      out.write("\n");
      out.write("                    ");

                        }
                        
                            
      out.write("\n");
      out.write("                    \n");
      out.write("                    ");

                        if (request.getParameter("logout") != null) {
                            

                            session.invalidate();
                            response.sendRedirect("signup.jsp");
                        }
                    
      out.write("\n");
      out.write("                </form>\n");
      out.write("          \n");
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
      out.write("\t\n");
      out.write("                      <div align=\"center\">\n");
      out.write("\n");
      out.write("            \n");
      out.write("             <input type=\"hidden\" name=\"qid\" value=\"");
      out.print(request.getParameter("qid"));
      out.write("\">\n");
      out.write("              \n");
      out.write("             <h3>Your Answer</h3>   <textarea name=\"t1\" rows=\"4\" cols=\"20\">\n");
      out.write("              </textarea>\n");
      out.write("              <input type=\"submit\" value=\"submit\" name=\"b1\" />\n");
      out.write("              ");

               if(session.getAttribute("username")!=null)
        {
          
                 String b,username;
             int id,qid=0;
             id=0;
            
             b=request.getParameter("qid");
             username=(String)session.getAttribute("username");
             
            if(b!=null)
            {
                qid=Integer.parseInt(b); 
              }
            
              if(request.getParameter("b1")!=null)
                           {
                  
           
                     try
                            {
             myconnection obj=new myconnection();
           
            String q="insert into tbbloganswer(answer,qid,username) values(?,?,?)";
           PreparedStatement pst=obj.db.prepareStatement(q);
           
                  pst.setString(1,request.getParameter("t1"));
                  pst.setInt(2, qid);
                  
                  pst.setString(3,username);
                   pst.executeUpdate();
                   String name1=(String)session.getAttribute("username");
            session.setAttribute("username", name1);
                       
                     }
                     
                     
                  catch(SQLException e)
                                  {
                                       
                                       
                                   }
            
            
                      }
                       
        }
                else
       {
            response.sendRedirect("signup.jsp");
           
       }
            
            
      out.write("\n");
      out.write("            \n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("              </div>         \n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("\t\t\t</div>\n");
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
