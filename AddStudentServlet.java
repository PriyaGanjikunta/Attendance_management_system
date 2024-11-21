package com.jsp.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/add-student")
public class AddStudentServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int studentId = Integer.parseInt(req.getParameter("studentId"));
		String studentName = req.getParameter("studentName");
		int studentMobile = Integer.parseInt(req.getParameter("studentMobile"));
		String studentDept = req.getParameter("studentDept");
		int studentMarks = Integer.parseInt(req.getParameter("studentMarks"));
		String studentAttendance = req.getParameter("studentAttendance");
		
		//JDBC
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info_project","root","Priya@2002");
			
			PreparedStatement pst = conn.prepareStatement("INSERT INTO student values(?,?,?,?,?,?)");
			pst.setInt(1, studentId);
			pst.setString(2, studentName);
			pst.setInt(3, studentMobile);
			pst.setString(4, studentDept);
			pst.setInt(5, studentMarks);
			pst.setString(6, studentAttendance);
			
			Boolean rs = pst.execute();
			resp.sendRedirect("admin.jsp");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
