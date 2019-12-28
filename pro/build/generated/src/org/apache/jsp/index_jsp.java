package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\r\n");
      out.write("\t<title>Vtesters - Educational Platform</title>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<meta name=\"description\" content=\"WebUni Education Template\">\r\n");
      out.write("\t<meta name=\"keywords\" content=\"webuni, education, creative, html\">\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\t<!-- Favicon -->   \r\n");
      out.write("\t<link href=\"img/favicon.ico\" rel=\"shortcut icon\"/>\r\n");
      out.write("\r\n");
      out.write("\t<!-- Google Fonts -->\r\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\t<!-- Stylesheets -->\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css2/bootstrap.min.css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css2/font-awesome.min.css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css2/owl.carousel.css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css2/style.css\"/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!--[if lt IE 9]>\r\n");
      out.write("\t  <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n");
      out.write("\t  <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("\t<![endif]-->\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- Page Preloder -->\r\n");
      out.write("\t<div id=\"preloder\">\r\n");
      out.write("\t\t<div class=\"loader\"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<!-- Header section -->\r\n");
      out.write("\t<header class=\"header-section\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-3 col-md-3\">\r\n");
      out.write("\t\t\t\t\t<div class=\"site-logo\"><img src=\"img/logo.png\" alt=\"\"></div>\r\n");
      out.write("\t\t\t\t\t<div class=\"nav-switch\">\r\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-bars\"></i>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-9 col-md-9\">\r\n");
      out.write("\t\t\t\t\t<a href=\"login.jsp\" class=\"site-btn header-btn\">Login</a>\r\n");
      out.write("\t\t\t\t\t<nav class=\"main-menu\">\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("                                                    <li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("   \t\t\t\t\t\t\t<li><a href=\"courses.jsp\">Courses</a></li>\r\n");
      out.write("                                                     <li><a href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</nav>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</header>\r\n");
      out.write("\t<!-- Header section end -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- Hero section --> \r\n");
      out.write("        <section class=\"hero-section set-bg\" data-setbg=\"img/bg.jpg\" style=\"height:660px;width: auto; background-size: cover;\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"hero-text text-white\" style=\" padding-top: 270px\">\r\n");
      out.write("                            <h1>v<span style=\"color:#ce213d\">Testers</span></h1>\r\n");
      out.write("\t\t\t\t<h2>Best Platform For Testing Your Skills</h2>\r\n");
      out.write("\t\t\t\t<h4>We are here to give you best opportunity to enhance your skills and test them.</h4>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("\t<!-- Hero section end -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- categories section -->\r\n");
      out.write("\t<section class=\"categories-section spad\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"section-title\">\r\n");
      out.write("\t\t\t\t<h2>Our Course Categories</h2>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<!-- categorie -->\r\n");
      out.write("                                  ");

                           try{ 
                          
                        
                        Class.forName("com.mysql.jdbc.Driver");  
Connection con2 =DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");
Statement stmt2=con2.createStatement();  
ResultSet rs2=stmt2.executeQuery("select * from category");  
while(rs2.next()) 
{
     int aa=rs2.getInt(1);
      String s=rs2.getString(2);
      String img=rs2.getString(3);
      
                     
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                     <a href=\"courses.jsp\"><div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("\t\t\t\t\t<div class=\"categorie-item\">\r\n");
      out.write("                                            <div class=\"ci-thumb set-bg\" data-setbg=\"img/");
      out.print(img);
      out.write("\"></div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"ci-text\">\r\n");
      out.write("                                                    <h5>");
      out.print(s);
      out.write("</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<p></p>\r\n");
      out.write("                                                        <span></span></a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                     ");
  
                             }
con2.close();  
}catch(Exception e){ System.out.println(e);}
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("\t<!-- categories section end -->\r\n");
      out.write("\r\n");
      out.write("\t<!-- signup section -->\r\n");
      out.write("\t<section class=\"signup-section spad\">\r\n");
      out.write("\t\t<div class=\"signup-bg set-bg\" data-setbg=\"img/signup-bg.jpg\"></div>\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-lg-6\">\r\n");
      out.write("\t\t\t\t\t<div class=\"signup-warp\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"section-title text-white text-left\">\r\n");
      out.write("\t\t\t\t\t\t\t<h2>Sign up to test your skills</h2>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("                        </div>\r\n");
      out.write("\t\t\t\t\t\t<!-- signup form -->\r\n");
      out.write("                                                <form class=\"signup-form\" method=\"post\" action=\"code2.jsp\">\r\n");
      out.write("                                                    <input type=\"text\" placeholder=\"Your Name\" name=\"name\">\r\n");
      out.write("                                                    <input type=\"email\" placeholder=\"Your E-mail\" name=\"email\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Your Phone\" name=\"contact\">\r\n");
      out.write("                                                        <input type=\"password\" placeholder=\"Your Password\" name=\"pass\" style=\"height: 57px;\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tpadding: 0 30px;\r\n");
      out.write("\tmargin-bottom: 27px;\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("\tborder: none;\r\n");
      out.write("\tfont-size: 14px;\r\n");
      out.write("\tfont-weight: 500;\r\n");
      out.write("\tbackground: #edf4f6;\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"file\" id=\"v-upload\">\r\n");
      out.write("                                                        <button type=\"submit\" class=\"site-btn\" name=\"btn\" value=\"reg\"><a nohref class=\"site-btn header-btn\">Login</a></button>\r\n");
      out.write("\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("\t<!-- signup section end -->\r\n");
      out.write("\r\n");
      out.write("\t<!-- footer section -->\r\n");
      out.write("\t<footer class=\"footer-section spad pb-0\">\r\n");
      out.write("\t\t<div class=\"footer-top\">\r\n");
      out.write("\t\t\t<div class=\"footer-warp\">\r\n");
      out.write("\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t<div class=\"widget-item\">\r\n");
      out.write("\t\t\t\t\t\t<h4>Contact Info</h4>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"contact-list\">\r\n");
      out.write("\t\t\t\t\t\t\t<li>1481 Creekside Lane <br>Avila Beach, CA 931</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>+53 345 7953 32453</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>yourmail@gmail.com</li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("                                    \r\n");
      out.write("                                         ");

                           try{ 
                          
                        
                        Class.forName("com.mysql.jdbc.Driver");  
Connection con2 =DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");
Statement stmt2=con2.createStatement();  
ResultSet rs2=stmt2.executeQuery("select * from category");  
while(rs2.next()) 
{
     int aa=rs2.getInt(1);
      String s=rs2.getString(2);
      String img=rs2.getString(3);
      
                     
      out.write("\r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t\t\t<div class=\"widget-item\">\r\n");
      out.write("\t\t\t\t\t\t<h4>");
      out.print(s);
      out.write("</h4>\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("                                                    \r\n");
      out.write("                                                     ");

                    try{  
                        int a=0,b=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from subcat where catid='"+aa+"'");  
while(rs.next()) 
{
     a=rs.getInt(1);
     b=rs.getInt(2);
     int c =rs.getInt(4);
      String ss=rs.getString(3);
      String img3=rs.getString(5);
                     
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"courses.jsp\">");
      out.print(ss);
      out.write("</a></li>\r\n");
      out.write("                                                        ");
  
                             }
con.close();  
}catch(Exception e){ System.out.println(e);}
      out.write("\r\n");
      out.write("                                                        \r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t");
  
                             }
con2.close();  
}catch(Exception e){ System.out.println(e);}
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"widget-item\">\r\n");
      out.write("\t\t\t\t\t\t<h4>Newsletter</h4>\r\n");
      out.write("\t\t\t\t\t\t<form class=\"footer-newslatter\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"email\" placeholder=\"E-mail\">\r\n");
      out.write("\t\t\t\t\t\t\t<button class=\"site-btn\">Subscribe</button>\r\n");
      out.write("\t\t\t\t\t\t\t<p>*We donât spam</p>\r\n");
      out.write("\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"footer-bottom\">\r\n");
      out.write("\t\t\t<div class=\"footer-warp\">\r\n");
      out.write("\t\t\t\t<ul class=\"footer-menu\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</footer> \r\n");
      out.write("\t<!-- footer section end -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!--====== Javascripts & Jquery ======-->\r\n");
      out.write("\t<script src=\"js2/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("\t<script src=\"js2/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"js2/mixitup.min.js\"></script>\r\n");
      out.write("\t<script src=\"js2/circle-progress.min.js\"></script>\r\n");
      out.write("\t<script src=\"js2/owl.carousel.min.js\"></script>\r\n");
      out.write("\t<script src=\"js2/main.js\"></script>\r\n");
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
