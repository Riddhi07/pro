<%-- 
    Document   : code
    Created on : Jan 23, 2019, 6:26:54 PM
    Author     : READITYA
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 String str=request.getParameter("btn");
 //registration
if(str.equals("regf"))
{
    String name=request.getParameter("name");
    String contact=request.getParameter("contact");
     String email=request.getParameter("email");
      String pass=request.getParameter("pass");
      
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("insert into registration(name,contact,emailid,password)values('"+name+"','"+contact+"','"+email+"','"+pass+"')");

response.sendRedirect("Registration_form.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}  
if(str.equals("regup"))
{
int id=Integer.parseInt(request.getParameter("id"));
response.sendRedirect("Registration_form.jsp?id="+id);

}
if(str.equals("regupd"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
   String name=request.getParameter("name");
    String contact=request.getParameter("contact");
     String email=request.getParameter("email");
      String pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("update registration set name='"+name+"',contact='"+contact+"',emailid='"+email+"',password='"+pass+"' where regid='"+id+"'");

response.sendRedirect("Registration_form.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  


}
if(str.equals("regdel"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("delete from registration where regid='"+id+"'");

response.sendRedirect("Registration_form.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
//
//
//
//
//
//question
  if(str.equals("que"))
{
    String subname=request.getParameter("subname");
    String que =request.getParameter("que");
     String fotp=request.getParameter("otp1");
     String sotp=request.getParameter("otp2");
     String totp=request.getParameter("otp3");
     String ffotp=request.getParameter("otp4");
      String ans=request.getParameter("ans");
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
stmt.executeUpdate("insert into question(subname,que,opt1,opt2,opt3,opt4,ans)values('"+subname+"','"+que+"','"+fotp+"','"+sotp+"','"+totp+"','"+ffotp+"','"+ans+"')");
response.sendRedirect("ques_form.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
  
if(str.equals("queup"))
{
int id=Integer.parseInt(request.getParameter("id"));
response.sendRedirect("ques_form.jsp?id="+id);

}
if(str.equals("queupd"))
{
    String subname=request.getParameter("subname");
    String que =request.getParameter("que");
     String fotp=request.getParameter("otp1");
     String sotp=request.getParameter("otp2");
     String totp=request.getParameter("otp3");
     String ffotp=request.getParameter("otp4");
      String ans=request.getParameter("ans");
    int id = Integer.parseInt(request.getParameter("id"));
try{  
    
 Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
stmt.executeUpdate("update question set subname='"+subname+"',que='"+que+"',opt1='"+fotp+"',opt2='"+sotp+"',opt3='"+totp+"',opt4='"+ffotp+"',ans='"+ans+"'where qid='"+id+"'");
response.sendRedirect("ques_form.jsp?id=0");
out.println("hello");
con.close();  
}catch(Exception e){ System.out.println(e);}   
}
if(str.equals("quedel"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("delete from question where qid='"+id+"'");

response.sendRedirect("ques_form.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
  
  //
  //
  //
 //category
if(str.equals("cat"))
{
    String name=request.getParameter("catname");
    String img=request.getParameter("img");
 out.println(""+img);
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("insert into category(catname,img)values('"+name+"','"+img+"')");

response.sendRedirect("Cat_subcat.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
} 
 
if(str.equals("catup"))
{
int id=Integer.parseInt(request.getParameter("id"));
response.sendRedirect("Cat_subcat.jsp?id="+id);

}
if(str.equals("catupd"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
   String name=request.getParameter("catname");
   String img=request.getParameter("img");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  
stmt.executeUpdate("update category set catname='"+name+"',img='"+img+"' where catid='"+id+"'");
response.sendRedirect("Cat_subcat.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
if(str.equals("catdel"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("delete from category where catid='"+id+"'");

response.sendRedirect("Cat_subcat.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
//
//
//
//
 //subcategory
if(str.equals("sub"))
{
    int a= Integer.parseInt(request.getParameter("catid"));
    String sub=request.getParameter("subname");
    int nop=Integer.parseInt(request.getParameter("nop"));
      String img=request.getParameter("img1");
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  
stmt.executeUpdate("insert into subcat(catid,subname,nop,img) values('"+a+"','"+sub+"','"+nop+"','"+img+"')");
response.sendRedirect("subcat.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}  

if(str.equals("subup"))
{
int id=Integer.parseInt(request.getParameter("id"));
response.sendRedirect("subcat.jsp?id="+id);

}
if(str.equals("subupd"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
   int a=Integer.parseInt(request.getParameter("catid"));
    String sub=request.getParameter("subname");
    int nop=Integer.parseInt(request.getParameter("nop"));
       String img=request.getParameter("img1");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  
stmt.executeUpdate("update subcat set catid='"+a+"',subname='"+sub+"',nop='"+nop+"',img='"+img+"' where subid='"+id+"'");
response.sendRedirect("subcat.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);} 
}
if(str.equals("subdel"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("delete from subcat where subid='"+id+"'");

response.sendRedirect("subcat.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
//
//
//
//result
//out.println(""+str);
 if(str.equals("rlt"))
{
    int obtm =Integer.parseInt(request.getParameter("marks"));
    int uid =Integer.parseInt(request.getParameter("uid"));
   
int id=Integer.parseInt(request.getParameter("id"));
   
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
stmt.executeUpdate("insert into result(uid,marks)values('"+uid+"','"+obtm+"')");
response.sendRedirect("result.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}  
  
if(str.equals("rltup"))
{
int id=Integer.parseInt(request.getParameter("id"));
response.sendRedirect("result.jsp?id="+id);

}
if(str.equals("rltupd"))
{ 
    int obtm =Integer.parseInt(request.getParameter("marks"));
    int uid =Integer.parseInt(request.getParameter("uid"));
    int id=Integer.parseInt(request.getParameter("id"));
try{ 
Class.forName("com.mysql.jdbc.Driver");
out.println("out");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  
out.println("out");
int i = stmt.executeUpdate("update result set marks='"+obtm+"', uid='"+uid+"' where resultid='"+id+"' ");
out.println("out");
response.sendRedirect("result.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
if(str.equals("rltdel"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("delete from result where resultid='"+id+"'");

response.sendRedirect("result.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
 //
 ///
 //
 //
//test
 if(str.equals("test"))
{
    String testname=request.getParameter("testname");
    
    int subid=Integer.parseInt(request.getParameter("catid"));
   int catid=Integer.parseInt(request.getParameter("subid"));
    int noof_que =Integer.parseInt(request.getParameter("noof_que"));
    int maxmarks =Integer.parseInt(request.getParameter("maxmarks"));
    int testtime =Integer.parseInt(request.getParameter("testtime"));
   
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
out.println("hello");
Statement stmt=con.createStatement();  
stmt.executeUpdate("insert into test(catid,subid,testname,maxmarks,noof_que,testtime)values('"+catid+"','"+subid+"','"+testname+"','"+maxmarks+"', '"+noof_que+"','"+testtime+"')");
out.println("hello");
response.sendRedirect("Test_ele.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}
 
if(str.equals("testup"))
{
int id=Integer.parseInt(request.getParameter("id"));
response.sendRedirect("Test_ele.jsp?id="+id);

}
if(str.equals("testupd"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
   String name=request.getParameter("testname");
    int catid=Integer.parseInt(request.getParameter("catid"));
    int subid=Integer.parseInt(request.getParameter("subid"));
    int maxmarks=Integer.parseInt(request.getParameter("maxmarks"));
    int noof_que=Integer.parseInt(request.getParameter("noof_que"));
    int testtime=Integer.parseInt(request.getParameter("testtime"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("update test set catid='"+catid+"',subid='"+subid+"',testname='"+name+"',maxmarks='"+maxmarks+"', noof_que='"+noof_que+"',testtime='"+testtime+"' where tid='"+id+"'");

response.sendRedirect("Test_ele.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  


}
if(str.equals("testdel"))
{
int id=Integer.parseInt(request.getParameter("id"));
try{  
  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/proadmin","root","");  
Statement stmt=con.createStatement();  

stmt.executeUpdate("delete from test where tid='"+id+"'");

response.sendRedirect("Test_ele.jsp?id=0");
con.close();  
}catch(Exception e){ System.out.println(e);}  
}

//test
if(str.equalsIgnoreCase("select"))
{
     String subname=request.getParameter("sub");
    response.sendRedirect("testpage.jsp?sub="+subname);
}

%>
