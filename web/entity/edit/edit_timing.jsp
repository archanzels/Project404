<%-- 
    Document   : edit_classroom
    Created on : Aug 31, 2017, 12:46:40 PM
    Author     : Ark
--%>
<%@page import="entity.Timing"%>
<%@page import="entity.dao.TimingDAO"%>
<%@page import="entity.dao.impl.TimingDAOImpl"%>
<%@include file="../../shared/header.jsp" %>
<%
    TimingDAO cDAO = new TimingDAOImpl();
    int id = Integer.parseInt(request.getParameter("id"));
    Timing c = cDAO.getById(id);
%>


<div class="container-fluid background">
    <div class="col-md-3">
        <form method="post" id="add_timing" name="add_timing" action="${pageContext.request.contextPath}/entity/save/save_timing.jsp">
            <h1>Add Timing</h1>
            <div class="form-group">
                <label>First Lecture</label>
                <input type="text" name="first" value="<%=c.getFirst()%>" required="" class="form-control">
            </div>
            <div class="form-group">
                <label>Second Lecture</label>
                <input type="text" name="second" value="<%=c.getSecond()%>" required="" class="form-control">
            </div>
            <div class="form-group">
                <label>Third Lecture</label>
                <input type="text" name="third" value="<%=c.getThird()%>" required="" class="form-control">
            </div>
            <div class="form-group">
                <label>Fourth Lecture</label>
                <input type="text" name="fourth" value="<%=c.getFourth()%>" required="" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Save</button>
            <button type="reset" class="btn btn-warning">Clear</button>
        </form>
    </div>
