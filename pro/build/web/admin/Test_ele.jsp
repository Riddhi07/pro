<!DOCTYPE html>
<%@page import="java.sql.*"%>
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
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

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
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>v<span>Testers</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-tasks"></i>
              </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
             
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-envelope-o"></i></a>
           
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-bell-o"></i>
              </a>
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="login.html">Logout</a></li>
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
          <p class="centered"><a href="profile.html"><img src="img/ny.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered"><b>vTesters</b></h5>
          <li class="mt"> <a class="active" href="index.html"> <i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
          <li class="sub-menu"> <a href="javascript:;"> <i class="fa fa-book"></i> <span>Extra Pages</span></a>
            <ul class="sub">
              <li><a href="login.html">Login</a></li>
              <li><a href="profile.html">Profile</a></li>
              <li><a href="faq.html">FAQ</a></li>
            </ul>
          </li>
          <li class="sub-menu"> <a href="javascript:;"> <i class="fa fa-tasks"></i> <span>Forms</span></a>
           <ul class="sub">
              <li><a href="Registration_form.jsp?id=0">Registration Form</a></li>
              <li><a href="Cat_subcat.jsp?id=0">Category Form</a></li>
              <li><a href="subcat.jsp?id=0">Sub Category Form</a></li>
              <li><a href="Test_ele.jsp?id=0">Test Form</a></li>
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
    <section id="main-content">
      <section class="wrapper">
        <h2><i class="fa fa-angle-right"></i>Test Form</h2>
        <!-- BASIC FORM ELELEMNTS -->
       
          <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i> Test Elements</h4>
              <%
                  int id=Integer.parseInt(request.getParameter("id"));
                  String btn="test";
                  String name="";
                 String maxmarks="",nofq="",ttime="",a="",subid="";
                  if(id!=0)
                  {
                      try{  btn="testupd";
                        
                        Class.forName("com.mysql.jdbc.Driver");  
Connection con =DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from test where tid='"+id+"'");  
rs.next();
 a=rs.getString(2);
 subid=rs.getString(3);
 name=rs.getString(4);
 maxmarks=rs.getString(5);
 nofq=rs.getString(6);
 ttime=rs.getString(7);                    
                      }catch(Exception e){}}
                  
              %>
              <form class="form-horizontal style-form" method="post" action="code.jsp" name="myform">
            <input type="hidden" value="<%=id%>" name="id">
                <div class="form-group">
              <div class="col-sm-10">
                  <input type="text" class="form-control" placeholder="Test Name" value="<%=name%>" required name="testname">
                  </div>
                </div>
                   <div class="form-group">
              <div class="col-sm-10">
                  <select class="form-control" name="catid" >
                      <option>Select Category Name</option> 
                      <%
                    try{  
                        
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from category");  
while(rs.next()) 
{
     a=rs.getString(1);
      String s=rs.getString(2);  
                     %>
                     <option value="<%=a%>"><%=s%></option>
                     
                       <% 
                             }
con.close();  
}catch(Exception e){ System.out.println(e);} 
                    
%> </select>
                  
                  </div>
                </div>
                  <div class="form-group">
              <div class="col-sm-10">
                  
                  <select name="subid" class="form-control">
                      <option>Select Sub Category Name</option>
                 <%
                    try{  
                       
                         int b=0;
                          int c=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from subcat");  
while(rs.next()) 
{
    
    b=rs.getInt(2);
    String sub=rs.getString(3);
   
                       %>
                       <option class="dropdown-item form-control" value="<%=b%>" name="subid">   <%=b%>).  <%=sub%> </option> 
                      
                        <% 
                             }
con.close();  
}catch(Exception e){ System.out.println(e);} 
                    
                    %>
                      
                  </select> 
                      </div>
                </div>
                      <div class="form-group">
                  
                  <div class="col-sm-10">
                      <input type="number" class="form-control" placeholder="Max marks" <%if(maxmarks!= ""){%>value="<%=maxmarks%>"<%}%> name="maxmarks" required>
                  </div>
                </div>
                 <div class="form-group">
                  
                  <div class="col-sm-10">
                      <input type="number" class="form-control" placeholder="Number of question in Test" <%if(nofq!= ""){%> value="<%=nofq%>"<%}%> required name="noof_que">
                  </div>
                </div>
                  <div class="form-group">
              <div class="col-sm-10">
                  <input type="number" required class="form-control" placeholder="Time per Test" name="testtime"  <%if(nofq!= ""){%>  value="<%=ttime%>"<%}%>>
                  </div>
                </div>
               
                  <button type="submit" class="btn btn-round btn-info" name="btn" value="<%=btn%>">Save</button>
                <button type="reset" class="btn btn-round btn-info" onClick="Test_ele.jsp?id=0">Reset</button>
              </form>
            </div>
          </div>
          
        </div>
          <!-- col-lg-12-->
        
        </div>
          
        </div>
       
        <!-- ADVANCED INPUT  -->
       
        <div class="row mt">
         <div class="row mt">
        <div class="col-lg-12">
        <div class="form-panel">
         <form class="form-horizontal style-form" method="get">
                  <table class="table table-bordered table-striped table-condensed">
                  <thead>
                    <tr>
                      <th width="10%" class="numeric"><h4>Test  ID</h4></th>
                      <th width="25%"><h4>Test Name</h4></th>
                      <th width="10%" class="numeric"><h4>Category ID</h4></th>
                       <th width="10%" class="numeric"><h4>Sub Category ID</h4></th>
                      <th width="15%" class="numeric"><h4>Test Time</h4></th>
                     
                      <th width="10%" class="numeric"><h4>Max marks</h4></th>
                       <th width="10%" class="numeric"><h4>No. of Questions</h4></th>
                       <th width="10%"> 
                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                   </th>
                    </tr>
                  </thead>
                  <tbody>
                               <%
                    try{  
                       
                        int b=0;
                        int c=0;
                        int d=0;
                        int e=0;
                        int f=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from test");  
while(rs.next()) 
{
  a=rs.getString("tid");
  b=rs.getInt(2);
  c=rs.getInt(3);
  String s =rs.getString(4);
  d=rs.getInt(5);
  e=rs.getInt(6);
  f=rs.getInt(7);

                               %>
                               <tr>
                                   <td><%=a%></td>
                                   <td><%=s%></td>
                                   <td><%=b%></td>
                                   <td><%=c%></td>
                                   <td><%=f%></td>
                                   <td><%=d%></td>
                                   <td><%=e%></td>
                                   <td> <form  method="post" action="code.jsp"  >
                                  <input type="hidden" value="<%=a%>" name="id">
                                 <button class="btn btn-primary btn-xs" type="submit" name="btn" value="testup"><i class="fa fa-pencil"></i></button>
                                 <button class="btn btn-danger btn-xs" type="submit" name="btn" value="testdel"><i class="fa fa-trash-o"></i></button> </form></td>
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
        
        
        
       </div>
        <!-- /row -->
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
        <a href="Test_ele.jsp?id=0" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
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
