<%-- 
    Document   : edit_classroom
    Created on : Aug 31, 2017, 12:46:40 PM
    Author     : Ark
--%>
<%@page import="entity.Faculty"%>
<%@page import="entity.dao.impl.FacultyDAOImpl"%>
<%@page import="entity.dao.FacultyDAO"%>
<%@page import="entity.Subject"%>
<%@page import="entity.dao.SubjectDAO"%>
<%@page import="entity.dao.impl.SubjectDAOImpl"%>
<%@include file="../../shared/header.jsp" %>
<%
    SubjectDAO cDAO = new SubjectDAOImpl();
    int id = Integer.parseInt(request.getParameter("id"));
    Subject c = cDAO.getById(id);
%>


<div class="container-fluid background">
    <div class="col-md-3">
        <form method="post" id="add_subject" name="add_subject" action="${pageContext.request.contextPath}/entity/save/save_subject.jsp">
            <h1>Add Subject</h1>
            <div class="form-group">
                <label>Subject Code</label>
                <input type="text" name="subject_code" value="<%=c.getSubject_code()%>" class="form-control">
            </div>
            <div class="form-group">
                <label>Subject Name</label>
                <input type="text" name="subject_name" value="<%=c.getSubject_name()%>" class="form-control">
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
            <input type="hidden" name="id" value="<%=c.getId()%>">
            <button type="submit" class="btn btn-success">Save</button>
            <button type="reset" class="btn btn-warning">Clear</button>
        </form>
    </div>
