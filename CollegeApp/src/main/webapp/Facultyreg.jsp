<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function m1() {
	 alert("only numbers allowed");	
	 
} 
function m2() {
	 alert("only characters  allowed");	
	 
} 

</script>
</head>
<body>
<jsp:include page="collegehedder.jsp"></jsp:include>
<div style="background-color: aquamarine;">
<h2 align="center"> FACULTY REGISTRATION FORM </h2>
<form action="addFaculty" method="post">
<table align="center" cellpadding="15">
<!------------ First Name---------->
<tr>
<td>FIRST NAME</td>
<td><input type="text" name="F_NAME" maxlength="30" required onclick="m2()">
(max 30 characters a-z and A-Z)
</td>
</tr>
<!------------- Last Name---------->
<tr>
<td>LAST NAME</td>
<td><input type="text" name="L_NAME" maxlength="30" required onclick="m2()">
(max 30 charaxters a-z and A-Z)
</td>
</tr>
<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>DATE OF BITRH</td>
<td><input type="date" name="dob" required>
</td>
</tr>

<!-------- Faculty Id-------------->
<tr>
<td>FACULTY ID</td>
<td><input type="text" name="f_id" maxlength="7" required onclick="m1()">
</td>
</tr>

<!----------Email-id------------->

<tr>
<td>EMAIL ID</td>
<td><input type="email" name="Email-id" maxlength="30" required>
</td>
</tr>

<!-------Mobile Number----------->

<tr>
<td>MOBILE NUMBER</td>
<td><input type="text" name="Mobile_num" maxlength="10" required onclick="  m1()">
</td>
</tr>

<!--------Gender----------------->

<tr>
<td>GENDER</td>
<td><input type="radio" name="gender" value="Male" required/>Male
  <input type="radio" name="gender" value="Female" required />Female
<!--------Username------------->

<tr>
<td>USERNAME</td>
<td><input type="text" name="u_name" maxlength="10" required>
</td>
</tr>

<!---------Password---------->
<tr>
<td>PASSWORD</td>
<td><input type="password" name="p_word" pattern="(?=.*[a-z])(?=.*[A-Z]).{8,}"
required title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
</td>
</tr>

<!----- Address ---------------------------------------------------------->
<tr>
<td>ADDRESS <br /><br /><br /></td>
<td><textarea name="Address" rows="4" cols="30" required></textarea></td>
</tr>
 
<!----- City ---------------------------------------------------------->
<tr>
<td>CITY</td>
<td><input type="text" name="City" maxlength="30" required />
(max 30 characters a-z and A-Z)
</td>
</tr>
 
<!----- Pin Code ---------------------------------------------------------->
<tr>
<td>PIN CODE</td>
<td><input type="text" name="Pin_Code" maxlength="6"  required onclick=" m1()"/>
(6 digit number)
</td>
</tr>
 
<!----- State ---------------------------------------------------------->
<tr>
<td>STATE</td>
<td>
<select name="states_ut" id="states_ut" required>
<option value="-1">Select</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands(UT)</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh(UT)</option>
<option value="Chattisgarh">Chattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli(UT)</option>
<option value="Daman and Diu">Daman and Diu(UT)</option>
<option value="Delhi">Delhi(UT)</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir(UT)</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Ladakh">Ladakh(UT)</option>
<option value="Lakshadweep">Lakshadweep(UT)</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Pondicherry">Pondicherry(UT)</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
</select>
</td>
</tr>
 
<!----- Country ------------------------------->
<tr>
<td>COUNTRY</td>
<td><input type="text" name="Country" value="India" readonly="readonly" /></td>
</tr>

<!----Highest Qualification------------------->
<tr>
<td>HIGHEST QUALIFICATION</td>
<td><input type="radio" name="Qualification" value="PhD" required>PhD
<input type="radio" name="Qualification" vlaue="M.Tech" required>M.Tech
<input type="radio" name="Qualification" value="B.Tech/BE" required>B.Tech/BE
<input type="radio" name="Qualification" value="MBA" required>MBA
</td>
</tr>
<!-----Experience-------------------->

<tr>
<td>EXPERIENCE</td>
<td>
<select name="num" id="num" required>
<option value="-1">Select</option>
<option value="Fresher">Fresher</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
</select>
</td>
</tr>
<!-----------Teching Domain---------->
<tr>
<td> DEPARTMENT </td>
<td ><input type="radio" name="degree" value="BE/BTECH" required />B.Tech/BE
<input type="radio"  name="degree"  value="M.tech" required />M.Tech
  <input type="radio"  name="degree" value="MBA" required />MBA</td>
</tr>

<tr>
<td>STREAM</td>
<td>

	
   <select name="cvalue">
	<option value="-1">Select</option>
	<option value="AERO">Aeronautical Engineering</option>
	<option value="CIVIL">Civil Engineering</option>
	<option value="CSE">Computer Science Engineering</option>
        <option value="ECE">Electronics Communication Engineering</option>
        <option value="EEE">Electrical Electronics Engineering</option>
	 <option value="IT">Information Technology</option>
        <option value="MECH">Mechanical Engineering</option>
          <option value="HR">Human Resource Management</option>
        <option value="FM">Finance Management</option>
        <option value="MM">Marketing Management</option>
	 <option value="IT">IT Management</option> 		
</select>





<input type="hidden" name="pattern" value="addFaculty">

</td>
</tr>

<!----- Submit and Reset-------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>
</form>
</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>