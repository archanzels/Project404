/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.dao.impl;

import db.util.DbConnection;
import entity.Faculty;
import entity.dao.FacultyDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ark
 */
public class FacultyDAOImpl implements FacultyDAO {

    private DbConnection db = new DbConnection();
    private List<Faculty> fList = new ArrayList<>();

    @Override
    public int insert(Faculty t) throws ClassNotFoundException, SQLException {
        String sql = " INSERT into faculty(faculty_code,faculty_name, designation) "
                + " VALUES(?,?,?) ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getCode());
        stmt.setString(2, t.getName());
        stmt.setString(3, t.getDesignation());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int update(Faculty t) throws ClassNotFoundException, SQLException {
        String sql = " update faculty "
                + " set faculty_code=?, designation=?, faculty_name=? "
                + " where faculty_id = ? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getCode());
        stmt.setString(2, t.getDesignation());
        stmt.setString(3, t.getName());
        stmt.setInt(4, t.getId());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int delete(int id) throws ClassNotFoundException, SQLException {
        String sql = " delete from faculty where faculty_id=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public Faculty getById(int id) throws ClassNotFoundException, SQLException {
        String sql = " select * from faculty where faculty_id = ? ";
        Faculty f = null;
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = db.query();
        if (rs.next()) {
            f = new Faculty();
            f.setId(rs.getInt("faculty_id"));
            f.setCode(rs.getString("faculty_code"));
            f.setDesignation(rs.getString("designation"));
            f.setName(rs.getString("faculty_name"));
        }
        db.close();
        return f;
    }

    @Override
    public List<Faculty> getAll() throws ClassNotFoundException, SQLException {
        String sql = "select * from faculty ";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Faculty f = new Faculty();
            f = new Faculty();
            f.setId(rs.getInt("faculty_id"));
            f.setCode(rs.getString("faculty_code"));
            f.setDesignation(rs.getString("designation"));
            f.setName(rs.getString("faculty_name"));
            fList.add(f);
        }
        db.close();
        return fList;
    }

}
