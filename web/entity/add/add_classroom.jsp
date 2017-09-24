<%-- 
    Document   : addclassroom
    Created on : Aug 31, 2017, 11:53:23 AM
    Author     : Ark
--%>

<%@page import="entity.Classroom"%>
<%@page import="entity.dao.impl.ClassroomDAOImpl"%>
<%@page import="entity.dao.ClassroomDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../../shared/header.jsp" %>

<div class="container-fluid background">
    <div class="row">
        <div class="col-md-3">
            <form method="post" id="add_classroom" name="add_classroom" action="${pageContext.request.contextPath}/entity/save/save_classroom.jsp">
                <h1>Add Classroom</h1>
                <div class="form-group">
                    <label>Room Code</label>
                    <input type="text" name="code" placeholder="Enter room code" class="form-control">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" name="description" placeholder="Enter room description" class="form-control">
                </div>
                <div class="form-group">
                    <label>Room Type</label><br>
                    <label class="radio-inline">
                        <input type="radio" name="room_type" value="true" >Class</input>
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="room_type" value="false" >Lab</input>
                    </label>
                </div>
                <button type="submit" class="btn btn-success">Save</button>
                <button type="reset" class="btn btn-warning">Clear</button>
            </form>
        </div>

        <div class="col-md-9">        
            <h1>Classroom</h1>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th>ID</th>
                        <th>Room Code</th>
                        <th>Description</th>
                        <th>Room Type</th>
                        <th>Action</th>
                    </tr>
                    <% ClassroomDAO cDAO = new ClassroomDAOImpl();
                        for (Classroom c : cDAO.getAll()) {
                    %>
                    <tr>
                        <td><%=c.getId()%></td>
                        <td><%=c.getRoomcode()%></td>
                        <td><%=c.getDescription()%></td>
                        <%String x = (c.isRoomtype() ? "Class" : "Lab");%>
                        <td><%=x%></td>
                        <td>
                            <a href="../edit/edit_classroom.jsp?id=<%=c.getId()%>" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="../delete/delete_classroom.jsp?id=<%=c.getId()%>" class="btn btn-danger"onclick="return confirm('Are you sure?')"> <span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@include file="../../shared/footer.jsp" %>