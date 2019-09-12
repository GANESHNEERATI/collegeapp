<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.page{
	width:1318px;
	height:100px;
	border-style:groove;
}

.linkspart{
        width:1318px;
	    height:20px;
        margin-top:2px;
     	border-style:groove;
        background-color:rgb(12,150,198);
           }
.linkspart a{
         background-color:rgb(245,246,251);
         text-decoration:none;
         margin-top:5px;            
            }
.linkspart a:hover
      {
        color:rgb(12,100,198);
       }</style>
       <script>


</script>
</head>
<body>
<jsp:include page="collegehedder.jsp"></jsp:include>
<div class="page">
<div class="linkspart">
<center>
<font size=4px>
<a href="Fhome.html">HOME</a>&nbsp
<a href="Examinations.html">EXAMINATIONS</a>&nbsp
<a href="Fclasses.html">CLASSES </a>&nbsp
<a href="Staffmeetings.html">STAFFMEETINGS </a>&nbsp
<a href="Events.html">EVENTS </a>&nbsp
<a href="Alumnidetais.html">ALUMNIDETAILS </a>&nbsp
<a href="Upload.html">UPLOAD</a>&nbsp
<a href="Download.html">DOWNLOAD </a>&nbsp
<a href="<%=request.getContextPath()%>//FacultyLogout">LOGOUT </a>


</center>


</font>
</div>
</div>


</body>
</html>