<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include   file="Studenthedder.jsp"  %>
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
	response.sendRedirect("StudentLogin.jsp");

String user=(String)session.getAttribute("user");
session.setAttribute("user", user);

%>
welcome<%=user %>

 

</body>
</html>