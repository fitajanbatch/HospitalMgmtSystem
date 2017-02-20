<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

<style type="text/css">
#header{
	font-size: 36px;
	color: green;
	margin-bottom: 10px;
}

body a {
	text-decoration: none;
}

body a:HOVER {
	text-decoration: underline;
}

.error{
	color: red;
    margin-bottom: 5px;
}

.anchorButton{
	border: 1px solid black;
    font-size: 14px;
    padding: 5px;
    color: black;
    background-color: rgba(200,200,200,.6);
    text-decoration: none;
    cursor: default;
}

#login div {
	margin-bottom: 5px;

}

#login {
	border: 1px solid grey;
    display: inline-block;
    padding: 25px;
    border-radius: 6px;
    background-color: lightyellow;
}
</style>

</head>
<body>
<div align="center">
	<div id="header">Hospital Management System</div>
	
	<div class="error">${errorMessage}</div>
	
	<form action="/HospitalMgmtSystem/login" method="post">
	
		<div id="login">
			<div>
				<input type="text" name="Uname" placeholder="Enter Username"/>
			</div>
			<div>
				<input type="password" name="pwd" placeholder="Enter Password" />
			</div>
			<div>
				<a class="anchorButton" href="/HospitalMgmtSystem/register">Sign Up</a>
				<a class="anchorButton" href="/HospitalMgmtSystem/forgotPassword">Forgot Password</a>
				<input type="submit" value="Sign In" />
			</div>
		</div>
		
		<input type="hidden" name="page" value="loginPage">
	</form>
</div>
</body>
</html>