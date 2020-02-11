package com.bagevent.mapper;

import com.bagevent.pojo.Userloginlog;

import java.util.List;

public interface UserloginlogMapper {
    void add(Userloginlog userloginlog);
    List<Userloginlog> list();
}
