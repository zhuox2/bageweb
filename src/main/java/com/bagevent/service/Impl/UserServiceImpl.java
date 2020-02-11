package com.bagevent.service.Impl;

import com.bagevent.mapper.UserMapper;
import com.bagevent.pojo.User;
import com.bagevent.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public void add(User user) {
        userMapper.add(user);
    }

    @Override
    public User get(String user_name) {
        return userMapper.get(user_name);
    }
}
