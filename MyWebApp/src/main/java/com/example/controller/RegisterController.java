package com.example.controller;

import com.example.dao.UserDao;
import com.example.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterController {
    private UserDao userDao;

    public RegisterController(UserDao userDao) {
        this.userDao = userDao;
    }

    public void register(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User(username, password);
        userDao.registerUser(user);

    }
}
