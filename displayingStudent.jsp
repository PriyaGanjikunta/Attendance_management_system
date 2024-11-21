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
	%>
	
	<nav class="nav-con">
		<a href="index.jsp">Home</a> 
		<a href="about.jsp">About Us</a> 
		<a href="privacy.jsp">Privacy&Policy</a>
		<a href="contact.jsp">Contact Us</a>
	</nav>
			
	<table border="" class="tab1">
		<tr class="tab2">
			<th>studentId</th>
			<th>studentName</th>
			<th>studentMobile</th>
			<th>studentDepartment</th>
			<th>studentMarks</th>
			<th>studentAttendance</th>
		</tr>
		
		<% while(rs.next()){ %>
			<tr>
				<td><%=rs.getInt(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getInt(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getInt(5) %></td>
				<td><%=rs.getString(6) %></td>
				
			</tr>
			
		<%} %>	
	
	</table>
	<a href="student.jsp" class="anchDis">GO BACK</a>

</body>
</html>