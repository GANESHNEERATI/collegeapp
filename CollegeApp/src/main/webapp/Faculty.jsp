\<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head><style type="text/css">
.page{
	width:1318px;
	height:700;
	border-style:groove;
}

.linkspart{
        width:1312px;
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
<body>
<jsp:include page="collegehedder.jsp"></jsp:include>
<div class="page">
<div class="linkspart">
<center>
<font size=3px>
<a href="Fhome.html">HOME</a>&nbsp
<a href="Fregistration.html">REGISTRATION </a>&nbsp


</center>

<jsp:include page="FacultyLogin.jsp"></jsp:include>
</font>
</div>
</div>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>