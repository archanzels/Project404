/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.dao.impl;

import db.util.DbConnection;
import entity.Faculty;
import entity.Schedule;
import entity.Subject;
import entity.Timing;
import entity.dao.ScheduleDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ark
 */
public class ScheduleDAOImpl implements ScheduleDAO {

    private List schList = new ArrayList();
    private DbConnection db = new DbConnection();

   
    @Override
    public List<Schedule> getAllData() throws ClassNotFoundException, SQLException {
        List<Schedule> schList = new ArrayList<>();
        String sql = " SELECT * from schedule sc "
                + " join subjects su on sc.sid = su.id "
                + " join timing t on sc.tid = t.id ";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Schedule sc = new Schedule();
            sc.setId(rs.getInt("id"));
            Subject s = new Subject();
            s.setId(rs.getInt("sid"));
            s.setSubject_name(rs.getString("subject_name"));
            s.setSubject_code(rs.getString("subject_code"));
            sc.setSubject(s);

            Timing t = new Timing();
            t.setId(rs.getInt("tid"));
            sc.setTiming(t);

            schList.add(sc);
        }
        return schList;
    }

    @Override
    public int insert(Schedule t) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(Schedule t) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Schedule getById(int id) throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Schedule> getAll() throws ClassNotFoundException, SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
