package com.bagevent.controller;

import com.bagevent.pojo.User;
import com.bagevent.pojo.Userloginlog;
import com.bagevent.service.UserService;
import com.bagevent.service.UserloginlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.List;

@Controller
@RequestMapping("")
public class UserController {
    @Autowired
    UserService userService;

    @Autowired
    UserloginlogService userloginlogService;

    @RequestMapping("home")
    public String home(){
        System.out.println("home controller");
        return "home";
    }
    @RequestMapping("login")
    public String login(){
        System.out.println("login controller");
        return "login";
    }
    @RequestMapping("register")
    public String register(){
        System.out.println("register controller");
        return "register";
    }

    @RequestMapping("user_add")
    public String add(User user){
        if(user.getCellphone().length()<1&&user.getEmail().length()<1){
            return "register";
        }
        if(user.getUser_name().length()<1)
            return "register";
        if(user.getPassword().length()<1)
            return "register";

        Timestamp timestamp=new Timestamp(System.currentTimeMillis());
        user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
        user.setCreate_time(timestamp);
        userService.add(user);
        System.out.println(user.toString());
        return "home";
    }

    @RequestMapping("user_login")
    public String login(User user, HttpServletRequest request, Model model){

        User tmp=userService.get(user.getUser_name());

        if(tmp.getPassword().equals(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()))){
            Userloginlog userloginlog=new Userloginlog();
            userloginlog.setUser_id(tmp.getUser_id());
            userloginlog.setLogin_ip(request.getRemoteAddr());
            userloginlog.setLogin_time(new Timestamp(System.currentTimeMillis()));
            userloginlogService.add(userloginlog);

            List<Userloginlog>  userloginlogList=userloginlogService.list();
            for (Userloginlog i:userloginlogList
                 ) {
                System.out.println(i);
            }
            model.addAttribute("userloginloglist",userloginlogList);
            return "welcome";
        }

        return "home";
    }
}
