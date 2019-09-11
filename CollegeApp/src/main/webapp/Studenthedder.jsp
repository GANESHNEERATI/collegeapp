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
<style type="text/css">
.page{
	width:1316px;
	height:30px;
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




</head>
<body>

<jsp:include page="collegehedder.jsp"></jsp:include>

<div class="page">

<div class="news">




</div>
<div class="linkspart">
<center>
<font size=3px>
<a href="Shome.html">HOME</a>&nbsp


<a href="Examinations.html">EXAMINATIONS</a>&nbsp
<a href="results.html">RESULTS </a>&nbsp
<a href="Events.html">EVENTS </a>&nbsp
<a href="ViewStudentPlacements.jsp">PLACEMENTDETAILS </a>&nbsp
<a href="Alumni.jsp">ALUMNIDETAILS </a>&nbsp
<a href="Upload.html">UPLOAD</a>&nbsp
<a href="Download.html">DOWNLOAD </a>&nbsp
<a href="ViewCourses.jsp">CLASSES </a>&nbsp
<a href="#" onclick="submitform()" style="color:blue;">logout</a>
<form action="StudentLogout" method="post" id="myform">
<input type="hidden" name="pattern" value="StudentLogout">
</form>


</center>



</font>
</div>





</body>
</html>