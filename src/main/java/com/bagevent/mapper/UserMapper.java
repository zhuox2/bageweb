package com.bagevent.mapper;

import com.bagevent.pojo.User;

public interface UserMapper {
    void add(User user);
    User get(String user_name);
}
