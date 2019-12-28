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
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page">
    <div class="container">
      <form class="form-login" action="code2.jsp" method="post">
        <h2 class="form-login-heading">sign in now</h2>
        <div class="login-wrap">
          <form  name="myform" action="code2.jsp" method="post">
              <div class="form-group">
                  <input type="email" class="form-control" placeholder="User ID"  name="name" autofocus/></div>
                  <br> <div class="form-group">
              <input type="password" class="form-control" placeholder="Password" name="password"/></div>
            <!-- <label class="checkbox">
         <input type="checkbox" value="remember-me">        Remember me
            <span class="pull-right">
            <a data-toggle="modal" href="login.jsp#myModal"> Forgot Password?</a>
            </span>
            </label>-->
          <button class="btn  btn-success btn-block" type="submit" name="btn" value="login" "><i class="fa fa-lock"></i> SIGN IN</button>
       <br>  <a href="index.jsp"  class="btn  btn-success btn-block"><i class="fa fa-home"></i> Home</a>
          <hr></form>
        
        </div>
      </form>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("img/12345.jpg", {
      speed: 500
    });
    function rspass()
    { 
    <%/* String s1 = request.getParameter("pass");
    String em = request.getParameter("email");
       
           try{  
      
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("update registration set password='"+s1+"' where emailid='"+em+"' ");

//response.sendRedirect("login.jsp");
con.close();  
}catch(Exception e){ System.out.println(e);} */ %> 
        
    }
  </script>
</body>

</html>
