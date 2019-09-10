<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="StudentSecurity.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function submitform()
{
document.getElementById("myform").submit();


}
</script>




</head>
<body>
<a href="ViewClasses.jsp">view classes</a>
<a href="#">view examinations</a>
<a href="#">results</a>
<a href="#">events</a>
<a href="ViewStudentPlacements.jsp">placement details</a>
<a href="#">alumni details</a>
<a href="#">upload or download assignment</a>
<a href="#" onclick="submitform()" style="color:blue;">logout</a>
<form action="StudentLogout" method="post" id="myform">
<input type="hidden" name="pattern" value="StudentLogout">
</form>



</body>
</html>