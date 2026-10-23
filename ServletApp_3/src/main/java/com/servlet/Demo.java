package com.servlet;

import java.io.IOException;
import java.util.Arrays;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class Demo extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("name", "Dnyaneshwar Thakare");
		
		req.setAttribute("list", Arrays.asList("Ganesh","Tanmay", "Abhi", "Ramesh"));
		req.getRequestDispatcher("index.jsp").forward(req, resp);
		
	}
}
