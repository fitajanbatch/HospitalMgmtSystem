<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
<style type="text/css">
#header {
	font-size: 36px;
	color: green;
	margin-bottom: 10px;
}

#subheader{
	font-size:18px;
	color:Blue;
	margin-bottom: 10px;
	type:blink;
}

body a {
	text-decoration: none;
}

body a:HOVER {
	text-decoration: underline;
}

.error {
	color: red;
	margin-bottom: 5px;
}

/* .anchorButton { */
/* 	border: 1px solid black; */
/* 	font-size: 14px; */
/* 	padding: 5px; */
/* 	color: black; */
/* 	background-color: rgba(200, 200, 200, .6); */
/* 	text-decoration: none; */
/* 	cursor: default; */
}

#signUp div {
	margin-bottom: 5px;
}

#signUp {
/* 	border: 2px solid grey; */
	display:inline-block;
	padding: 25px;
	border-radius: 12px;
	
	
}
</style>
</head>
<body>
	<div align="center">
		<div id="header">Hospital Management System</div>
		<div id="subheader">Sign Up For Patient Registration!!</div>
		<div class="error">${errorMessage}</div>

 		<form action="/HospitalMgmtSystem/login/signUp" method="post"> 
			
			<div id="signUp">
				
				<div><label>FirstName:</label><input type="text" align="right" name="FName"  placeholder="Patient FirstName"/></div>
				<div><label>LastName:</label><input type="text" align="right" name="LName" placeholder="Patient LastName"/></div>
				<div><label>Date of Birth:</label><input type="text" align="right" name="DOB" placeholder="Date of Birth"/></div>
				<div>Address:<input type="text" align="right" height="50" width="50" name="Address" placeholder="Address"/></div>
				<div>Mobile No:<input type="text" align="right" name="mob" placeholder="Mobile No"/></div>
				<div>Username:<input type="text" align="right" name="Uname" placeholder="Username"/></div>
				<div>Password:<input type="password" align="right" name="pwd" placeholder="Password"/></div>
				<div>
 					<input type="reset" value="Reset" /> 
				</div>
			</div>
		</form>
	</div>
</body>
</html>