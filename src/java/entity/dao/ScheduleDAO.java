/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.dao;

import dao.GenDAO;
import entity.Schedule;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Ark
 */
public interface ScheduleDAO extends GenDAO<Schedule> {

    public List<Schedule> getAllData() throws ClassNotFoundException, SQLException;

}
