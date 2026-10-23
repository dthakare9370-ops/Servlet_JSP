package com.registerServlet;

import java.io.IOException;
import java.sql.ResultSet;

import com.controller.UserController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class ProcessLogin extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req,
                           HttpServletResponse resp)
                           throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {

            UserController controller = new UserController();

            ResultSet rs = controller.userLogin(email, password);

            if (rs.next()) {
            	// Database madhun user information ghe
                int id = rs.getInt("id");
                String firstName = rs.getString("firstname");
                String lastName = rs.getString("lastname");
                String userEmail = rs.getString("email");
                String mobileNo = rs.getString("mobile_no");

                // JSP la data pathav
                req.setAttribute("id", id);
                req.setAttribute("firstName", firstName);
                req.setAttribute("lastName", lastName);
                req.setAttribute("email", userEmail);
                req.setAttribute("mobileNo", mobileNo);
            	
            		req.getRequestDispatcher("profile.jsp").forward(req, resp);
      

            } else {

               req.setAttribute("msg", "Invalide Username or Password");
               req.getRequestDispatcher("login.jsp").forward(req, resp);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }
    }
}