/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.dao.impl;

import db.util.DbConnection;
import entity.Classroom;
import entity.dao.ClassroomDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ark
 */
public class ClassroomDAOImpl implements ClassroomDAO {

    private List<Classroom> cList = new ArrayList<>();
    private DbConnection db = new DbConnection();

    @Override
    public int insert(Classroom t) throws ClassNotFoundException, SQLException {
        String sql = " INSERT into classroom(roomcode, description, roomtype) "
                + " values(?,?,?) ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getRoomcode());
        stmt.setString(2, t.getDescription());
        stmt.setBoolean(3, t.isRoomtype());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int update(Classroom t) throws ClassNotFoundException, SQLException {
        String sql = " update classroom "
                + " set roomcode=? , description=?, roomtype=? "
                + " where id=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, t.getRoomcode());
        stmt.setString(2, t.getDescription());
        stmt.setBoolean(3, t.isRoomtype());
        stmt.setInt(4, t.getId());
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public int delete(int id) throws ClassNotFoundException, SQLException {
        String sql = " delete from classroom where id=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public Classroom getById(int id) throws ClassNotFoundException, SQLException {
        String sql = " select * from classroom where id = ? ";
        Classroom c = null;
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = db.query();
        if (rs.next()) {
            c = new Classroom();
            c.setId(rs.getInt("id"));
            c.setRoomcode(rs.getString("roomcode"));
            c.setDescription(rs.getString("description"));
            c.setRoomtype(rs.getBoolean("roomtype"));
        }
        db.close();
        return c;
    }

    @Override
    public List<Classroom> getAll() throws ClassNotFoundException, SQLException {
        String sql = "select * from classroom ";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Classroom c = new Classroom();
            c.setId(rs.getInt("id"));
            c.setRoomcode(rs.getString("roomcode"));
            c.setDescription(rs.getString("description"));
            c.setRoomtype(rs.getBoolean("roomtype"));
            cList.add(c);
        }
        db.close();
        return cList;
    }

}
