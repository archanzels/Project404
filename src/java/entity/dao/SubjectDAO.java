/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.dao;

import dao.GenDAO;
import entity.Classroom;
import entity.Subject;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Ark
 */
public interface SubjectDAO extends GenDAO<Subject> {
    public List<Subject> getAllData() throws ClassNotFoundException, SQLException;

}
