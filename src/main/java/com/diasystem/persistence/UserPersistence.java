package com.diasystem.persistence;


import java.util.List;

public interface UserPersistence <User> {

    List<User> getUsers();

    User getUser(Long id);

    void create(User user);

    void update(User user);

    void delete(Long id);

}
