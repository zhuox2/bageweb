package com.bagevent.service;

import com.bagevent.pojo.Userloginlog;

import java.util.List;

public interface UserloginlogService {
    void add(Userloginlog userloginlog);
    List<Userloginlog> list();
}
