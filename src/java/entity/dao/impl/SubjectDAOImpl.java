/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.dao.impl;

import db.util.DbConnection;
import entity.Faculty;
import entity.Subject;
import entity.dao.SubjectDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ark
 */
public class SubjectDAOImpl implements SubjectDAO {

    private List sList = new ArrayList();
    private DbConnection db = new DbConnection();

    @Override
    public int insert(Subject t) throws ClassNotFoundException, SQLException {
        String sql = "insert into subjects(subject_code,subject_name,subject_type,fid)"
                + " values(?,?,?,?)";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getSubject_code());
        stmt.setString(2, t.getSubject_name());
        stmt.setBoolean(3, t.getSubject_type());
        stmt.setInt(4, t.getFac().getId());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int update(Subject t) throws ClassNotFoundException, SQLException {
        String sql = " update subjects "
                + " set subject_code =? ,subject_name= ? , subject_type=?, fid=? "
                + " where id=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getSubject_code());
        stmt.setString(2, t.getSubject_name());
        stmt.setBoolean(3, t.getSubject_type());
        stmt.setInt(4, t.getFac().getId());
        stmt.setInt(5, t.getId());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int delete(int id) throws ClassNotFoundException, SQLException {
        String sql = " delete from subjects where id=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public Subject getById(int id) throws ClassNotFoundException, SQLException {
        String sql = " select * from subjects where id = ? ";
        Subject f = null;
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = db.query();
        if (rs.next()) {
            f = new Subject();
            f.setId(rs.getInt("id"));
            f.setSubject_code(rs.getString("subject_code"));
            f.setSubject_name(rs.getString("subject_name"));
            f.setSubject_type(rs.getBoolean("subject_type"));
        }
        db.close();
        return f;
    }

    @Override
    public List<Subject> getAll() throws ClassNotFoundException, SQLException {
        List<Subject> sList = new ArrayList<>();
        String sql = "select * from subjects";
        Subject s = null;

        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            s = new Subject();
            s.setId(rs.getInt("id"));
            s.setSubject_code(rs.getString("subject_code"));
            s.setSubject_name(rs.getString("subject_name"));
            s.setSubject_type(rs.getBoolean("subject_type"));

            Faculty fac = new Faculty();
            fac.setId(rs.getInt("fid"));
            s.setFac(fac);

            sList.add(s);
        }
        db.close();
        return sList;
    }

    @Override
    public List<Subject> getAllData() throws ClassNotFoundException, SQLException {
        List<Subject> sList = new ArrayList<>();
        String sql = "select * from subjects s join faculty f on s.fid=f.faculty_id";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Subject s = new Subject();
            s.setId(rs.getInt("id"));
            s.setSubject_code(rs.getString("subject_code"));
            s.setSubject_name(rs.getString("subject_name"));
            s.setSubject_type(rs.getBoolean("subject_type"));
            Faculty f = new Faculty();
            f.setId(rs.getInt("fid"));
            f.setName(rs.getString("faculty_name"));
            s.setFac(f);
            sList.add(s);
        }
        return sList;

    }

}
