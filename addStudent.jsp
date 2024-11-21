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
			
	<h1 class="hd2">Enter Student Details:-</h1><br>
	<form action="add-student" method="post">
		<label for="s-name" class="l1">Student Id</label><br>
		<input type="number" id="s-name" name="studentId" placeholder="Enter Student Id"><br><br>
		
		<label for="s-name" class="l1">Student Name</label><br>
		<input type="text" id="s-name" name="studentName" placeholder="Enter Student Name"><br><br>
		
		<label for="s-name" class="l1">Student Mobile</label><br>
		<input type="number" id="s-name" name="studentMobile" placeholder="Enter Student Mobile Number"><br><br>
		
		<label for="s-name" class="l1">Student Department</label><br>
		<input type="text" id="s-name" name="studentDept" placeholder="Enter Student Department Name"><br><br>
		
		<label for="s-name" class="l1">Student Marks</label><br>
		<input type="number" id="s-name" name="studentMarks" placeholder="Enter Student Marks"><br><br>
		
		<label for="s-name" class="l1">Student Attendance</label><br>
		<input type="text" id="s-name" name="studentAttendance" placeholder="Enter Student Attendance"><br><br>
		
		<button type="submit" class="b1">ADD VALUES</button>
		
	</form>

</body>
</html>