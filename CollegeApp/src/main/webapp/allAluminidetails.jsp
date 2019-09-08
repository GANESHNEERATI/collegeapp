<%@page import="com.college.web.service.AluminiServices"%>
<%@page import="com.college.web.model.AluminiDetails"%>
<%@ page import="com.college.*,java.util.*"%>
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

<%
AluminiServices services=new AluminiServices();
List<AluminiDetails> ad=services.getAllAlumini();



%>
<%= ad %>

</body>
</html>