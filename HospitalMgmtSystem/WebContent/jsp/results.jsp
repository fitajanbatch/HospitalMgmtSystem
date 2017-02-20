<%@page import="com.hospital.model.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

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
.resultHeader, .info{
    display: inline-block;
    vertical-align: top;
    margin-top: 15px;

}

.image{
	display: inline-block;
}
.resultHeader a {
	font-size: 18px;
	color: #1a0dab;
	font-family: arial,sans-serif;
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

.resultItem{
	padding-bottom: 15px;
}

.image img{
	width: 100px;
    height: 100px;
    border-radius: 10px;
}
</style>

</head>
<body>
	<div align="center">
		<div id="header">Hospital Management System</div>
		<div>
			<form action="/HospitalMgmtSystem/search">
				<input
					style="width: 350px; height: 30px; font-size: 20px; margin-bottom: 5px;"
					type="text" name="searchbox"
					placeholder="Search Patient by ID or Name"> <br /> <input
					type="submit" value="Search">
			</form>
			<a href="/HospitalMgmtSystem/logout">Logout</a>
		</div>
	</div>
<%-- 	<div id="results">
		<%
			Patient p = (Patient) request.getAttribute("patient");
		%>
		<table>
			<tr>
				<td>Patient Id:</td>
				<td>
					<%
						out.print(p.getId());
					%>
				</td>
			</tr>
			<tr>

				<%
					if (p.getName() != "Virat") {
				%>
				<td>Patient Name:</td>
				<td>
					<%
						out.print(p.getName());
					%>
				</td>
				<%
					}
				%>
			</tr>
		</table>
	</div> --%>

	<div id="results">
	
		<c:if test="${patients.size() == 0}">
			<p>Sorry!! No results found..</p>
		</c:if>
		
		<c:forEach items="${patients}" var="p">
			<div class="resultItem" style="padding-bottom: 15px;">
				<div class="image">
					<img alt="Image of ${p.getName()}" src="${p.getImageUrl()}"/>
				</div>
				<div class="resultHeader">
					<a href="/HospitalMgmtSystem/patient?id=${p.getId()}">Id: ${p.getId()} - Name: 	${p.getName()}</a>
					<p>Doctor: ${p.getDoctor().getName()}, Specialization: ${p.getDoctor().getSpecialization()}, ${p.getDoctor().getHospital().getName()}</p>
				</div>
			</div>
		</c:forEach>
	<%-- ../../images/${patient.getName()}_img.jpg --%>
	</div>





</body>
</html>