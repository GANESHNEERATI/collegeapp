<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 

if(session.getAttribute("user")==null)
	response.sendRedirect("AluminiLogin.jsp");

String user=(String)session.getAttribute("user");
session.setAttribute("user", user);

%>


<a href="allAluminidetails.jsp">all alumini</a>
<form action="getaluminibyname" method="post">
Enter name:<input type="text" name="name">
<input type="hidden" name="pattern" value="getaluminibyname">
<input type="submit" value="search">



</form>



</body>
</html>