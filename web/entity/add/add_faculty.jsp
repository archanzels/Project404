<%-- 
    Document   : addfaculty
    Created on : Aug 31, 2017, 11:53:23 AM
    Author     : Ark
--%>

<%@page import="entity.Faculty"%>
<%@page import="entity.dao.impl.FacultyDAOImpl"%>
<%@page import="entity.dao.FacultyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../../shared/header.jsp" %>

<div class="container-fluid background">
    <div class="row">
        <div class="col-md-3">
            <form method="post" id="add_faculty" name="add_faculty" action="${pageContext.request.contextPath}/entity/save/save_faculty.jsp">
                <h1>Add Faculty</h1>
                <div class="form-group">
                    <label>Faculty Code</label>
                    <input type="text" name="faculty_code" placeholder="Enter faculty code" class="form-control">
                </div>
                <div class="form-group">
                    <label>Designation</label>
                    <input type="text" name="designation" placeholder="Enter faculty designation" class="form-control">
                </div>
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="faculty_name" placeholder="Enter faculty name" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Save</button>
                <button type="reset" class="btn btn-warning">Clear</button>
            </form>
        </div>

        <div class="col-md-9">        
            <h1>Faculty</h1>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th style="width: 10%">ID</th>
                        <th style="width: 20%">Faculty Code</th>
                        <th style="width: 10%">Designation</th>
                        <th style="width: 40%">Name</th>
                        <th style="width: 20%">Action</th>
                    </tr>
                    <% FacultyDAO cDAO = new FacultyDAOImpl();
                        for (Faculty c : cDAO.getAll()) {
                    %>
                    <tr>
                        <td><%=c.getId()%></td>
                        <td><%=c.getCode()%></td>
                        <td><%=c.getDesignation()%></td>
                        <td><%=c.getName()%></td>
                        <td>
                            <a href="../edit/edit_faculty.jsp?id=<%=c.getId()%>" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="../delete/delete_faculty.jsp?id=<%=c.getId()%>" class="btn btn-danger"onclick="return confirm('Are you sure?')"> <span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@include file="../../shared/footer.jsp" %>