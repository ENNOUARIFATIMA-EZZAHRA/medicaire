package com.example.dao;

import com.example.model.User;

import java.util.HashMap;
import java.util.Map;

public class UserDao {
    private Map<String, User> users = new HashMap<>();

    public void registerUser(User user) {
        users.put(user.getUsername(), user);
    }

    public User getUser(String username) {
        return users.get(username);
    }
}
