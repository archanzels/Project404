/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author Ark
 */
public class Schedule {

    private int id;
    private Subject subject;
    private Timing timing; 

    public Schedule() {
    }

    public Schedule(int id, Subject subject, Timing timing) {
        this.id = id;
        this.subject = subject;
        this.timing = timing;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public Timing getTiming() {
        return timing;
    }

    public void setTiming(Timing timing) {
        this.timing = timing;
    }

}
