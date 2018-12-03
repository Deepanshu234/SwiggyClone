package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import classes.myconnection;

public final class discovergreatfood_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--A Design by W3layouts\n");
      out.write("Author: W3layout\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>\n");
      out.write("<link href=\"css-discovergreatfood/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.9.0.min.js\"></script> \n");
      out.write("<script src=\"js/jquery.openCarousel.js\" type=\"text/javascript\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"js/bjqs-1.3.min.js\"></script>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>\n");
      out.write("<link href=\"css-discovergreatfood/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.9.0.min.js\"></script> \n");
      out.write("<script src=\"js/jquery.openCarousel.js\" type=\"text/javascript\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<link href=\"css-header/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Creative Studio Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,300,600,800,400' rel='stylesheet' type='text/css'>\n");
      out.write("<script src=\"js/jquery.min.js\"></script>\n");
      out.write("<title>DISCOVER GREAT FOOD</title>\n");
      out.write("<script>\n");
      out.write("$(window).load(function() {\n");
      out.write("\t$('.blueberry').blueberry();\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div class=\"header-bg\">\n");
      out.write("    <div class=\"top-head\" style=\"background-color: rgb(172,97,76); height:46px;\">\n");
      out.write("         <div class=\"welcome\" style=\"padding-left: 44px;\">Welcome To <span>Taste Of Home\n");
      out.write("             </span></div>\n");
      out.write("\t\t<div class=\"top-nav\">\n");
      out.write("\t        <ul>\n");
      out.write("                  \n");
      out.write("                       \n");
      out.write("\t            <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t            <li><a href=\"gallery.jsp\">Gallery</a></li>\n");
      out.write("\t            <li><a href=\"blog.jsp\">Blog</a></li>\n");
      out.write("                     ");

                        if(session.getAttribute("username")!=null)
                        {
                        
      out.write("\n");
      out.write("                     <li><a href=\"usermyaccount.jsp\" style=\"padding-right: 44px;\">My account</a></li>\n");
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
      out.write("                \n");
      out.write("                 \n");
      out.write("      \n");
      out.write("\t           \n");
      out.write("\t        </ul>\n");
      out.write("\t    </div>\n");
      out.write("\t    <div class=\"clear\"> </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("   \n");
      out.write("   \n");
      out.write("<!--<div class=\"header\">\n");
      out.write("    <div class=\"logo\" style=\"width: 980px; padding-left: 0px;\">\n");
      out.write("  \t\t<a href=\"index.html\"><img src=\"images/logo.png\" title=\"logo\" alt=\"\"> </a>\n");
      out.write(" \t</div>\n");
      out.write("<div class=\"menu\" style=\"padding-left: 112px\">\n");
      out.write("\t     \n");
      out.write("\t\t     <nav style=\"padding-top: 40px; padding-bottom: 40px\">\n");
      out.write("\t\t    <ul class=\"sf-menu\">\n");
      out.write("\t\t        <li><a href=\"index.jsp\" style=\"padding-left: 49px; padding-right: 40px;\">Home</a></li>\n");
      out.write("\t\t        <li><a href=\"about.jsp\" style=\"padding-left: 40px; padding-right: 40px;\" >About</a></li>\n");
      out.write("                        <li class=\"current\" style=\"width:304px\"><a href=\"discovergreatfood.jsp\" style=\"padding-left: 49px; padding-right: 40px;\">Discover Great Food</a></li>\n");
      out.write("\t\t        <li><a href=\"food.jsp\" style=\"padding-left: 49px; padding-right: 40px;\">Own A Shop</a></li>\n");
      out.write("\t\t        <li><a href=\"contact.jsp\" >Contact</a></li>\n");
      out.write("\t\t    </ul>\n");
      out.write("\t\t    \n");
      out.write("\t\t</nav>\n");
      out.write("</div>\n");
      out.write("<div class=\"clear\"></div>\n");
      out.write("</div>-->\n");
      out.write("<div class=\"container1\">\n");
      out.write("    <div class=\"header1\" style=\"padding-bottom: 0px\">\n");
      out.write("\t\t\t<div class=\"logo1\">\n");
      out.write("                            <a href=\"index.jsp\"><img src=\"images/logo.png\" class=\"img-responsive\" alt=\"\" style=\"padding-left: 6px;padding-bottom: 10px;margin-left: 178px; width: 212px;height: 138px\"></a>\n");
      out.write("\t\t\t\t<div class=\"head-nav1\">\n");
      out.write("\t\t\t\t\t<span class=\"menu1\"> </span>\n");
      out.write("\t\t\t\t\t\t<ul class=\"cl-effect-16\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"index.jsp\" data-hover=\"HOME\">home</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"about.jsp\" data-hover=\"ABOUT US\">about us</a></li>\n");
      out.write("                                                        <li><a href=\"discovergreatfood.jsp\" style=\"color: black\" data-hover=\"DISCOVER GREAT FOOD\">discover great food</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"ownashop/ownashop.jsp\" data-hover=\"OWN A SHOP\">own a shop</a></li>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\" contact.jsp\" data-hover=\"CONTACT US\">contact us</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t<!-- script-for-nav -->\n");
      out.write("\t\t\t\t\t\t<script>\n");
      out.write("\t\t\t\t\t\t\t$( \"span.menu\" ).click(function() {\n");
      out.write("\t\t\t\t\t\t\t  $( \".head-nav ul\" ).slideToggle(300, function() {\n");
      out.write("\t\t\t\t\t\t\t\t// Animation complete.\n");
      out.write("\t\t\t\t\t\t\t  });\n");
      out.write("\t\t\t\t\t\t\t});\n");
      out.write("\t\t\t\t\t\t</script>\n");
      out.write("\t\t\t\t\t<!-- script-for-nav --> \n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                </div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("        </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"clear\"></div>\n");
      out.write("<div class=\"body-bg\">\n");
      out.write("<div class=\"wrap\">\n");
      out.write("<div class=\"b-main\">\n");
      out.write("<div class=\"content\">\n");
      out.write("   <!------------End Header ------------>\n");
      out.write("  <div class=\"main\">\n");
      out.write("    \n");
      out.write("                                    <div class=\"content\">\n");
      out.write("    \t        <div class=\"content_top\">\n");
      out.write("    \t        \t<div class=\"wrap\">\n");
      out.write("\t\t          \t   <h3>Latest Products</h3>\n");
      out.write("\t\t          \t</div>\n");
      out.write("\t\t          \t<div class=\"line\"> </div>\n");
      out.write("\t\t          \t<div class=\"wrap\">\n");
      out.write("\t\t          \t <div class=\"ocarousel_slider\">  \n");
      out.write("\t      \t\t\t\t<div class=\"ocarousel example_photos\" data-ocarousel-perscroll=\"3\">\n");
      out.write("\t\t\t                <div class=\"ocarousel_window\">\n");
      out.write("                                           <a href=\"#\" title=\"img1\"> <img src=\"foodimages/carrot-cake.jpg\" alt=\"\" height=\"150\" width=\"198px\"/><p>Carrot Cake</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img2\"> <img src=\"foodimages/cheese-cake.jpg\" alt=\"\" height=\"150\" width=\"198px\" /><p>Cheese Cake</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img3\"> <img src=\"foodimages/chicken-pie.jpg\" alt=\"\" height=\"150\" width=\"198px\" /><p>Chicken Pie</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img4\"> <img src=\"foodimages/chinese-noodles.jpg\" alt=\"\" height=\"150\" width=\"198px\"  /><p>Chinese Noodles</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img5\"> <img src=\"foodimages/classic-chicken-panini.jpg\" alt=\"\" height=\"150\" width=\"198px\" /><p>Classic Chicken</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img6\"> <img src=\"foodimages/idli.jpg\" alt=\"\" height=\"150\" width=\"198px\" /><p>Idli</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img1\"> <img src=\"foodimages/kadhai-paneer.jpg\" alt=\"\" height=\"150\" width=\"198px\" /><p>Kadhai Paneer</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img2\"> <img src=\"foodimages/kai-murukku.jpg\" alt=\"\" height=\"150\" width=\"198px\" /><p>Kai Muru</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img3\"> <img src=\"foodimages/samosa.jpg\" alt=\"\" height=\"150\" width=\"198px\"/><p>Samosa</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img4\"> <img src=\"foodimages/thepla.jpg\" alt=\"\" height=\"150\" width=\"198px\" /><p>Thepla</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img5\"> <img src=\"foodimages/tomato-rice.jpg\" alt=\"\" height=\"150\" width=\"198px\"  /><p>Tomato Rice</p></a>\n");
      out.write("                                            <a href=\"#\" title=\"img6\"> <img src=\"foodimages/upma.jpg\" alt=\"\" height=\"150\" width=\"198px\" /><p>Upma</p></a>\n");
      out.write("\t\t\t                 </div>\n");
      out.write("\t\t\t               <span>           \n");
      out.write("\t\t\t                <a href=\"#\" data-ocarousel-link=\"left\" style=\"float: left;\" class=\"prev\"> </a>\n");
      out.write("\t\t\t                <a href=\"#\" data-ocarousel-link=\"right\" style=\"float: right;\" class=\"next\"> </a>\n");
      out.write("\t\t\t               </span>\n");
      out.write("\t\t\t\t\t   </div>\n");
      out.write("\t\t\t\t     </div>  \n");
      out.write("\t\t\t\t   </div>    \t\t\n");
      out.write("    \t       </div>\n");
      out.write("    \t \n");
      out.write("      </div>\n");
      out.write("  \n");
      out.write("\t\t\t\t     </div>  \n");
      out.write("\t\t\t\t   </div>    \t\t\n");
      out.write("    \t       </div>\n");
      out.write("    \t  <div class=\"content_bottom\" style=\"height:542px;\">\n");
      out.write("    \t    <div class=\"wrap\" style=\"width:1150px\">\n");
      out.write("    \t    \t<div class=\"content-bottom-left\">\n");
      out.write("    \t    \t\t<div class=\"categories\">\n");
      out.write("\t\t\t\t\t\t   <ul>\n");
      out.write("                                                       <h3 style=\"padding-top: 13px;\">Browse All Categories</h3>\n");
      out.write("                                                        ");

            try
            {
            myconnection obj=new myconnection();
            String q="select * from tbcategory ";
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
           
             while(rs.next())
            {
                
               
            
      out.write("\n");
      out.write("\t\t\t\t\t\t\t      <li><a href=\"discovergreatfood.jsp?id=");
      out.print(rs.getInt("cid"));
      out.write('"');
      out.write('>');
      out.print( rs.getString("cname"));
      out.write("</a></li>\n");
      out.write("\t\t\t\t\t\t\t       ");

    
            }
        
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            
            
            
            
            
            
            
      out.write("\n");
      out.write("\t\t\t\t\t\t\t       \n");
      out.write("\t\t\t\t\t\t  \t </ul>\n");
      out.write("\t\t\t\t\t\t</div>\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"buters-guide\">\n");
      out.write("\t\t\t\t\t\t<h3 style=\"padding-top: 13px;\">Buyers Guide</h3>\n");
      out.write("\t\t\t\t\t\t<p><span>We want you to be happy with your purchase.</span></p>\t\n");
      out.write("\t\t\t\t\t\t<p>So we're committed to giving you all the tools to make the right decision with minimum fuss. </p>\n");
      out.write("\t\t\t\t\t  </div>\t\n");
      out.write("\t\t\t\t\t  \n");
      out.write("    \t    \t</div>\n");
      out.write("    \t    \t\n");
      out.write("            <div class=\"content-bottom-right\" >\n");
      out.write("                    <h3 style=\"padding-top: 13px;\" style=\"background: #fe9b00 !important\">Browse All Categories</h3>\n");
      out.write("\t            <div class=\"section group\">\n");
      out.write("                         ");

            try
            {
//                int count=0;
            myconnection obj=new myconnection();
            String q="";
            if(request.getParameter("id")!=null)
                q="select * from tbitems  where cid="+request.getParameter("id");
            else
                q="select * from tbitems";
        
            PreparedStatement pst=obj.db.prepareStatement(q);
            ResultSet rs;
            rs=pst.executeQuery();
           String name=(String)session.getAttribute("username");
//               for(count=0;count<2;count++)
//               {
                   while(rs.next())
                   {
                       session.setAttribute("username",name);
            
      out.write("\n");
      out.write("\t\t\t\t  <div class=\"grid_1_of_4 images_1_of_4\">\n");
      out.write("                                      <h4 style=\"margin-top: 20px;\"><a href=pdetails.jsp?iid=");
      out.print(rs.getInt("iid"));
      out.write('"');
      out.write('>');
      out.print( rs.getString("iname"));
      out.write("</a></h4>\n");
      out.write("                                      <a href=\"pdetails.jsp?iid=");
      out.print(rs.getInt("iid"));
      out.write("\" style=\"margin-top: 20px;\"><img src=\"foodimages/");
      out.print( rs.getString("image"));
      out.write("\" alt=\"\" height=\"134px\" width=\"198px\" /></a>\n");
      out.write("\t\t\t\t\t  <div class=\"price-details\" style=\"margin-top: 12px;\">\n");
      out.write("                                              <div class=\"price-number\">\n");
      out.write("\t\t\t\t\t\t\t<p><span class=\"rupees\">Rs ");
      out.print(rs.getInt("price"));
      out.write("</span></p>\n");
      out.write("\t\t\t\t\t    </div>\n");
      out.write("\t\t\t\t\t       \t\t<div class=\"add-cart\">\t\t\t\t\t\t\t\t\n");
      out.write("                                                            <h4><a href=\"pdetails.jsp?iid=");
      out.print(rs.getInt("iid"));
      out.write("\">More Info</a></h4>\n");
      out.write("\t\t\t\t\t\t\t     </div>\n");
      out.write("\t\t\t\t\t\t\t <div class=\"clear\"></div>\n");
      out.write("\t\t\t\t\t</div>\t\t\t\t\t \n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t   ");

    
            }
               
            }
            catch(SQLException e)
            {
                out.println(e.getMessage());
            }
            catch(NumberFormatException ne)
            {
                out.println(ne.getMessage());
            }
            
            
            
            
            
            
      out.write("\n");
      out.write("\t\t\t  \n");
      out.write("\t\t      </div>\n");
      out.write("\t\t      <div class=\"clear\"></div>\n");
      out.write("\t\t   </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("   </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"clear\"></div>\n");
      out.write("\n");
      out.write("<div class=\"footer1-bg\">\n");
      out.write("<div class=\"wrap\">\n");
      out.write("\t<div class=\"copy\">\n");
      out.write("\t\t\t<p>© 2015 All rights Reserved | Design by Deepika Manchanda</p>\n");
      out.write("\t</div>\t\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("   \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("\t\t$(document).ready(function() {\t\t\t\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t\t\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("    <a href=\"#\" id=\"toTop\"> </a>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/navigation.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
