package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write(" <head>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <meta name=\"description\" content=\"\">\r\n");
      out.write("  <meta name=\"author\" content=\"Dashboard\">\r\n");
      out.write("  <meta name=\"keyword\" content=\"Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina\">\r\n");
      out.write("  <title>Admin Template</title>\r\n");
      out.write("\r\n");
      out.write("  <!-- Favicons -->\r\n");
      out.write("  <link href=\"img/favicon.png\" rel=\"icon\">\r\n");
      out.write("  <link href=\"img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Bootstrap core CSS -->\r\n");
      out.write("  <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <!--external css-->\r\n");
      out.write("  <link href=\"lib/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("  <!-- Custom styles for this template -->\r\n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"css/style-responsive.css\" rel=\"stylesheet\">\r\n");
      out.write("  \r\n");
      out.write("  <!-- =======================================================\r\n");
      out.write("    Template Name: Dashio\r\n");
      out.write("    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/\r\n");
      out.write("    Author: TemplateMag.com\r\n");
      out.write("    License: https://templatemag.com/license/\r\n");
      out.write("  ======================================================= -->\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <!-- **********************************************************************************************************************************************************\r\n");
      out.write("      MAIN CONTENT\r\n");
      out.write("      *********************************************************************************************************************************************************** -->\r\n");
      out.write("  <div id=\"login-page\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <form class=\"form-login\" action=\"code2.jsp\" method=\"post\">\r\n");
      out.write("        <h2 class=\"form-login-heading\">sign in now</h2>\r\n");
      out.write("        <div class=\"login-wrap\">\r\n");
      out.write("          <form  name=\"myform\" action=\"code2.jsp\" method=\"post\">\r\n");
      out.write("              <div class=\"form-group\">\r\n");
      out.write("                  <input type=\"email\" class=\"form-control\" placeholder=\"User ID\"  name=\"name\" autofocus/></div>\r\n");
      out.write("                  <br> <div class=\"form-group\">\r\n");
      out.write("              <input type=\"password\" class=\"form-control\" placeholder=\"Password\" name=\"password\"/></div>\r\n");
      out.write("            <!-- <label class=\"checkbox\">\r\n");
      out.write("         <input type=\"checkbox\" value=\"remember-me\">        Remember me\r\n");
      out.write("            <span class=\"pull-right\">\r\n");
      out.write("            <a data-toggle=\"modal\" href=\"login.jsp#myModal\"> Forgot Password?</a>\r\n");
      out.write("            </span>\r\n");
      out.write("            </label>-->\r\n");
      out.write("          <button class=\"btn  btn-success btn-block\" type=\"submit\" name=\"btn\" value=\"login\" \"><i class=\"fa fa-lock\"></i> SIGN IN</button>\r\n");
      out.write("          <hr></form>\r\n");
      out.write("        \r\n");
      out.write("        </div>\r\n");
      out.write("        <a href=\"index.jsp\"><button class=\"btn  btn-success btn-block\"><i class=\"fa fa-lock\"></i> Home</button></a>\r\n");
      out.write("      </form>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- js placed at the end of the document so the pages load faster -->\r\n");
      out.write("  <script src=\"lib/jquery/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <!--BACKSTRETCH-->\r\n");
      out.write("  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->\r\n");
      out.write("  <script type=\"text/javascript\" src=\"lib/jquery.backstretch.min.js\"></script>\r\n");
      out.write("  <script>\r\n");
      out.write("    $.backstretch(\"img/12345.jpg\", {\r\n");
      out.write("      speed: 500\r\n");
      out.write("    });\r\n");
      out.write("    function rspass()\r\n");
      out.write("    { \r\n");
      out.write("    ");
/* String s1 = request.getParameter("pass");
    String em = request.getParameter("email");
       
           try{  
      
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("update registration set password='"+s1+"' where emailid='"+em+"' ");

//response.sendRedirect("login.jsp");
con.close();  
}catch(Exception e){ System.out.println(e);} */ 
      out.write(" \r\n");
      out.write("        \r\n");
      out.write("    }\r\n");
      out.write("  </script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
