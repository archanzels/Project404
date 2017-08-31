<%-- 
    Document   : classroom
    Created on : Aug 28, 2017, 1:56:59 PM
    Author     : Ark
--%>

<%@page import="entity.Classroom"%>
<%@page import="entity.dao.impl.ClassroomDAOImpl"%>
<%@page import="entity.dao.ClassroomDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Classroom</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <h1>Classroom</h1>
        <a href="${pageContext.request.contextPath}/entity/add/add_classroom.jsp">Add</a>
        <div class ="container">
            <table class="table table-bordered">
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
                        <a href="edit/edit_classroom.jsp?id=<%=c.getId()%>" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="delete/delete_classroom.jsp?id=<%=c.getId()%>" class="btn btn-danger"onclick="return confirm('Are you sure?')"> <span class="glyphicon glyphicon-trash"></span></a>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
