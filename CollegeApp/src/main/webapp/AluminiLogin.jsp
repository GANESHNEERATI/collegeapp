<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function checkStudent()
{
	alert("enter your application id");
	}

</script>
<body>

<h3 align="center">ALUMNI LOGIN</h3>
<div  align="center">
<form action="aluminiLogin" method="post">
Student id:<input type="text" name="sid" onclick="return checkStudent()"><br>
user name:<input type="text" name="uname"><br>
password:<input type="password" name="ps"><br>
<input type="hidden" name="pattern" value="alumniLogin">
<input type="Submit" value="Submit"><br>
<input type="Reset" value="Reset">

</form>
</div>

</body>
</html>