package com.medicare.controller;

import com.medicare.dao.UserDao;
import com.medicare.model.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private UserDao userDao;

    @Override
    public void init() {
        this.userDao = UserDao.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email == null || !email.matches("^[A-Za-z0-9+_.-]+@(.+)$") || password == null || password.length() < 8) {
            request.setAttribute("error", "Invalid email format or password must be at least 8 characters long!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (userDao.getUser(email) != null) {
            request.setAttribute("error", "Email is already registered!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        User user = new User(email, password);
        userDao.registerUser(user);

        response.sendRedirect("login.jsp");
    }
}
