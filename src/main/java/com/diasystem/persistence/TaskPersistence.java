package com.diasystem.persistence;

import java.util.List;

public interface TaskPersistence <Task> {

    List<Task> getTasks();

    Task getTask(Long id);

    void create(Task user);

    void update(Task user);

    void delete(Long id);

}
