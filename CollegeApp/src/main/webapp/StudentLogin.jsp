<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: #ed2d9d;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: #ed2d9d;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
#m
{

border-radius: 50%}

</style>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


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
<a href="#">I forgot my password</a>
</td>
</tr>
</table>
</form>




</body>
</html>