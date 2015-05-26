package com.diasystem.web;

import com.diasystem.entity.User;
import com.diasystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/")
    public String getUserList(ModelMap model) {

        List<User> users = userService.getUserList();

        model.addAttribute("users", users);
        return "user/usersShow";
    }

    @RequestMapping(value = "renderUser")
    public String renderUser(ModelMap model, @RequestParam Long userId) {

        model.addAttribute("user", userService.getUserById(userId));

        return "user/addOrEdit";
    }

    @RequestMapping(value = "deleteUser")
    public String deleteUser(@RequestParam Long userId) {

        userService.delete(userId);

        return "redirect:/";
    }

    @RequestMapping(value = "saveOrUpdateUser")
    public String saveOrUpdateUser(@ModelAttribute User user) {

            userService.saveOrUpdate(user);

        return "redirect:/";
    }


}

