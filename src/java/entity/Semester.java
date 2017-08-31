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
public class Semester {

    private int id;
    private String sem_code, section;
    private Date start_date, end_date;

    public Semester() {
    }

    public Semester(int id, String sem_code, String section, Date start_date, Date end_date) {
        this.id = id;
        this.sem_code = sem_code;
        this.section = section;
        this.start_date = start_date;
        this.end_date = end_date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSem_code() {
        return sem_code;
    }

    public void setSem_code(String sem_code) {
        this.sem_code = sem_code;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

}
