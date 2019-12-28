<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en">
<head>
	<title>Vtesters - Education Template</title>
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

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo"><img src="img/logo.png" alt=""></div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<a href="" class="site-btn header-btn">Login</a>
					<nav class="main-menu">
						<ul>
							 <li><a href="index.jsp">Home</a></li>
							
   							<li><a href="courses.jsp">Courses</a></li>
                                                     <li><a href="contact.jsp">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
 <!-- Header section end -->

	<!-- Hero section --> 
        <section class="hero-section set-bg" data-setbg="img/bg.jpg" style="height:400px;width: auto; background-size: cover;">
		<div class="container">
                    <div class="hero-text text-white" style=" padding-top: 150px">
                            <h1>v<span style="color:#ce213d">Testers</span></h1>
				<h2>Best Platform For Testing Your Skills</h2>
				<h4>We are here to give you best opportunity to enhance your skills and test them.</h4>
			</div>
		
		</div>
	</section>





	<!-- Page -->
	<section class="contact-page spad pb-0">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<div class="section-title text-white text-left">
							<h2>Get in Touch</h2>
							<p>Feel free to contact us. We are lucky to help you </p>
						</div>
						<form class="contact-form">
							<input type="text" placeholder="Your Name">
							<input type="text" placeholder="Your E-mail">
							<input type="text" placeholder="Subject">
							<textarea placeholder="Message"></textarea>
							<button class="site-btn">Sent Message</button>
						</form>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="contact-info-area">
						<div class="section-title text-left p-0">
							<h2>Contact Info</h2>
							<p>Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendi sse cursus faucibus finibus.</p>
						</div>
						<div class="phone-number">
							<span>Direct Line</span>
							<h2>+53 345 7953 32453</h2>
						</div>
						<ul class="contact-list">
							<li>1481 Creekside Lane <br>Avila Beach, CA 931</li>
							<li>+53 345 7953 32453</li>
							<li>yourmail@gmail.com</li>
						</ul>
						<div class="social-links">
							<a href="#"><i class="fa fa-pinterest"></i></a>
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div id="map-canvas"></div>
		</div>
	</section>
	<!-- Page end -->




	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>Contact Info</h4>
						<ul class="contact-list">
							<li>1481 Creekside Lane <br>Avila Beach, CA 931</li>
							<li>+53 345 7953 32453</li>
							<li>yourmail@gmail.com</li>
						</ul>
					</div>
                                    
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
      String img=rs2.getString(3);
      
                     %>
                                    
					<div class="widget-item">
						<h4><%=s%></h4>
						<ul>
                                                    
                                                     <%
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
                     %>
							<li><a href="courses.jsp"><%=ss%></a></li>
                                                        <%  
                             }
con.close();  
}catch(Exception e){ System.out.println(e);}%>
                                                        
							</ul>
					</div>
					<%  
                             }
con2.close();  
}catch(Exception e){ System.out.println(e);}%>
					<div class="widget-item">
						<h4>Newsletter</h4>
						<form class="footer-newslatter">
							<input type="email" placeholder="E-mail">
							<button class="site-btn">Subscribe</button>
							<p>*We don’t spam</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-warp">
				<ul class="footer-menu">
					
				</ul>
				
			</div>
		</div>
	</footer> 
	<!-- footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js2/jquery-3.2.1.min.js"></script>
	<script src="js2/bootstrap.min.js"></script>
	<script src="js2/mixitup.min.js"></script>
	<script src="js2/circle-progress.min.js"></script>
	<script src="js2/owl.carousel.min.js"></script>
	<script src="js2/main.js"></script>


	<!-- load for map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWTIlluowDL-X4HbYQt3aDw_oi2JP0Krc&sensor=false"></script>
	<script src="js2/map.js"></script>
</body>
</html>