<!DOCTYPE html><%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Admin Template</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>
  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index2.html" class="logo"><b>v<span>Testers</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index2.html#">
              <i class="fa fa-tasks"></i>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
             
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index2.html#">
              <i class="fa fa-envelope-o"></i></a>
           
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index2.html#">
              <i class="fa fa-bell-o"></i>
              </a>
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="login.jsp">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="index2.html"><img src="img/ny.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered"><b>vTesters</b></h5>
          <li class="mt"> <a class="active" href="index2.html"> <i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
         
          <li class="sub-menu"> <a href="javascript:;"> <i class="fa fa-tasks"></i> <span>Forms</span></a>
            <ul class="sub">
              <li><a href="Registration_form.jsp?id=0">Registration Form</a></li>
              <li><a href="Cat_subcat.jsp?id=0">Category Form</a></li>
              <li><a href="subcat.jsp?id=0">Sub Category Form</a></li>
              <li><a href="ques_form.jsp?id=0">Question Form</a></li>
              <li><a href="result.jsp?id=0">Result Form</a></li>
              <li><a href="contactform.jsp?id=0">Contact Form</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <%
    
    %>
    <section id="main-content">
      <section class="wrapper">
        <h2><i class="fa fa-angle-right"></i>Registration Form</h2>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i> Registration  Elements</h4>
              <%
                  int id=Integer.parseInt(request.getParameter("id"));
                  String btn="regf";
                  String name="";
                  int contact=0;
                  String email="";
                  String pass="";
                  if(id!=0)
                  {
                      try{  btn="regupd";
                        
                        Class.forName("com.mysql.jdbc.Driver");  
Connection con =DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from registration where regid='"+id+"'");  
rs.next();

     name=rs.getString("name");
     contact= rs.getInt(3);
     email =rs.getString(4);
     pass=rs.getString(5);
                    
                      }catch(Exception e){}}
                  
              %>
              <form class="form-horizontal style-form" method="post" action="code.jsp"  >
                 
                <div class="form-group">
              <div class="col-sm-10">
                  <input type="hidden" value="<%=id%>" name="id">
                  <input type="text" class="form-control" placeholder="Name" name="name" value="<%=name%>" required>
                  </div>
                </div>
                <div class="form-group">
                  
                  <div class="col-sm-10">
                      <input type="number" class="form-control" placeholder="Contact" name="contact" <%if(contact!=0){%>value="<%=contact%>"<%}%> id="numloc" required>
                  </div>
                </div>
                
                <div class="form-group">
                <div class="col-lg-10">
                    <input type="email" class="form-control" placeholder="Email id" name="email" value="<%=email%>"required>
                  </div>
                </div>
                <div class="form-group">
                 
                  <div class="col-sm-10">
                      <input type="password" class="form-control" placeholder="Password" name="pass" value="<%=pass%>" required>
                  </div>
                </div>
                  <button type="submit" class="btn btn-round btn-info" name="btn" value="<%=btn%>">Save</button>
                <button type="reset" class="btn btn-round btn-info" onClick="Registration_form.jsp?id=0">Reset</button>
              </form>
            </div>
          </div>
          <!-- col-lg-12-->
          
        </div>
        
          
        </div>
          
        </div>
       
        <!-- ADVANCED INPUT  -->
        <div class="row mt">
        <div class="col-lg-12">
        <div class="form-panel">
         <form class="form-horizontal style-form" method="get">
              
                  <table class="table table-bordered table-striped table-condensed">
                  <thead>
                    <tr>
                      <th width="15%" class="numeric"><h4>Registration ID</h4></th>
                      <th width="25%"><h4>Name</h4></th>
                     
                      <th width="15%" class="numeric"><h4>Contact</h4></th>
                     
                      <th width="25%" ><h4>Email ID</h4></th>
                      <th width="10%"><h4>Password</h4></th>
                      <th width="10%">
                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                   </th>
                      </tr>
                  </thead>
                  <tbody>
                       <%
                    try{  
                        
                        int a=0;
                      
Class.forName("com.mysql.jdbc.Driver");  
Connection con =DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from registration");  
while(rs.next())  
{
     a=rs.getInt("regid");
     String s=rs.getString("name");
     String cont= rs.getString(3);
     String s1 =rs.getString(4);
     String s2=rs.getString(5);
                     %>
                      <tr>
                          <td><%=a%></td> 
                          <td><%=s%></td> 
                          <td><%=cont%></td> 
                          <td><%=s1%></td> 
                          <td><%=s2%></td>    
                          <td> <form  method="post" action="code.jsp"  >
                                  <input type="hidden" value="<%=a%>" name="id">
                                 <button class="btn btn-primary btn-xs" type="submit" name="btn" value="regup"><i class="fa fa-pencil"></i></button>
                                 <button class="btn btn-danger btn-xs" type="submit" name="btn" value="regdel"><i class="fa fa-trash-o"></i></button> </form></td>
                  </tr>
                      
          <%     
                   }
con.close();  
}catch(Exception e){ System.out.println(e);} 
                    
                    %>
                  </tbody>
                </table>
        
         </form>
        
            
          </div>
            </div>
            <!-- /form-panel -->
              
        </div>
      
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights<strong>vTesters</strong>. All Rights Reserved
        </p>
        <a href="Registration_form.jsp?id=0" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end--></section>
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
 <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="lib/jquery-ui-1.9.2.custom.min.js"></script>
  <!--custom switch-->
  <script src="lib/bootstrap-switch.js"></script>
  <!--custom tagsinput-->
  <script src="lib/jquery.tagsinput.js"></script>
  <!--custom checkbox & radio-->
  <script type="text/javascript" src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
  <script src="lib/form-component.js"></script>


</body>

</html>
