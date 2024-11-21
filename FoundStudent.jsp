<%@page import="java.sql.ResultSet"%>
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
	<%ResultSet rs = (ResultSet) request.getAttribute("resultSet"); 
	rs.next();
	%>
	
	<nav class="nav-con">
		<a href="index.jsp">Home</a> 
		<a href="about.jsp">About Us</a> 
		<a href="privacy.jsp">Privacy&Policy</a>
		<a href="contact.jsp">Contact Us</a>
	</nav>
			
	<h1 class="hd2">Student Details:-</h1><br>
	<form action="update-new-values" method="post">
		<label for="s-name" class="l1">Student Id</label><br>
		<input type="number" id="s-name" name="studentId" value="<%=rs.getInt(1) %>" readonly="readonly" ><br><br>
		
		<label for="s-name" class="l1">Student Name</label><br>
		<input type="text" id="s-name" name="studentName" value="<%=rs.getString(2) %>" ><br><br>
		
		<label for="s-name" class="l1">Student Mobile</label><br>
		<input type="number" id="s-name" name="studentMobile" value="<%=rs.getInt(3) %>"><br><br>
		
		<label for="s-name" class="l1">Student Department</label><br>
		<input type="text" id="s-name" name="studentDept" value="<%=rs.getString(4) %>"><br><br>
		
		<label for="s-name" class="l1">Student Marks</label><br>
		<input type="number" id="s-name" name="studentMarks" value="<%=rs.getInt(5) %>"><br><br>
		
		<label for="s-name" class="l1">Student Attendance</label><br>
		<input type="text" id="s-name" name="studentAttendance" value="<%=rs.getString(6) %>"><br><br>
		
		<button type="submit" class="b1">UPDATE DETAILS</button>
		
	</form>

</body>
</html>