<%-- 
    Document   : edit_classroom
    Created on : Aug 31, 2017, 12:46:40 PM
    Author     : Ark
--%>
<%@page import="entity.Classroom"%>
<%@page import="entity.dao.ClassroomDAO"%>
<%@page import="entity.dao.impl.ClassroomDAOImpl"%>
<%@include file="../../shared/header.jsp" %>
<%
    ClassroomDAO cDAO = new ClassroomDAOImpl();
    int id = Integer.parseInt(request.getParameter("id"));
    Classroom c = cDAO.getById(id);
%>
<div class="container-fluid background">


    <form method="post" action="${pageContext.request.contextPath}/entity/save/save_classroom.jsp">
        <div class="row">
            <div class="col-lg-5">
                <h1>Edit Classroom</h1>
                <div class="form-group">
                    <label>Room Code</label>
                    <input type="text" name="code" value="<%=c.getRoomcode()%>" class="form-control">
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <input type="text" name="description" value="<%=c.getDescription()%>" class="form-control">
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
                <input type="hidden" name="id" value="<%=c.getId()%>">
                <button type="submit" class="btn btn-success">Save</button>
                <button type="reset" class="btn btn-warning">Clear</button>
                </form>
            </div>
        </div>