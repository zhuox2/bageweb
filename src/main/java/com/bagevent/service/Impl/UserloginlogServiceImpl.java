package com.bagevent.service.Impl;

import com.bagevent.mapper.UserloginlogMapper;
import com.bagevent.pojo.Userloginlog;
import com.bagevent.service.UserloginlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserloginlogServiceImpl implements UserloginlogService {
    @Autowired
    UserloginlogMapper userloginlogMapper;
    @Override
    public void add(Userloginlog userloginlog) {
        userloginlogMapper.add(userloginlog);
    }

    @Override
    public List<Userloginlog> list() {
        return userloginlogMapper.list();
    }
}
