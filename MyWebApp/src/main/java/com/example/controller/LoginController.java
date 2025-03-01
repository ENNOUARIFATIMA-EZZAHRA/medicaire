package com.example.controller;

import com.example.dao.UserDao;
import com.example.model.User;

import javax.servlet.http
        .HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController {
    private UserDao userDao;

    public LoginController(UserDao userDao) {
        this.userDao = userDao;
    }

    public void login(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = userDao.getUser(username);

        if (user != null && user.getPassword().equals(password)) {

        } else {

        }
    }
}
