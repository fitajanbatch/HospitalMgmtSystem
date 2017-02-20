package com.hospital;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println(getServletContext().getInitParameter("dburl"));
		System.out.println(getServletConfig().getInitParameter("page"));
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/login.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("Uname");
		String password = req.getParameter("pwd");

		boolean isValidUser = false;
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hospital", "root", "root");

			//Statement st = conn.createStatement();
			/*
			 * ResultSet rs = st.executeQuery(
			 * "select * from user where username='" + username +
			 * "' and password='" + password + "'");
			 * 
			 */
			PreparedStatement ps = conn.prepareStatement("select * from user where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				isValidUser = true;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		if (isValidUser) {

			Cookie cookie = new Cookie("userLoggedIn", "true");
			resp.addCookie(cookie);

			HttpSession session = req.getSession();
			session.setAttribute("user", username);

			RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/home.jsp");
			rd.forward(req, resp);
		} else {
			req.setAttribute("errorMessage", "Invalid UserName or Password!! Please try again later!!");
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/jsp/login.jsp");
			rd.forward(req, resp);
		}
	}

}
