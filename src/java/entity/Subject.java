/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Ark
 */
public class Subject {

    private int id;
    private String subject_code, subject_name;
    private Boolean subject_type;
    private Faculty fac;

    public Subject() {
    }

    public Subject(int id, String subject_code, String subject_name, Boolean subject_type, Faculty fac) {
        this.id = id;
        this.subject_code = subject_code;
        this.subject_name = subject_name;
        this.subject_type = subject_type;
        this.fac = fac;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubject_code() {
        return subject_code;
    }

    public void setSubject_code(String subject_code) {
        this.subject_code = subject_code;
    }

    public String getSubject_name() {
        return subject_name;
    }

    public void setSubject_name(String subject_name) {
        this.subject_name = subject_name;
    }

    public Boolean getSubject_type() {
        return subject_type;
    }

    public void setSubject_type(Boolean subject_type) {
        this.subject_type = subject_type;
    }

    public Faculty getFac() {
        return fac;
    }

    public void setFac(Faculty fac) {
        this.fac = fac;
    }

}
