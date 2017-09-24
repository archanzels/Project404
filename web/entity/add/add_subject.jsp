<%-- 
    Document   : addsubject
    Created on : Aug 31, 2017, 11:53:23 AM
    Author     : Ark
--%>

<%@page import="entity.Faculty"%>
<%@page import="entity.dao.impl.FacultyDAOImpl"%>
<%@page import="entity.dao.FacultyDAO"%>
<%@page import="entity.dao.FacultyDAO"%>
<%@page import="entity.Subject"%>
<%@page import="entity.dao.impl.SubjectDAOImpl"%>
<%@page import="entity.dao.SubjectDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../../shared/header.jsp" %>

<div class="container-fluid background">
    <div class="row">
        <!--Form to add subject-->
        <div class="col-md-3">
            <form method="post" id="add_subject" name="add_subject" action="${pageContext.request.contextPath}/entity/save/save_subject.jsp">
                <h1>Add Subject</h1>
                <div class="form-group">
                    <label>Subject Code</label>
                    <input type="text" name="subject_code" placeholder="Enter subject code" class="form-control">
                </div>
                <div class="form-group">
                    <label>Subject Name</label>
                    <input type="text" name="subject_name" placeholder="Enter subject name" class="form-control">
                </div>
                <div class="form-group">
                    <label>Subject Type</label><br>
                    <label class="radio-inline">
                        <input type="radio" name="subject_type" value="true" >Compulsory</input>
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="subject_type" value="false" >Elective</input>
                    </label>
                </div>
                <div class="form-group">
                    <label>Teacher</label>
                    <select name="faculty" class="form-control" required="required">
                        <% FacultyDAO fDAO = new FacultyDAOImpl();
                            for (Faculty f : fDAO.getAll()) {
                        %>
                        <option value="<%=f.getId()%>"><%=f.getName()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <button type="submit" class="btn btn-success">Save</button>
                <button type="reset" class="btn btn-warning">Clear</button>
            </form>
        </div>

        <!--Already available data-->
        <div class="col-md-9">        
            <h1>Subject</h1>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th style="width: 10%">ID</th>
                        <th style="width: 15%">Subject Code</th>
                        <th style="width: 25%">Name</th>
                        <th style="width: 5%">Type</th>
                        <th style="width: 25%">Teacher</th>
                        <th style="width: 20%">Action</th>
                    </tr>
                    <% SubjectDAO cDAO = new SubjectDAOImpl();
                        for (Subject c : cDAO.getAllData()) {
                    %>
                    <tr>
                        <td><%=c.getId()%></td>
                        <td><%=c.getSubject_code()%></td>
                        <td><%=c.getSubject_name()%></td>
                        <%String x = (c.getSubject_type() ? "Compulsory" : "Elective");%>
                        <td><%=x%></td>
                        <td><%=c.getFac().getName()%></td>
                        <td>
                            <a href="../edit/edit_subject.jsp?id=<%=c.getId()%>" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="../delete/delete_subject.jsp?id=<%=c.getId()%>" class="btn btn-danger"onclick="return confirm('Are you sure?')"> <span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@include file="../../shared/footer.jsp" %>