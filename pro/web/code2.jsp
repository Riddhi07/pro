<%-- 
    Document   : newjsp
    Created on : May 14, 2019, 11:10:07 AM
    Author     : READITYA
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 String str=request.getParameter("btn");
 //registration
if(str.equals("reg"))
{
    String name=request.getParameter("name");
   String contact=request.getParameter("contact");
     String email=request.getParameter("email");
      String pass=request.getParameter("pass");
      
try{  
Class.forName("com.mysql.jdbc.Driver");
out.println("hhh");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  
out.println("hhh");
stmt.executeUpdate("insert into reguser(name,contact,email,password) values('"+name+"','"+contact+"','"+email+"','"+pass+"')");
out.println("hhh");
response.sendRedirect("index.jsp");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}  

//sign up

if(str.equals("signup"))
{
 String email=request.getParameter("email");
      String pass=request.getParameter("pass");
      int sid=Integer.parseInt(request.getParameter("sid"));
      int flag=0;
   try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  
ResultSet rs1=stmt.executeQuery("select * from reguser");
while(rs1.next())
{ 
   String id=rs1.getString(1);
   String uid="test".concat(id);
    String name=rs1.getString(2);
    String contact=rs1.getString(3);
    String email1=rs1.getString(4);
    String pas1=rs1.getString(5);
   
    //out.println("   "+sid+"    "+pas1+"   "+email+"    "+pass);
     if(email.equals(email1) && pass.equals(pas1))
        {  
            flag=1;
           session.setAttribute("userid",uid);
         response.sendRedirect("single-course.jsp?n="+sid);
          }
   
}
if(flag!=1)
       {response.sendRedirect("ulogin.jsp?n="+sid);
           
       }

con.close();  
}catch(Exception e){ System.out.println(e);}     

}

//login

if(str.equalsIgnoreCase("login"))
{
     String name=request.getParameter("name");
     String pass=request.getParameter("password");
      // out.println(name+" "+pass);
      int flag=0;  
   try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  
ResultSet rs1=stmt.executeQuery("select * from registration ");
while(rs1.next())
{ 
    int rgid=rs1.getInt(1);
    String name1=rs1.getString(2);
    String contact=rs1.getString(3);
    String email1=rs1.getString(4);
    String pas1=rs1.getString(5);
   // out.println(email1+"  "+name+" "+pas1+"  "+pass);
    if(email1.equals(name)&&pas1.equals(pass))
        {  
            flag=1;
           response.sendRedirect("index2.html");
          }
   
}
if(flag!=1)
       {response.sendRedirect("login.jsp");
           
       }

 con.close();  
}catch(Exception e){ System.out.println(e);}       
}
%>
