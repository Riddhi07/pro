package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class result_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<head>\r\n");
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
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"lib/bootstrap-datepicker/css/datepicker.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"lib/bootstrap-daterangepicker/daterangepicker.css\" />\r\n");
      out.write("  <!-- Custom styles for this template -->\r\n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"css/style-responsive.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- =======================================================\r\n");
      out.write("    Template Name: Dashio\r\n");
      out.write("    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/\r\n");
      out.write("    Author: TemplateMag.com\r\n");
      out.write("    License: https://templatemag.com/license/\r\n");
      out.write("  ======================================================= -->\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <section id=\"container\">\r\n");
      out.write("    <!-- **********************************************************************************************************************************************************\r\n");
      out.write("        TOP BAR CONTENT & NOTIFICATIONS\r\n");
      out.write("        *********************************************************************************************************************************************************** -->\r\n");
      out.write("    <!--header start-->\r\n");
      out.write("    <header class=\"header black-bg\">\r\n");
      out.write("      <div class=\"sidebar-toggle-box\">\r\n");
      out.write("        <div class=\"fa fa-bars tooltips\" data-placement=\"right\" data-original-title=\"Toggle Navigation\"></div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!--logo start-->\r\n");
      out.write("      <a href=\"index2.html\" class=\"logo\"><b>v<span>Testers</span></b></a>\r\n");
      out.write("      <!--logo end-->\r\n");
      out.write("      <div class=\"nav notify-row\" id=\"top_menu\">\r\n");
      out.write("        <!--  notification start -->\r\n");
      out.write("        <ul class=\"nav top-menu\">\r\n");
      out.write("          <!-- settings start -->\r\n");
      out.write("          <li class=\"dropdown\">\r\n");
      out.write("            <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"index2.html#\">\r\n");
      out.write("              <i class=\"fa fa-tasks\"></i>\r\n");
      out.write("              </a>\r\n");
      out.write("            <ul class=\"dropdown-menu extended tasks-bar\">\r\n");
      out.write("              <div class=\"notify-arrow notify-arrow-green\"></div>\r\n");
      out.write("             \r\n");
      out.write("            </ul>\r\n");
      out.write("          </li>\r\n");
      out.write("          <!-- settings end -->\r\n");
      out.write("          <!-- inbox dropdown start-->\r\n");
      out.write("          <li id=\"header_inbox_bar\" class=\"dropdown\">\r\n");
      out.write("            <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"index2.html#\">\r\n");
      out.write("              <i class=\"fa fa-envelope-o\"></i></a>\r\n");
      out.write("           \r\n");
      out.write("          </li>\r\n");
      out.write("          <!-- inbox dropdown end -->\r\n");
      out.write("          <!-- notification dropdown start-->\r\n");
      out.write("          <li id=\"header_notification_bar\" class=\"dropdown\">\r\n");
      out.write("            <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"index2.html#\">\r\n");
      out.write("              <i class=\"fa fa-bell-o\"></i>\r\n");
      out.write("              </a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"top-menu\">\r\n");
      out.write("        <ul class=\"nav pull-right top-menu\">\r\n");
      out.write("          <li><a class=\"logout\" href=\"login.jsp\">Logout</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    <!--header end-->\r\n");
      out.write("    <!-- **********************************************************************************************************************************************************\r\n");
      out.write("        MAIN SIDEBAR MENU\r\n");
      out.write("        *********************************************************************************************************************************************************** -->\r\n");
      out.write("    <!--sidebar start-->\r\n");
      out.write("    <aside>\r\n");
      out.write("      <div id=\"sidebar\" class=\"nav-collapse \">\r\n");
      out.write("        <!-- sidebar menu start-->\r\n");
      out.write("        <ul class=\"sidebar-menu\" id=\"nav-accordion\">\r\n");
      out.write("          <p class=\"centered\"><a href=\"index2.html\"><img src=\"img/ny.jpg\" class=\"img-circle\" width=\"80\"></a></p>\r\n");
      out.write("          <h5 class=\"centered\"><b>vTesters</b></h5>\r\n");
      out.write("          <li class=\"mt\"> <a class=\"active\" href=\"index2.html\"> <i class=\"fa fa-dashboard\"></i> <span>Dashboard</span></a></li>\r\n");
      out.write("         \r\n");
      out.write("          <li class=\"sub-menu\"> <a href=\"javascript:;\"> <i class=\"fa fa-tasks\"></i> <span>Forms</span></a>\r\n");
      out.write("           <ul class=\"sub\">\r\n");
      out.write("              <li><a href=\"Registration_form.jsp?id=0\">Registration Form</a></li>\r\n");
      out.write("              <li><a href=\"Cat_subcat.jsp?id=0\">Category Form</a></li>\r\n");
      out.write("              <li><a href=\"subcat.jsp?id=0\">Sub Category Form</a></li>\r\n");
      out.write("              <li><a href=\"ques_form.jsp?id=0\">Question Form</a></li>\r\n");
      out.write("              <li><a href=\"result.jsp?id=0\">Result Form</a></li>\r\n");
      out.write("              <li><a href=\"contactform.jsp?id=0\">Contact Form</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <!-- sidebar menu end-->\r\n");
      out.write("      </div>\r\n");
      out.write("    </aside>\r\n");
      out.write("    <!--sidebar end-->\r\n");
      out.write("    <!-- **********************************************************************************************************************************************************\r\n");
      out.write("        MAIN CONTENT\r\n");
      out.write("        *********************************************************************************************************************************************************** -->\r\n");
      out.write("    <!--main content start-->\r\n");
      out.write("    <section id=\"main-content\">\r\n");
      out.write("      <section class=\"wrapper\">\r\n");
      out.write("        <h2><i class=\"fa fa-angle-right\"></i>Result Form</h2>\r\n");
      out.write("        <!-- BASIC FORM ELELEMNTS -->\r\n");
      out.write("        \r\n");
      out.write("          \r\n");
      out.write("         <div class=\"row mt\">\r\n");
      out.write("          <div class=\"col-lg-12\">\r\n");
      out.write("            <div class=\"form-panel\">\r\n");
      out.write("              <h4 class=\"mb\"><i class=\"fa fa-angle-right\"></i> Result Elements</h4>\r\n");
      out.write("              <form class=\"form-horizontal style-form\" method=\"post\" action=\"code.jsp\">\r\n");
      out.write("              ");

                  int id=Integer.parseInt(request.getParameter("id"));
                  String btn="rlt";
                  int tid=0,rid=0,marks=0,date=0;
                  if(id>=0)
                  {
                      try{  btn="rltupd";
                        
                        Class.forName("com.mysql.jdbc.Driver");  
Connection con =DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from result where resultid='"+id+"'");  
rs.next();
    marks=rs.getInt(3);
 
  }catch(Exception e){}
                  }
              
      out.write("\r\n");
      out.write("                  <input type=\"hidden\" value=\"");
      out.print(id);
      out.write("\" name=\"id\">\r\n");
      out.write("                  \r\n");
      out.write("               \r\n");
      out.write("                      <div class=\"form-group\">\r\n");
      out.write("              <div class=\"col-sm-10\">\r\n");
      out.write("                  \r\n");
      out.write("                  <select name=\"uid\" class=\"form-control\">\r\n");
      out.write("                      <option>Select Registration id</option>\r\n");
      out.write("                 ");
int i=0;
                    try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs1=stmt.executeQuery("select * from reguser");
while(rs1.next())
{ 
   String iid=rs1.getString(1);
   
    String name=rs1.getString(2);
    String contact=rs1.getString(3);
    String email1=rs1.getString(4);
    String pas1=rs1.getString(5);
    i++;
                       
      out.write("\r\n");
      out.write("                       <option class=\"dropdown-item form-control\" value=\"");
      out.print(iid);
      out.write("\" name=\"uid\">   ");
      out.print(i);
      out.write(").  ");
      out.print(name);
      out.write(" </option> \r\n");
      out.write("                      \r\n");
      out.write("                        ");
 
                             }
con.close();  
}catch(Exception e){ System.out.println(e);} 
                    
                    
      out.write("\r\n");
      out.write("                      \r\n");
      out.write("                  </select> \r\n");
      out.write("                      </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("              <div class=\"col-sm-10\">\r\n");
      out.write("                  <input type=\"text\" class=\"form-control\" placeholder=\"Obtained Marks\" name=\"marks\"  value=\"");
      out.print(marks);
      out.write("\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("               \r\n");
      out.write("                  <button type=\"submit\" class=\"btn btn-round btn-info\" name=\"btn\" value=\"");
      out.print(btn);
      out.write("\">Save</button>\r\n");
      out.write("                <button type=\"reset\" class=\"btn btn-round btn-info\" onClick=\"result.jsp?id=0\">Reset</button>\r\n");
      out.write("              </form>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          \r\n");
      out.write("        </div>\r\n");
      out.write("          \r\n");
      out.write("        </div>\r\n");
      out.write("       \r\n");
      out.write("        <!-- ADVANCED INPUT  -->\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"row mt\">\r\n");
      out.write("        \r\n");
      out.write("         <div class=\"row mt\">\r\n");
      out.write("        <div class=\"col-lg0-12\">\r\n");
      out.write("        <div class=\"form-panel\">\r\n");
      out.write("         <form class=\"form-horizontal style-form\" method=\"get\">\r\n");
      out.write("                  <table class=\"table table-bordered table-striped table-condensed\">\r\n");
      out.write("                  <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                      <th width=\"25%\" class=\"numeric\"><h4>Result ID</h4></th>\r\n");
      out.write("                      <th width=\"25%\" class=\"numeric\"><h4>Registration ID</h4></th>\r\n");
      out.write("                        <th width=\"25%\" class=\"numeric\"><h4>Obtained Marks</h4></th>\r\n");
      out.write("                          <th width=\"25%\">\r\n");
      out.write("                      <button class=\"btn btn-primary btn-xs\"><i class=\"fa fa-pencil\"></i></button>\r\n");
      out.write("                      <button class=\"btn btn-danger btn-xs\"><i class=\"fa fa-trash-o \"></i></button>\r\n");
      out.write("                   </th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                  </thead>\r\n");
      out.write("                  \r\n");
      out.write("                      ");

                    try{  
                        int a=0;
                         int b=0;
                          int c=0;
                          int d=0;
                          int e=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from result");  
while(rs.next()) 
{
    a=rs.getInt(1);
     b=rs.getInt(2);
    c=rs.getInt(3);
    
                       
      out.write("\r\n");
      out.write("                       <tr>\r\n");
      out.write("                           \r\n");
      out.write("                           <td>");
      out.print(a);
      out.write("</td>\r\n");
      out.write("                           <td>");
      out.print(b);
      out.write("</td>\r\n");
      out.write("                           <td>");
      out.print(c);
      out.write("</td>\r\n");
      out.write("                          \r\n");
      out.write("                           \r\n");
      out.write("                    <td> <form  method=\"post\" action=\"code.jsp\"  >\r\n");
      out.write("                                  <input type=\"hidden\" value=\"");
      out.print(a);
      out.write("\" name=\"id\">\r\n");
      out.write("                                 <button class=\"btn btn-primary btn-xs\" type=\"submit\" name=\"btn\" value=\"rltup\"><i class=\"fa fa-pencil\"></i></button>\r\n");
      out.write("                                 <button class=\"btn btn-danger btn-xs\" type=\"submit\" name=\"btn\" value=\"rltdel\"><i class=\"fa fa-trash-o\"></i></button> </form></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                         ");
 
                             }
con.close();  
}catch(Exception e){ System.out.println(e);} 
                    
                    
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                  </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("            </form>\r\n");
      out.write("          </div>\r\n");
      out.write("           </div>\r\n");
      out.write("            <!-- /form-panel -->\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("       </div>\r\n");
      out.write("        <!-- /row -->\r\n");
      out.write("      </section>\r\n");
      out.write("      <!-- /wrapper -->\r\n");
      out.write("    </section>\r\n");
      out.write("    <!-- /MAIN CONTENT -->\r\n");
      out.write("    <!--main content end-->\r\n");
      out.write("    <!--footer start-->\r\n");
      out.write("    <footer class=\"site-footer\">\r\n");
      out.write("      <div class=\"text-center\">\r\n");
      out.write("        <p>\r\n");
      out.write("          &copy; Copyrights<strong>vTesters</strong>. All Rights Reserved\r\n");
      out.write("        </p>\r\n");
      out.write("        <a href=\"result.jsp?id=0\" class=\"go-top\">\r\n");
      out.write("          <i class=\"fa fa-angle-up\"></i>\r\n");
      out.write("          </a>\r\n");
      out.write("      </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("    <!--footer end-->\r\n");
      out.write("  </section>\r\n");
      out.write("  <!-- js placed at the end of the document so the pages load faster -->\r\n");
      out.write("  <script src=\"lib/jquery/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <script class=\"include\" type=\"text/javascript\" src=\"lib/jquery.dcjqaccordion.2.7.js\"></script>\r\n");
      out.write("  <script src=\"lib/jquery.scrollTo.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/jquery.nicescroll.js\" type=\"text/javascript\"></script>\r\n");
      out.write("  <!--common script for all pages-->\r\n");
      out.write("  <script src=\"lib/common-scripts.js\"></script>\r\n");
      out.write("  <!--script for this page-->\r\n");
      out.write("  <script src=\"lib/jquery-ui-1.9.2.custom.min.js\"></script>\r\n");
      out.write("  <!--custom switch-->\r\n");
      out.write("  <script src=\"lib/bootstrap-switch.js\"></script>\r\n");
      out.write("  <!--custom tagsinput-->\r\n");
      out.write("  <script src=\"lib/jquery.tagsinput.js\"></script>\r\n");
      out.write("  <!--custom checkbox & radio-->\r\n");
      out.write("  <script type=\"text/javascript\" src=\"lib/bootstrap-datepicker/js/bootstrap-datepicker.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"lib/bootstrap-daterangepicker/date.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"lib/bootstrap-daterangepicker/daterangepicker.js\"></script>\r\n");
      out.write("  <script type=\"text/javascript\" src=\"lib/bootstrap-inputmask/bootstrap-inputmask.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/form-component.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
