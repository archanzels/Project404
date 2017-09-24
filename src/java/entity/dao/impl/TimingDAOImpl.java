/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.dao.impl;

import db.util.DbConnection;
import entity.Timing;
import entity.dao.TimingDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ark
 */
public class TimingDAOImpl implements TimingDAO {

    private DbConnection db = new DbConnection();
    private List<Timing> tList = new ArrayList<>();

    @Override
    public int insert(Timing t) throws ClassNotFoundException, SQLException {
        String sql = " insert into timing(first,second,third,fourth)"
                + " values(?,?,?,?) ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getFirst());
        stmt.setString(2, t.getSecond());
        stmt.setString(3, t.getThird());
        stmt.setString(4, t.getFourth());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int update(Timing t) throws ClassNotFoundException, SQLException {
        String sql = " update timing set first=? ,second=? ,third=? ,fourth=? "
                + " where id=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getFirst());
        stmt.setString(2, t.getSecond());
        stmt.setString(3, t.getThird());
        stmt.setString(4, t.getFourth());
        stmt.setInt(5, t.getId());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int delete(int id) throws ClassNotFoundException, SQLException {
        String sql = " delete from timing where id=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public Timing getById(int id) throws ClassNotFoundException, SQLException {
        Timing t = null;
        String sql = " select * from timing where id=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = db.query();
        if (rs.next()) {
            t = new Timing();
            t.setId(rs.getInt("id"));
            t.setFirst(rs.getString("first"));
            t.setSecond(rs.getString("second"));
            t.setThird(rs.getString("third"));
            t.setFourth(rs.getString("fourth"));
        }
        db.close();
        return t;
    }

    @Override
    public List<Timing> getAll() throws ClassNotFoundException, SQLException {

        String sql = " select * from timing ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        ResultSet rs = db.query();
        if (rs.next()) {
            Timing t = new Timing();
            t.setId(rs.getInt("id"));
            t.setFirst(rs.getString("first"));
            t.setSecond(rs.getString("second"));
            t.setThird(rs.getString("third"));
            t.setFourth(rs.getString("fourth"));
            tList.add(t);
        }
        db.close();
        return tList;
    }

}
