<%-- 
    Document   : coderesult
    Created on : 25 Jun, 2019, 3:33:39 PM
    Author     : RIDDHI GOYAL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% int i=0;
 float t=0,x=0;
 String uid=(String)session.getAttribute("userid");
       
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();
String sname=request.getParameter("sname");
ResultSet rs1=stmt.executeQuery("select * from question where subname='"+sname+"'");
String a[]=new String[5];
while(rs1.next())
{String id=rs1.getString(1);

String ques="ques".concat(id);
a[i]=request.getParameter(ques);
String ans=rs1.getString(8);
if(ans.equals(a[i]))
{t++;}
i++;
x++;
}
}catch(Exception e){}
int sc=(int)((t/x)*100);
 session.setAttribute("userid",uid);
response.sendRedirect("resultdisp.jsp?score="+sc);
%>