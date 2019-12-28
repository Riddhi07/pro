<%-- 
    Document   : front
    Created on : Feb 15, 2019, 2:24:38 PM
    Author     : READITYA
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>V TESTERS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
 <script src="lib/jquery/jquery.min.js"></script>

  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Ready to Test on vTester!',
        // (string | mandatory) the text inside the notification
        text: 'Our vTester is for test and groom your skill. Learn more.',
        // (string | optional) the image to display on the left
        image: 'img/ny.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>
<style>
a.logo {
    font-size: 24px;
    color: #f2f2f2;
    float: left;
    margin-top: 10px;
	margin-bottom:10px;
}

a.logo b {
    font-weight: 900;
}

a.logo:hover, a.logo:focus {
    text-decoration: none;
    outline: none;
}

a.logo span {
    color: #4ECDC4;
} 

.abc{
  padding:10%;

}
#rcorners2 {
  border-radius: 25px;
  border: 2px solid #FFFFFF;
  padding: 20px; 
  }

#rcorners4 {
  border-radius: 35px;
  background: #FFFFFF;
  padding: 20px;} 

  .columnc2 {
  float: left;
  width: 65%;
  padding: 10px;
  height: 370px;
}
#borderimg { 
  border:  10px solid transparent;
  border-color:#000;
  padding: 15px;}
  
</style>
<body>
  
    

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand logo" href="index.html"><b>v<span>Testers</span></b></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="front.jsp">Home</a></li>
         
      <li><a href="#test">TEST </a></li>
      <li><a href="#footer">CONTACT US</a></li>
      <li><a href="#footer">ABOUT US</a></li>
      <li><a href="www.google.com">HELP</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="container-fluid">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- number of slides -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!--  slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="img/25.png"  style="width:100%; height:50%">
      </div>
    
      <div class="item">
        <img src="img/e-learning.jpg" alt="New york" style="width:100%;height:40%">
      </div>
        
        <div class="item">
        <img src="img/online-examination-png-images-1.png" alt="New york" style="width:100%;height:40%">
      </div>
        
        <div class="item">
        <img src="img/Practice Testing.png" alt="New york" style="width:100%;height:40%">
      </div>
    </div>

    <!-- controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 
 <div class="jumbotron"id="rcorners4">

  <h1 style="text-align:center; font:bold small-caps;" id="test" name="test">Test</h1>

<div class="abc" height="05%" id="rcorners2">
      <%
                    try{  
                  int a=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from category");  
while(rs.next()) 
{
     a=rs.getInt(1);
      String s=rs.getString(2);
      String img3=rs.getString(3);

%>

<div class="row">
 <div class="col-sm-4">
  <img class="img-fluid" src="img/<%=img3%>" id="borderimg" alt=" " style="width:80%; height:40%">
  <h3  style="text-align:center; font:bold" ><%=s%></h3>
  </div>

  <div class="col-sm-8" style="background-color:#FFFFFF">
   <ul  style="text-align:center;">
 <%
                    try{  
                        int aa=0;
                         int b=0;
                          int c=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmtt=conn.createStatement();  
ResultSet rss=stmtt.executeQuery("select * from subcat where catid='"+a+"'");  
while(rss.next()) 
{
    aa=rss.getInt(1);
    b=rss.getInt(2);
    String sub=rss.getString(3);
    c=rss.getInt(4);
                       %>
                 <form  method="post" action="code.jsp"  >
                                  <input type="hidden" value="<%=sub%>" name="sub">
                                  <li><a href="testpages.jsp" style="text-decoration:none "><%=sub%> <span>    &nbsp &nbsp &nbsp &nbsp  </span>  <button type="submit" class="btn btn-round btn-info" name="btn" value="select">Start</button>
      </a></li> 
<% 
                             }
conn.close();
}catch(Exception e){ System.out.println(e);} 
                    
                    %> <ul>
         
 

</div>


</div>
 
 
<% 
                }             
            
con.close(); 
}catch(Exception e){ System.out.println(e);} 

finally{};
                    
                    %>


</div><br>



<div class="footer" id="footer" style="background-color:#00BFFF;">
  <div class="row">
    <div class="col-sm-3">
  
 <i class="fa fa-location-arrow" style="font-size:48px "></i>
 <b><h4 style="text-decoration:underline;"> Address <h4> </b> <p>
<span>Takshila Campus, Khandwa Road ,Indore(M.P) </span>

   
</div>  
<div class="col-sm-3">
  
 <i class="fa fa-envelope"style="font-size:48px"></i>
 <b><h4  style="text-decoration:underline;"> Email <h4> </b> 
<span>vTester@gmail.com</span>

   
</div>  
<div class="col-sm-3">
  
 <i class="fa fa-phone" style="font-size:48px"></i>
 <b><h4  style="text-decoration:underline;"> Call <h4> </b> 
<span>P:0731-2461888 </span> 

   
</div>  
<div class="col-sm-3">
 <i class="fa fa-question-circle-o" style="font-size:48px"></i>
 
  <b><h4  style="text-decoration:underline;"> FAQs<h4> </b> 
<span>Answer to the most frequently asked questions about vTesters.</span>


   
</div>  
  </div>
  
 

</body>
</html>


</body>
</html>

