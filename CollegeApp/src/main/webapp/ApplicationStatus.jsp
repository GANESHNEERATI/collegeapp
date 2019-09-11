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

<div align="center" style="top: 800%;" >
<table>
<tr>
<form action="applicationstatuscheck" method="post">
<td>ENTER YOUR APPLICATION ID:<input type="text" name="aid"></td><br>
<td><input type="submit" value="checkStatus"></td>
</tr>

</form>







</table>

</div>
<div style="height: 350px">




</div>



<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>