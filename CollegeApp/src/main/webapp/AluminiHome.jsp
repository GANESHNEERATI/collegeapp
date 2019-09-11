<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="AluminiSecurity.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
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
</head>
<body>
    <jsp:include page="collegehedder.jsp"></jsp:include>
<div class="page">
<div class="linkspart">
<center>
<font size=5px>
<a href="Home.jsp">HOME</a>&nbsp
<a href="allAluminidetails.jsp">All Alumnidetails</a>&nbsp
<a href="<%=request.getContextPath()%>//alumniologout">Logout</a>&nbsp


</center>



</font>
</div>





<div  style="float:center">
<form action="getaluminibyname" method="post" style="margin-left: 502px;">
Enter name:<input type="text" placeholder="enter alumni details" name="name">
<input type="hidden" name="pattern" value="getaluminibyname">
<input type="submit" value="search">



</form>
</div>
<div class="images" style="width: 1019px;
    height: 663px;">



</div>


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

