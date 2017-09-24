<%-- 
    Document   : addtiming
    Created on : Aug 31, 2017, 11:53:23 AM
    Author     : Ark
--%>

<%@page import="entity.Timing"%>
<%@page import="entity.dao.impl.TimingDAOImpl"%>
<%@page import="entity.dao.TimingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../../shared/header.jsp" %>

<div class="container-fluid background">
    <div class="row">
        <div class="col-md-3">
            <form method="post" id="add_timing" name="add_timing" action="${pageContext.request.contextPath}/entity/save/save_timing.jsp">
                <h1>Add Timing</h1>
                <div class="form-group">
                    <label>First Lecture</label>
                    <input type="text" name="first" placeholder=" e.g. 6:15-7:35" required="" class="form-control">
                </div>
                <div class="form-group">
                    <label>Second Lecture</label>
                    <input type="text" name="second" placeholder=" e.g. 6:15-7:35" required="" class="form-control">
                </div>
                <div class="form-group">
                    <label>Third Lecture</label>
                    <input type="text" name="third" placeholder=" e.g. 6:15-7:35" required="" class="form-control">
                </div>
                <div class="form-group">
                    <label>Fourth Lecture</label>
                    <input type="text" name="fourth" placeholder=" e.g. 6:15-7:35" required="" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Save</button>
                <button type="reset" class="btn btn-warning">Clear</button>
            </form>
        </div>

        <div class="col-md-9">        
            <h1>Timing</h1>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th style="width: 5%">ID</th>
                        <th style="width: 20%">First</th>
                        <th style="width: 20%">Second</th>
                        <th style="width: 20%">Third</th>
                        <th style="width: 20%">Fourth</th>
                        <th style="width: 15%">Action</th>
                    </tr>
                    <% TimingDAO cDAO = new TimingDAOImpl();
                        for (Timing c : cDAO.getAll()) {
                    %>
                    <tr>
                        <td><%=c.getId()%></td>
                        <td><%=c.getFirst()%></td>
                        <td><%=c.getSecond()%></td>
                        <td><%=c.getThird()%></td>
                        <td><%=c.getFourth()%></td>
                        <td>
                            <a href="../edit/edit_timing.jsp?id=<%=c.getId()%>" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>
                            <a href="../delete/delete_timing.jsp?id=<%=c.getId()%>" class="btn btn-danger"onclick="return confirm('Are you sure?')"> <span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@include file="../../shared/footer.jsp" %>