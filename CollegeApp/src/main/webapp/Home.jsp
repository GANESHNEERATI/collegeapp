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
<div class="page">
<div class="headerpart">
<image src="http://internationaleducationmedia.com/india/images/jbiet_logo.jpg"></div>
<div class="linkspart">
<center>
<font size=6px>
<a href="Home.html">HOME  </a>&nbsp
<a href="Admin.html"> ADMIN </a>&nbsp
<a href="Student.html"> STUDENT </a>&nbsp
<a href="Administration.html"> ADMNISTRATION </a>&nbsp
<a href="Alumni.html"> ALUMNI </a>&nbsp
</font>
</center></div>
<div class="bodypart">
<div class="imagepart ">
<div class="w3-content w3-display-container">
  <img class="mySlides" src="https://image.shutterstock.com/image-photo/mountains-during-sunset-beautiful-natural-600w-407021107.jpg" style="height:80%;width:100%">
  <img class="mySlides" src="https://image.shutterstock.com/image-photo/autumn-forest-nature-vivid-morning-600w-766886038.jpg" style="height:80%;width:100%">
  

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