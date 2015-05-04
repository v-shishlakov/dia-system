package com.diasystem.persistence.hibernateImpl;


import com.diasystem.persistence.UserPersistence;
import org.springframework.stereotype.Repository;
import com.diasystem.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class UserPersistenceImpl implements UserPersistence<User> {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List getUserList() {
        return em.createQuery("From User", User.class).getResultList();
    }

    @Override
    public User getUser(Long id) {
        return em.find(User.class, id);
    }

    @Override
    public void create(User user) {
        em.persist(user);
    }

    @Override
    public void update(User user) {
        em.merge(user);
    }

    @Override
    public void delete(Long id) {
        User user = new User();
        user.setId(id);

        em.remove(em.merge(user));

    }
}
