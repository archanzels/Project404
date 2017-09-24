<%-- 
    Document   : edit_classroom
    Created on : Aug 31, 2017, 12:46:40 PM
    Author     : Ark
--%>
<%@page import="entity.Faculty"%>
<%@page import="entity.dao.FacultyDAO"%>
<%@page import="entity.dao.impl.FacultyDAOImpl"%>
<%@include file="../../shared/header.jsp" %>
<%
    FacultyDAO cDAO = new FacultyDAOImpl();
    int id = Integer.parseInt(request.getParameter("id"));
    Faculty c = cDAO.getById(id);
%>


<div class="container-fluid background">
    <form method="post" action="${pageContext.request.contextPath}/entity/save/save_faculty.jsp">
        <div class="row">
            <div class="col-lg-5">
                <h1>Edit Faculty</h1>
                <div class="form-group">
                    <label>Faculty Code</label>
                    <input type="text" name="faculty_code" value="<%=c.getCode()%>" class="form-control">
                </div>
                <div class="form-group">
                    <label>Designation</label>
                    <input type="text" name="designation" value="<%=c.getDesignation()%>" class="form-control">
                </div>
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="faculty_name" value="<%=c.getName()%>"class="form-control">
                </div>
                <input type="hidden" name="id" value="<%=c.getId()%>">
                <button type="submit" class="btn btn-success">Save</button>
                <button type="reset" class="btn btn-warning">Clear</button>
                </form>
            </div>
