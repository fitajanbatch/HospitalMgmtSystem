<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script> 
function validatePassword(){
var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");
  if(password.value != confirm_password.value) {
    //confirm_password.setCustomValidity("Passwords Don't Match");
	alert("password miss match");
  } else {
    document.getElementById("login");
  }
}</script>
<title>Registration for online shopping</title>
<style>
body
{
background-image: url("blue.JPG");
text-align:center;
border: 0px ridge black;
margin-top:50px;
margin-left:500px;
margin-right:500px;
padding:20px;
}
a{
text-decoration:none;}
</style>
</head>
<body>
<h1>Registration form</h1>
<form action="" method="">
<table style="text-align:left;">
<tr>
	<td><label for="firstname">Firstname</label></td>
	<td>:</td>
	<td><input type="text" id="firstname" name="firstname" placeholder="firstname" required>
	</td>
</tr>
<tr>
	<td><label for="middlename">Middlename</label></td>
	<td>:</td>
	<td><input type="text" id="Middlename" placeholder="middlename"></td>
</tr>
<tr>
	<td><label for="lastname">Lastname</label></td>
	<td>:</td>
	<td><input type="text" id="lastname" placeholder="lastname"></td>
</tr>
<tr>
	<td><label for="phonenumber">Phone no</label></td>
	<td>:</td>
	<td><input type="number" id="phonenumber" placeholder="phonenumber" ></td>
</tr>
<tr>
	<td><label for="emailid">Emailid</label></td>
	<td>:</td>
	<td><input type="email" id="emailid"  placeholder="emailid" ></td>
</tr>
<tr>
	<td><label for="password">Password</label></td>
	<td>:</td>
	<td><input type="password" id="password" ></td>
</tr>
<tr>
	<td><label for="confirm_password">Confirm password</label></td>
	<td>:</td>
	<td><input type="password" id="confirm_password" ></td>
</tr>
<tr>
	<td><label for="address1">Address1</label></td>
	<td>:</td>
	<td><input type="text" id="address1" name=""></td>
</tr>
<tr>
	<td><label for="address2">Address2<label></td>
	<td>:</td>
	<td><input type="text" id="address2" name=""></td>
</tr>
<tr>
	<td><label for="district">District</label></td>
	<td>:</td>
	<td><select>
			<option value="district" selected="selected">choose the district</option>
			<option value="chennai">Chennai</option>
			<option value="banglore">Bangalore</option>
			<option value="mumbai"  >Mumbai</option>
			<option value="kolkata">Kolkata</option>
			<option value="delhi">Delhi</option>
			<option value="pune">Pune</option></td>
</tr>
<tr>
	<td><label for="state">State</label></td>
	<td>:</td>
	<td><select>
			<option value="state" selected="selected">choose the state</option>
			<option value="tamilnadu">Tamilnadu</option>
			<option value="karnataka">Karnataka</option>
			<option value="maharastra">Maharastra</option>
			<option value="westbengal">Westbengal</option>
			<option value="newdelhi">NewDelhi</option></td>
</tr>
<tr>
	<td><label for="pincode">Pincode</label></td>
	<td>:</td>
	<td><input type="text" id="pincode" name=""></td>
</tr>
</table>
	<br><br>
<button onclick="validatePassword()">save</button>
<a href="login.html">
<input id="login" type="submit" value="submit"></a>	

</form>






</body>
</html>


