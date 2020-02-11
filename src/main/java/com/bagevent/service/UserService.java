package com.bagevent.service;

import com.bagevent.pojo.User;

public interface UserService {
    void add(User user);
    User get(String user_name);
}
