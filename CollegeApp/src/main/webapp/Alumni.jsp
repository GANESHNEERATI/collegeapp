<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="collegehedder.jsp" %> 
</head><style type="text/css">
.page{
	width:1318px;
	height:800px;
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
         background-color:rgb(244,246,251);
         text-decoration:none;
         margin-top:5px;            
            }
.linkspart a:hover
      {
        color:rgb(12,100,198);
       }</style>
<body>
<div class="page">
<div class="linkspart">
<center>
<font size=5px>
<a href="Shome.html">HOME</a>&nbsp
<a href="AluminiRegistration.jsp"> Alumini REGISTRATION </a>&nbsp


</center>
<jsp:include page="AluminiLogin.jsp"></jsp:include>


</font>
<%@ include file="footer.jsp" %> 
</body>
</html>