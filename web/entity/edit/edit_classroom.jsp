<%-- 
    Document   : edit_classroom
    Created on : Aug 31, 2017, 12:46:40 PM
    Author     : Ark
--%>
<%@page import="entity.Classroom"%>
<%@page import="entity.dao.ClassroomDAO"%>
<%@page import="entity.dao.impl.ClassroomDAOImpl"%>
<%
    ClassroomDAO cDAO = new ClassroomDAOImpl();
    int id = Integer.parseInt(request.getParameter("id"));
    Classroom c = cDAO.getById(id);
%>

<h1>Edit Classroom</h1>

<form method="post" action="${pageContext.request.contextPath}/entity/save/save_classroom.jsp">
    <div class="form-group">
        <label>Room Code</label>
        <input type="text" name="code" value="<%=c.getRoomcode()%>" class="form-control">
    </div>
    <div class="form-group">
        <label>Description</label>
        <input type="text" name="description" value="<%=c.getDescription()%>" class="form-control">
    </div>
    <div class="form-group">
        <label>Room Type</label>
        <input type="radio" name="room_type" value="true" class="form-control">Class</input>
        <input type="radio" name="room_type" value="false" class="form-control">Lab</input>
    </div>
    <input type="hidden" name="id" value="<%=c.getId()%>">
    <button type="submit">Save</button>
</form>