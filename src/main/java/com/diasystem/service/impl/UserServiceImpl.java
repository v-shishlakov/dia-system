package com.diasystem.service.impl;


import com.diasystem.entity.User;
import com.diasystem.persistence.UserPersistence;
import com.diasystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class UserServiceImpl implements UserService<User> {

    @Autowired
    private UserPersistence up;

    @Override
    public List<User> getUserList() {
        return up.findUsers();
    }

    @Override
    public User getUserById(Long userId) {

        if (userId == 0) {
            return new User();
        } else {
            return (User) up.findById(userId);
        }
    }

    @Transactional
    @Override
    public void create(User user) {
        up.create(user);
    }

    @Transactional
    @Override
    public void update(User user) {
        up.update(user);
    }

    @Transactional
    @Override
    public void delete(Long id) {
        up.delete(id);
    }
}
