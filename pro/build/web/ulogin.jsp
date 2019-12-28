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
                  <input type="email" class="form-control" placeholder="Email ID"  name="email" autofocus/></div>
                  <br> <div class="form-group">
              <input type="password" class="form-control" placeholder="Password" name="pass"/></div>
            <!-- <label class="checkbox">
         <input type="checkbox" value="remember-me">        Remember me
            <span class="pull-right">
            <a data-toggle="modal" href="login.jsp#myModal"> Forgot Password?</a>
            </span>
            </label>-->
            <%int x =Integer.parseInt(request.getParameter("n")); %>
            <input type="hidden" name="sid" value="<%=x%>">
          <button class="btn  btn-success btn-block" type="submit" name="btn" value="signup" "><i class="fa fa-lock"></i> SIGN IN</button>
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
    $.backstretch("img/bg.jpg", {
      speed: 500 
    });
  
  </script>
</body>

</html>
