package com.medicare.dao;

import com.medicare.model.User;
import java.util.HashMap;
import java.util.Map;

public class UserDao {
    private Map<String, User> users = new HashMap<>();
    private static UserDao instance = null;

    private UserDao() {}

    public static synchronized UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();
        }
        return instance;
    }

    public void registerUser(User user) {
        users.put(user.getEmail(), user);
    }

    public User getUser(String email) {
        return users.get(email);
    }

    public User getUser(String email, String password) {
        User user = users.get(email);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}
