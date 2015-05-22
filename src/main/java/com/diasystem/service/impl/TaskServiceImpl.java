package com.diasystem.service.impl;


import com.diasystem.entity.Task;
import com.diasystem.persistence.TaskPersistence;
import com.diasystem.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class TaskServiceImpl implements TaskService<Task> {

    @Autowired
    private TaskPersistence tp;

    @Override
    public List<Task> getTaskList(Long taskId) {
        return tp.findTasks(taskId);
    }

    @Override
    public Task getTaskById(Long taskId) {

        if (taskId == 0) {
            return new Task();
        } else {
            return (Task) tp.findBuId(taskId);
        }
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
    public void delete(Long taskId) {
        tp.delete(taskId);

    }
}
