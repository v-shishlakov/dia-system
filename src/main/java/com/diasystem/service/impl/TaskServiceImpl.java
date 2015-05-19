package com.diasystem.service.impl;


import com.diasystem.entity.Task;
import com.diasystem.persistence.TaskPersistence;
import com.diasystem.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class TaskServiceImpl implements TaskService<Task> {

    @Autowired
    private TaskPersistence tp;

    @Override
    public List<Task> getTasks(Long id) {
        return tp.getTasks(id);
    }

    @Override
    public Task getTask(Long id) {
        return (Task) tp.getTask(id);
    }
    @Transactional
    @Override
    public void create(Task task) {
        tp.create(task);
    }
    @Transactional
    @Override
    public void update(Task task) {
        tp.update(task);

    }
    @Transactional
    @Override
    public void delete(Long id) {
        tp.delete(id);

    }
}
