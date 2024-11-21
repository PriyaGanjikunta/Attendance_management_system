<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
	<nav class="nav-con">
		<a href="index.jsp">Home</a> 
		<a href="about.jsp">About Us</a> 
		<a href="privacy.jsp">Privacy&Policy</a>
		<a href="contact.jsp">Contact Us</a>
	</nav>
	
	<h1 class="hd2">Enter Student Id:-</h1><br>
	<form action="details-of-student">
		<label for="s-name" class="l1">Student Id</label><br>
		<input type="number" id="s-name" name="studentId" placeholder="Enter Student Id"><br><br>
		
		
		
		<button type="submit" class="b1">SHOW DETAILS</button>
		
	</form>
</body>
</html>