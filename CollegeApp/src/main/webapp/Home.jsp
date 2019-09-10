<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/styles.css"></link>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>
<title>Insert title here</title>

</head>
<body>
<jsp:include page="collegehedder.jsp"></jsp:include>
<div class="page">

<div class="linkspart">
<center>
<font size=6px>
<a href="#">HOME  </a>&nbsp
<a href="Admin.jsp"> ADMIN </a>&nbsp
<a href="student.jsp"> STUDENT </a>&nbsp
<a href="Faculty.html"> FACULTY </a>&nbsp
<a href="Alumni.jsp"> ALUMNI </a>&nbsp
<a href="Application.jsp">APPLICATION </a>

</font>
</center></div>
<div class="bodypart">
<div class="imagepart ">
<div class="w3-content w3-display-container">
  <img class="mySlides" src="https://www.jntufastupdates.com/wp-content/uploads/2019/04/jntu-hyderabad.jpg" style="height:100%;width:100%">
  <img class="mySlides" src="http://jntuhweb.in/images/jntu_video.jpg" style="height:50%;width:97%">
  

  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
</div>







</div>
<div class="newspart">
<h2> news & Events</h2>
</div></div>
<jsp:include page="footer.jsp"/>
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>

</body>
</html>