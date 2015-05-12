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
class UserController {

     @Autowired
     private UserService userService;

    @RequestMapping(value = "/")
    public String getUsers(ModelMap model){

        List<User> users = userService.getUsers();

        model.addAttribute("users", users);
        return "show";
    }

    @RequestMapping(value = "render")
    public String renderUser(ModelMap model, @RequestParam Long id){

        if (id == 0) {
            model.addAttribute("user", new User());
        }else{
            model.addAttribute("user", userService.getUser(id));
        }
        return "addOrEdit";
    }

    @RequestMapping(value = "delete")
    public String deleteUser(@RequestParam Long id){

        userService.delete(id);

        return "redirect:/";
    }

    @RequestMapping(value = "saveUser")
    public String saveUser(@ModelAttribute User user ){

        if (user.getId() == null){
            userService.create(user);
        }else{
            userService.update(user);
        }
        return "redirect:/";
    }


}

