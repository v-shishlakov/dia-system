package com.diasystem.service.impl;


import com.diasystem.entity.User;
import com.diasystem.persistence.UserPersistence;
import com.diasystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class UserServiceImpl implements UserService<User> {

    @Qualifier("UserPersistence")
    @Autowired
    private UserPersistence userPersistence;

    @Override
    public List<User> getUsers() {
        return userPersistence.getUsers();
    }

    @Override
    public User getUser(Long id) {
        return (User) userPersistence.getUser(id);
    }

    @Transactional
    @Override
    public void create(User user) {
        userPersistence.create(user);
    }

    @Transactional
    @Override
    public void update(User user) {
        userPersistence.update(user);
    }

    @Transactional
    @Override
    public void delete(Long id) {
        userPersistence.delete(id);
    }
}
