<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="collegehedder.jsp"></jsp:include>
<h3>Admin Registration</h3>
<form action="AdminRegController" method="post">
<table align="center" cellpadding = "10">
 
<!----- Full Name ---------------------------------------------------------->
<tr>
<td>FullName</td>
<td><input type="text" name="name" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Admin ID---------------------------------------------------------->
<tr>
<td>AdminId</td>
<td><input type="text" name="aid" maxlength="30"/>
(enter 6 to 8 digits number you wish)
</td>
</tr>
 
<!----- Password -------------------------------------------------------->
<tr>
<td>Password</td>
<td><input type="text" name="pass"/>
(enter password 6 to 8 length)
 </td>
<td>

</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>


</form>


</body>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>