<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include   file="Studenthedder.jsp"  %>
    <%@page import="com.college.web.service.AdminLoginService"%>
     <%@page import="com.college.web.model.Courses"%>
     <%@ page import="com.college.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//response.setIntHeader("Refresh", 1);
AdminLoginService al=new AdminLoginService();
List<Courses> courses=al.viewAllCourses();
%>
<%=  courses %>


</body>
</html>