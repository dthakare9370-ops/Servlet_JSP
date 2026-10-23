package com.registerServlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.controller.UserController;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registeration")
public class ProcessRegistration extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.getRequestDispatcher("registeration.jsp").forward(req, resp);
		
		
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String email = req.getParameter("email");
		String mobileNo = req.getParameter("mobile");
		String password = req.getParameter("password");
		System.out.println(firstName);
		System.out.println(lastName);
		System.out.println(email);
		System.out.println(mobileNo); 
		System.out.println(password);
		
		
		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setMobileNo(mobileNo);
		user.setPassword(password);
		
		UserController controller = new UserController();
		
		String msg = controller.insert(user);
		
		System.out.println(msg);
		
		resp.setContentType("text/html");

		PrintWriter out = resp.getWriter();

		out.println("<script>");
		out.println("alert('" + msg + "');");
		out.println("</script>");
		
//		out.println("<h1>" + msg + "</h1>");
		
//		req.setAttribute("msg", msg);
//
//		req.getRequestDispatcher("/register-form.jsp").forward(req, resp);
		
		

		if ("User Registered Successfully".equals(msg)) {

		    // Registration successful → Login page
		    resp.sendRedirect("login-form");

		} else {

		    // Registration failed → Registration page with error message
		    req.setAttribute("msg", msg);

		    req.getRequestDispatcher("/register-form.jsp").forward(req, resp);
		}
	}
}
