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
</style>

</head>
<body>
<div align="center">
	<div id="header">Hospital Management System</div>
	<div>
		
		<form action="/HospitalMgmtSystem/search">
			<input style="width: 350px;height: 30px;font-size: 20px; margin-bottom: 5px;" type="text" name="searchbox" placeholder="Search Patient by ID or Name">
			<br/><input type="submit" value="Search">
		</form>
	
	</div>
</div>
</body>
</html>