package com.example.myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Dangnhap")
public class Dangnhap extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// lay dl tu form dn
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if ("123@gmail.com".equals(email) && "123".equals(password)) {
			response.sendRedirect("Home.jsp");
		} else {
			request.setAttribute("errorMessage", "Email hoặc mật khẩu không đúng");
		    request.getRequestDispatcher("Dangnhap.jsp").forward(request, response);
		}
	}
}
