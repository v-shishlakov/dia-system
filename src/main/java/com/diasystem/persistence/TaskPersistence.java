package com.diasystem.persistence;

import java.util.List;

public interface TaskPersistence<Task> {

    List<Task> findTasks(long id);

    Task findBuId(Long id);

    void create(Task task);

    void update(Task task);

    void delete(Long id);

}
