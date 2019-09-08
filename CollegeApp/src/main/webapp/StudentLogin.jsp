<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">STUDENT LOGIN</h2>
<form action="studentlogin" method="post">
<table align="center" cellpadding="15" border="1">

<tr>
<td>USERNAME</td>
<td><input type="text" name="u_name" maxlength="10" required></td>
<input type="hidden" name="pattern" value="StudentLogin">
</tr>
<tr>
<td>PASSWORD</td>
<td><input type="password" name="p_word" required>
</td>
</tr>
<tr>
<td colspan="4" align="center">
<input type="submit" value="Login"><br><br>
<a href="file:///C:/Users/Admin/Desktop/s-forgot-pass.html">I forgot my password</a>
</td>
</tr>
</table>
</form>

</body>
</html>