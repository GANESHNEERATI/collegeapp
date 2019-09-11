<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head><style type="text/css">
.page{
	width:1316px;
	height:1054px;
	border-style:groove;
}

.linkspart{
        width:992pxpx;
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

<div class="news">




</div>
<div class="linkspart">
<center>
<font size=3px>
<a href="Home.jsp">HOME</a>&nbsp
<a href="studentreg.jsp">REGISTRATION </a>&nbsp

<a href="Examinations.html">EXAMINATIONS</a>&nbsp
<a href="results.html">RESULTS </a>&nbsp
<a href="Events.html">EVENTS </a>&nbsp
<a href="ViewStudentPlacements.jsp">PLACEMENTDETAILS </a>&nbsp
<a href="Alumni.jsp">ALUMNIDETAILS </a>&nbsp
<a href="Upload.html">UPLOAD</a>&nbsp
<a href="Download.html">DOWNLOAD </a>&nbsp
<a href="ViewCourses.jsp">CLASSES </a>&nbsp


</center>
<jsp:include page="StudentLogin.jsp"></jsp:include>


</font>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>