<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en">
<head>
	<title>Vtesters - Educational Platform</title>
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
					<a href="login.jsp" class="site-btn header-btn">Login</a>
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



        <% int sid=Integer.parseInt(request.getParameter("n"));
        String uid=(String)session.getAttribute("userid");
        session.setAttribute("userid",uid);
         String cname="";
           
 String sname="";
         try{  
                        int a=0,b=0;
                        
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from subcat where subid='"+sid+"'");  
while(rs.next()) 
{
    String a1=rs.getString("catid");
   
     b=rs.getInt(2);
     int c =rs.getInt(4);
      sname=rs.getString(3);
      String img3=rs.getString(5);
     try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con2=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt2=con.createStatement();  
ResultSet rs2=stmt2.executeQuery("select * from category where catid='"+a1+"'");  
rs2.next();
cname=rs2.getString(2);
  con2.close();  
}catch(Exception e){ System.out.println(e);} 

%>	
	<section class="single-course spad pb-0">
		<div class="container">
			<div class="course-meta-area">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="course-note">Featured Course</div>
						<h3> <%=sname%> </h3>
						<div class="course-metas">
							
							<div class="course-meta">
								<div class="cm-info">
									<h6>Category</h6>
									<p><%=cname%></p>
                                                                        
								</div>
							</div>
							
							
						</div>
						</div>
				</div>
			</div>
                           <img src="img/<%=img3%>" style=" width: 100%; height: 400px; " alt="" class="course-preview">
                           
			<div class="row">
				<div class="col-lg-10 offset-lg-1 course-list">
                                     <form  method="get" action="coderesult.jsp">
                                           <strong> 
                                               <ul type="none">
                                   <%	int i=0;
                                   
                                            try{
                                                int aa=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt1=con.createStatement();  
ResultSet rs1=stmt1.executeQuery("select * from question where subname='"+sname+"'"); 
while(rs1.next()) 
{
  aa=rs1.getInt(1);
  String s1 =rs1.getString(3);
 String sop1 =rs1.getString(4);
 String sop2 =rs1.getString(5);
 String sop3 =rs1.getString(6);
 String sop4 =rs1.getString(7);
 String ans =rs1.getString(8); 
 String tt=rs1.getString(1);
 String ques="ques".concat(tt);
 i++;
     %>
                                     
    
       
     <li> <i><%=i%>).  <%=s1%></i></li>
         <div class="row"> <div class="col-6"><input type="radio" name="<%=ques%>" value="<%=sop1%>"><%=sop1%></div>
             <div class="col-6"><input type="radio" name="<%=ques%>" value="<%=sop2%>"><%=sop2%><br></div></div>
             <div class="row"> <div class="col-6"><input type="radio" name="<%=ques%>" value="<%=sop3%>"><%=sop3%></div>
           <div class="col-6">  <input type="radio" name="<%=ques%>" value="<%=sop4%>"><%=sop4%></div></div>
     <input type="hidden" name="ans" value="<%=ans%>">
     <input type="hidden" name="sname" value="<%=sname%>">
     <div class="row"><br><br></div>
      
         
     
                                    
                                    
                                    <%      }
con1.close();  
}catch(Exception e){ System.out.println(e);} %>
                                               </ul>     </strong>
                                               
                                               <button type="submit" class="site-btn" name="btn" value="quesub">Submit Test</button><br><br>
                                     </form>
                                </div></div>
			</div>
		</div>
	</section>
	<!-- single course section end -->

<% 
                             }
con.close();  
}catch(Exception e){ System.out.println(e);} 
                    
                    %>
	
                    
     <!-- Page -->
	
     <section class="realated-courses spad">
		<div class="course-warp">
			<h2 class="rc-title">Realated Courses</h2>
			<div class="rc-slider owl-carousel">
				
                            <%   try{  
                        int a=0,b=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from subcat");  
while(rs.next()) 
{
    String a1=rs.getString("catid");
    String bb="hello";
       bb=bb.concat(a1);
     b=rs.getInt(2);
     int c =rs.getInt(4);
      String s=rs.getString(3);
      String img3=rs.getString(5);
      String sss="";
  %>
                            
                            
                            
                            <!-- course -->
				 <a href="courses.jsp"><div class="course-item">
                                    <div class="course-thumb set-bg" data-setbg="img/<%=img3%>">
						
                                    </div>
					<div class="course-info">
						<div class="course-text">
							<h5><%=s%></h5>
							
						</div>
						
					</div>
                                     </div></a>
				<% 
                             }
con.close();  
}catch(Exception e){ System.out.println(e);} 
                    
                    %>
				
			
				<!-- course -->
			</div>
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
</body>
</html>