package com.diasystem.service;



import java.util.List;

public interface TaskService<Task> {

    List<Task> getTaskList(Long id);

    Task getTaskById(Long id);

    void create(Task task);

    void update(Task task);

    void delete(Long id);

}
