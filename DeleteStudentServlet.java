package com.jsp.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/delete-student")
public class DeleteStudentServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int studentId = Integer.parseInt(req.getParameter("studentId"));
		
		
		//JDBC
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_info_project","root","Priya@2002");
			
			PreparedStatement pst = conn.prepareStatement("DELETE from student where studentId=?");
			pst.setInt(1, studentId);
			
			
			Boolean rs = pst.execute();
			
			PrintWriter out = resp.getWriter();
			if(rs==false) {
				out.print("<h1>Data Deleted Successful!</h1>");
			}
			else {
				out.print("<h1>Data Deletion Failed!!</h1>");
			}
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
