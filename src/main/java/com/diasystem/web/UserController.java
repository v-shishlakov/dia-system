package com.diasystem.web;

import com.diasystem.entity.User;
import com.diasystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
class UserController {

     @Autowired
     private UserService userService;

    @RequestMapping(value = "/")
    public String getUserList(ModelMap model){

        List<User> users = userService.getUserList();

        model.addAttribute("users", users);
        return "UsersShow";
    }



}

