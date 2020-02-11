package com.bagevent.test;

import org.springframework.util.DigestUtils;

import java.sql.Date;
import java.sql.Timestamp;

public class test1 {
    public static void main(String[] args) {

        //timestamp
//        Timestamp timestamp=new Timestamp(System.currentTimeMillis());
//        System.out.println(timestamp);

        String md5password= DigestUtils.md5DigestAsHex("123".getBytes());
        System.out.println("202cb962ac59075b964b07152d234b70".equals(md5password));


    }
}
