<!DOCTYPE html>
<%@page import="java.sql.*"%>
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
<style>

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: #4CAF50;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
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
#formtop
{ font-style:normal; font:Arial, Helvetica, sans-serif; font-size:36px; text-decoration:underline; text-align:center; border:solid black 2px;
	}
 

</style>
<body > 
  
    
<div class="topnav" id="myTopnav">

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
  
 <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>



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
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  </script>



<div id="formtop"  ><b>Test 1</b>


        <!-- You only need this form and the form-basic.css -->
        <div>
       
              <%
 String subname=request.getParameter("sub");
int i=1;
int flag=0;
    try{
        int a=0;
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement(); 
ResultSet rs=stmt.executeQuery("select * from question where subname='"+subname+"'");  
while(rs.next())
{
  a=rs.getInt(1);
  String s =rs.getString(2);
  String s1 =rs.getString(3);
 String sop1 =rs.getString(4);
 String sop2 =rs.getString(5);
 String sop3 =rs.getString(6);
 String sop4 =rs.getString(7);
 String ans =rs.getString(8); 

                               %>
                               
                
     
             
                <label> <span>ques. <%=i++%>: <%=s1%></span><br></label>
                <div >

                       
                            <input type="radio" name="radio" value="<%=sop1%>">
                            <span><%=sop1%></span><br>
                       
                            <input type="radio" name="radio"value="<%=sop1%>">
                            <span><%=sop2%></span><br>
                        
                            <input type="radio" name="radio" value="<%=sop1%>">
                            <span><%=sop3%></span><br>
                            <input type="radio" name="radio">
                            <span><%=sop4%></span><br>
                          
               
                <% 
                    }
con.close();  
}catch(Exception e){ System.out.println(e);} 
                    
                    %> 
  </div>
                               </div>
            </div>
            <div class="form-row">
                <button style="background:#3300FF; color:#FFFFFF; " type="submit" >Submit Form</button>
            </div>

        </form>

    </div>
</div>



<div class="footer" style="background-color:#00BFFF;">
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
