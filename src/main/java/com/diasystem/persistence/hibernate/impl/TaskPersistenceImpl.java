package com.diasystem.persistence.hibernate.impl;

import com.diasystem.entity.Task;
import com.diasystem.persistence.TaskPersistence;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class TaskPersistenceImpl implements TaskPersistence<Task> {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Task> findTasks(long userId) {
        return em.createQuery("From Task where userId = :userId", Task.class).setParameter("userId", userId).getResultList();
    }

    @Override
    public Task findBuId(Long id) {
        return em.find(Task.class, id);
    }

    @Override
    public void create(Task task) {
        em.persist(task);
    }

    @Override
    public void update(Task task) {
        em.merge(task);
    }

    @Override
    public void delete(Long id) {
        Task task = new Task();
        task.setTaskId(id);
        Object o = em.merge(task);
        em.remove(o);
    }
}
