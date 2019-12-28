<%-- 
    Document   : resultdisp
    Created on : 26 Jun, 2019, 11:08:55 AM
    Author     : RIDDHI GOYAL
--%>

<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">
 <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">


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
  
	<title>vTesters</title>
	<meta charset="UTF-8">
	<meta name="description" content="WebUni Education Template">
	<meta name="keywords" content="webuni, education, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css2/bootstrap.min.css"/>
	<link rel="stylesheet" href="css2/font-awesome.min.css"/>
	<link rel="stylesheet" href="css2/owl.carousel.css"/>
	<link rel="stylesheet" href="css2/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
        <style>.Rheading2 {
	margin: 0;
	padding: 25px 20px;
	text-align: center;
	background:#c4132e;
	border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	color: #fff;
	font-size: 20px;
	text-transform: uppercase;
	font-weight: 300;
}</style>
</head>

<body>
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <%
   String uid=(String)session.getAttribute("userid");
   int score=Integer.parseInt(request.getParameter("score"));
   int l=uid.length();
   String id=uid.substring(4, l);
   int iid=Integer.parseInt(id);
   String name="";
   String contact="";
   try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con1=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt1=con1.createStatement();  
stmt1.executeUpdate("insert into result(uid,marks)values('"+iid+"','"+score+"')");
con1.close();  
}catch(Exception e){ System.out.println(e);}      
   
    try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  
ResultSet rs1=stmt.executeQuery("select * from reguser where uid='"+iid+"'");
while(rs1.next())
{ 
    name=rs1.getString(2);
    contact=rs1.getString(3);
    String email1=rs1.getString(4);
    String pas1=rs1.getString(5);
         
       }

con.close();  
}catch(Exception e){ System.out.println(e);}     

  

  %>
  <div id="login-page">
    <div class="container">
      <form class="form-login" action="index.jsp">
         <h2 class="Rheading2"><%=name%></h2>
        <div class="login-wrap">
           <!-- Element -->
			<div class="element">
					
					<div class=" cp-item">
                                            <div class="circle-progress" data-cpid="id-1" data-cpvalue="<%=score%>" data-cpcolor="#e82154" data-cptitle="Your Score"></div>
					</div>
					
				</div>
		
			<!-- Element -->
           
                        <button class="btn  btn-danger btn-block" type="submit" name="btn">
                            <strong><i class="fa fa-thumbs-o-up"></i>  OK</strong></button>
          <hr>
        
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
  
	<!--====== Javascripts & Jquery ======-->
	<script src="js2/jquery-3.2.1.min.js"></script>
	<script src="js2/bootstrap.min.js"></script>
	<script src="js2/mixitup.min.js"></script>
	<script src="js2/circle-progress.min.js"></script>
	<script src="js2/owl.carousel.min.js"></script>
	<script src="js2/main.js"></script>
</body>

</html>
