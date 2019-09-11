<%@page import="com.college.web.model.ApplicationStatus"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="collegehedder.jsp"></jsp:include>

<%
ApplicationStatus status=(ApplicationStatus)request.getSession().getAttribute("statusobj");
%>
<div align="center">
<h1>YOUR APPLICATION STATUS</h1>
</div>
<div align="center">
<table border="1">
<tr>
<td>ApplicationId</td>
<td>ApplicantName</td>
<td>Status</td>

</tr>
<tr>

<td><%=status.getAid() %></td>
<td><%=status.getName() %></td>
<td><%=status.getStatus()%></td>
</tr>





</table>


</div>
<div style="height:250px">




</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>