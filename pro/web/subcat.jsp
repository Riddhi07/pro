<%@page import="java.sql.*"%>
<!DOCTYPE html>
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
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datetimepicker/datertimepicker.css" />
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
                  int id=Integer.parseInt(request.getParameter("id"));
                  
                  String btn="sub";
                  String name="";
                  String img="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image"; 
                  String img2="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image";
                  int nop=0,catid=0;
                if(id>0)
                  {  btn="subupd";
                   try{ 
                         
                        
                        Class.forName("com.mysql.jdbc.Driver");  
Connection con =DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root",""); 


                     
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from subcat where subid='"+id+"'");  
rs.next();

     name=rs.getString("subname");
     catid=rs.getInt("catid");
     img=rs.getString("img");
     nop=rs.getInt("nop");
                           
          con.close();  
}catch(Exception e){ System.out.println(e);}    }%>         
                  
        
    <section id="main-content">
     <section class="wrapper">
        <h2><i class="fa fa-angle-right"></i>Sub Category Form<%=name%></h2>
         <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i>Sub Category Elements</h4>
              <form class="form-horizontal style-form" method="post" action="code.jsp">
             <input type="hidden" value="<%=id%>" name="id">
                <div class="form-group">
              <div class="col-sm-10">
                  <input type="text" class="form-control" placeholder="Sub Category Name" value="<%=name%>" required name="subname">
                  </div>
                </div>
                  <div class="form-group">
              <div class="col-sm-10">
                  <input type="text" class="form-control" placeholder="Number of papers" value="<%=nop%>" required name="nop">
                  </div>
                </div>
                  <div class="form-group">
              <div class="col-sm-10">
                  
                  <select type="text" class="form-control" placeholder="Category Name" value="<%=catid%>" required name="catid">
                      <option >select category</option>
                      <%
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
                     %>
                     <option value="<%=aa%>"><%=s%></option>
                     <%}
con2.close();  
}catch(Exception e){ System.out.println(e);}%></select>
                  </div>
                </div>
                  
                  <div class="form-group last">
                  <label class="control-label col-md-3">Image Upload</label>
                  <div class="col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" name="img" style="width: 200px; height: 150px;">
                          <img src="<%=img%>=" alt="" name="img" required  />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                      <div>
                        <span class="btn btn-theme02 btn-file">
                          <span class="fileupload-new" ><i class="fa fa-paperclip"></i> Select image</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                        <input type="file" class="default" name="img1" />
                        </span>
                        <a href="subcat.jsp?id=0" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash-o"></i> Remove</a>
                      </div>
                    </div>
                    <span class="label label-info">NOTE!</span>
                    <span>
                      Attach image
                      </span>
                  </div>
                </div>
               
               
                  <button type="submit" class="btn btn-round btn-info" name="btn" value="<%=btn%>">Save</button>
                <button type="Reset" class="btn btn-round btn-info" onClick="subcat.jsp?id=0">Reset</button>
              </form>
            </div>
          </div>
     
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
                      <th width="10%" class="numeric"><h4>Category ID</h4></th>
                       <th width="10%" class="numeric"><h4>Sub Category ID</h4></th>
                    <th width="25%" ><h4>Sub Category Name</h4></th>
                     <th width="10%" class="numeric"><h4>Number of papers</h4></th>
                    <th width="25%" ><h4>Image Path</h4></th>
                   
                      <th width="20%">
                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                   </th>
                    </tr>
                  </thead>
                  <tbody>
                       <%
                    try{  
                        int a=0,b=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from subcat");  
while(rs.next()) 
{
     a=rs.getInt(1);
     b=rs.getInt(2);
     int c =rs.getInt(4);
      String s=rs.getString(3);
      String img3=rs.getString(5);
                     %>
                      <tr>
                          <td><%=a%></td>
                          <td><%=b%></td>
                          <td><%=s%></td>
                          <td><%=c%></td>
                          <td><%=img3%></td>
                          <td> <form  method="post" action="code.jsp"  >
                                  <input type="hidden" value="<%=b%>" name="id">
                                 <button class="btn btn-primary btn-xs" type="submit" name="btn" value="subup"><i class="fa fa-pencil"></i></button>                                 <button class="btn btn-danger btn-xs" type="submit" name="btn" value="subdel"><i class="fa fa-trash-o"></i></button> </form></td>
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
        <a href="subcat.jsp?id=0" class="go-top">
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
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script> 
  <script src="lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script type="text/javascript" src="lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/date.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/daterangepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="lib/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="lib/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
  <script src="lib/advanced-form-components.js"></script>
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

