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
public class Classroom {

    private int id;
    private String roomcode, description;
    boolean roomtype;

    public Classroom() {
    }

    public Classroom(int id, String roomcode, String description, boolean roomtype) {
        this.id = id;
        this.roomcode = roomcode;
        this.description = description;
        this.roomtype = roomtype;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoomcode() {
        return roomcode;
    }

    public void setRoomcode(String roomcode) {
        this.roomcode = roomcode;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isRoomtype() {
        return roomtype;
    }

    public void setRoomtype(boolean roomtype) {
        this.roomtype = roomtype;
    }

}
