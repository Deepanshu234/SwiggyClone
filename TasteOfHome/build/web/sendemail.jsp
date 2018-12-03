
      
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Session"%>
<%@page import="org.apache.catalina.Session"%>
<%@page import="java.util.Properties"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMAIL SENDING...</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String host = "smtp.gmail.com";
String from = "tasteofhome6@gmail.com";
String pass = "onlinead1#";
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
    message.setFrom(new InternetAddress("tasteofhome6@gmail.com"));

    // Set recipient
     String username=(String)session.getAttribute("username");
     String email=(String)session.getAttribute("email");
                      
    message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));

    // Set Subject: header field
    message.setSubject("confirm registration");

    // set content and define type
    message.setContent("Thankyou for registering with taste of home !!your username is='"+username+"'and emails is='"+email+"'","text/html; charset=utf-8");

    Transport transport = s1.getTransport("smtp");
    transport.connect(host, from, pass);
    transport.sendMessage(message, message.getAllRecipients());
    transport.close();
    
  } catch (MessagingException mex) {
    System.out.println(mex.getLocalizedMessage());
    out.println(mex.getMessage());
    out.println(mex.getLocalizedMessage());
}


                                                    response.sendRedirect("signup.jsp");

            %>
    </body>
</html>

  
