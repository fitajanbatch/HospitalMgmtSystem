<%@page import="com.hospital.model.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Details Page</title>

<style type="text/css">
#header {
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

.resultHeader, .info {
	display: inline-block;
	vertical-align: top;
	margin-top: 15px;
}

.image {
	display: inline-block;
}

.resultHeader a {
	font-size: 18px;
	color: #1a0dab;
	font-family: arial, sans-serif;
	line-height: 1.2;
	text-align: left;
	font-weight: normal;
}

.info p {
	color: #545454;
	font-size: medium;
	line-height: 1.3px;
	margin: 10px 0;
}

.resultItem {
	padding-bottom: 15px;
}

.image img {
	width: 200px;
	height: 200px;
	border-radius: 10px;
}
</style>

</head>
<body>
	<div align="center">
		<div id="header">Hospital Management System</div>
	</div>
	<div id="results">
		<div class="resultItem" style="padding-bottom: 15px;">
			<div class="image">
				<img alt="Image of ${patient.getName()}"
					src="${patient.getImageUrl()}" />
			</div>
			<div class="resultHeader">
				<a href="/HospitalMgmtSystem/patient?id=${patient.getId()}">
					Id:${patient.getId()} - Name: ${patient.getName()}
				</a>
				<p>Doctor: ${patient.getDoctor().getName()}, Specialization:
					${patient.getDoctor().getSpecialization()},
					${patient.getDoctor().getHospital().getName()}
				</p>
				<p>
					<b>Age:</b> ${patient.getAge()} 
				</p>
				<p>
					<b>Weight:</b> ${patient.getWeight()}
				</p>
				<p>
					<b>Patient History:</b> Patient has a habit of scoring hundred
					every innings!!!
				</p>
			</div>
		</div>

	</div>





</body>
</html>