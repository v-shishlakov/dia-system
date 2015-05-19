package com.diasystem.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "tasks")
public class Task implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "taskId")
    private String id;

    @Column(name = "taskName")
    private String name;

    @Column(name = "date")
    @Temporal(value=TemporalType.DATE)
    private Date date;

    @Column(name = "estimateFirst")
    private String estimateFirst;

    @Column(name = "estimateSecond")
    private String estimateSecond;

    @Column(name = "startTime")
    private String startTime;

    @Column(name = "finalTime")
    private String finalTime;

    @Column(name = "timeOfWork")
    private String timeOfWork;

    @ManyToOne
    @JoinColumn(name = "id")
    private User user;

    public Task(String name, Date date, String estimateFirst, String estimateSecond, String startTime, String finalTime, String timeOfWork, User user) {
        this.name = name;
        this.date = date;
        this.estimateFirst = estimateFirst;
        this.estimateSecond = estimateSecond;
        this.startTime = startTime;
        this.finalTime = finalTime;
        this.timeOfWork = timeOfWork;
        this.user = user;
    }

    public Task() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getEstimateFirst() {
        return estimateFirst;
    }

    public void setEstimateFirst(String estimateFirst) {
        this.estimateFirst = estimateFirst;
    }

    public String getEstimateSecond() {
        return estimateSecond;
    }

    public void setEstimateSecond(String estimateSecond) {
        this.estimateSecond = estimateSecond;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getFinalTime() {
        return finalTime;
    }

    public void setFinalTime(String finalTime) {
        this.finalTime = finalTime;
    }

    public String getTimeOfWork() {
        return timeOfWork;
    }

    public void setTimeOfWork(String timeOfWork) {
        this.timeOfWork = timeOfWork;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
