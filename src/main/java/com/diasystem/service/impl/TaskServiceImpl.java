package com.diasystem.service.impl;


import com.diasystem.entity.Task;
import com.diasystem.persistence.TaskPersistence;
import com.diasystem.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class TaskServiceImpl implements TaskService<Task> {

    @Autowired
    private TaskPersistence tp;

    @Override
    public List<Task> getTaskList(Long userId) {
        return tp.findTasks(userId);
    }

    @Override
    public List<Task> getFilterTaskList(Long userId, Date firstDate, Date secondDate) {
        return tp.findFilterTasks(userId, firstDate, secondDate);
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
    public void saveOrUpdate(Task task) {

        if (task.getTaskId() == null) {
            tp.create(task);
        } else {
            tp.update(task);
        }
    }

    @Transactional
    @Override
    public void delete(Long taskId) {
        tp.delete(taskId);

    }
}
