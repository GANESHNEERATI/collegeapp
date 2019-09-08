<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style> 
form {
 margin: 20;
 padding: 1em 20;
 border: 1px dotted white;

}

  </style>
  <script type="text/javascript">
  function myalert()
  {
	  
	  
	  alert("Must contain at least one number and one uppercase and lowercase letter");
  }
  function Validate() {
      var password = document.getElementById("pass").value;
      var confirmPassword = document.getElementById("cnfpass").value;
      if (password != confirmPassword) {
          alert("Passwords do not match.");
          return false;
      }
      return true;
  }
  
  
  
  
  </script>
</head>
<body bgcolor="#E6E6FA">
 
<h1 align="center">ALUMNI REGISTRATION FORM</h1> <br>
<div align="center">


<form action="registerAlumni" method="post">  
  First name:<br>
  <input type="text" name="firstname"  required="required"><br> 
  <input type="hidden" name="pattern" value="addAlumini">
   Last name:<br>
  <input type="text" name="lastname" required="required"><br>
  Student id:[application_id]<br>
  <input type="text" name="studentid" required="required"><br>
  Gender:<br>
  <input type="radio" name="gender" value="Male"> Male
  <input type="radio" name="gender" value="Female"> Female<br>
  Date of birth: <input type="date" name="bday" placeholder="dd-mm-yyyy" required="required"><br>
  Address:<br>
  <input type="text" name="address" required="required"><br>
  Email id:<br>
  <input type="text" name="emailid" placeholder="abc@gmail.com" required="required"><br>
  Contact no:<br>
  <input type="text" name="contactno" required="required"><br>
  Year of passout :<br>
  <input type="month" name="yop" required="required"><br>
  Course:<br>
  <input type="radio" name="course" value="B.Tech"> B.Tech
  <input type="radio" name="course" value="B.com">B.com
  <input type="radio" name="course" value="M.Tech">M.Tech
  <input type="radio" name="course" value="Mca">Mca<br>
  Stream:<br>
 <select  name="stream"  required>
	<option value="-1">Select</option>
	<option value="AERO">Aeronautical Engineering</option>
	<option value="CIVIL">Civil Engineering</option>
	<option value="CSE">Computer Science Engineering</option>
        <option value="ECE">Electronics Communication Engineering</option>
        <option value="EEE">Electrical Electronics Engineering</option>
	 <option value="IT">Information Technology</option>
        <option value="MECH">Mechanical Engineering</option> 
        <option value="CHEM">Chemical Engineering</option>
        <option value="MET">Metallurgical Engineering</option>
        <option value="HR">Human Resource Management</option>
        <option value="FM">Finance Management</option>
        <option value="MM">Marketing Management</option>
	 <option value="ITM">IT Management</option>
</select><br>
password:<br>
  <input type="password"  onclick="myalert()" name="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="password must be atleast 8 characters" id="pass" ><br>
  confirm password:<br>
  <input type="password" name="confirm password"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="password must match" id="cnfpass"><br>
  <input type ="Submit" value="Submit"   onclick="return Validate()">
  <input  type ="Reset" value="reset">
  </form>
</div>
  </body>
</html>