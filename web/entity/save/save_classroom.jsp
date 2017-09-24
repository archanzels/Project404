<%-- 
    Document   : save_classroom
    Created on : Aug 31, 2017, 12:09:10 PM
    Author     : Ark
--%>

<%@page import="entity.dao.ClassroomDAO"%>
<%@page import="entity.dao.impl.ClassroomDAOImpl"%>
<%@page import="entity.Classroom"%>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        Classroom c = new Classroom();
        ClassroomDAO cDAO = new ClassroomDAOImpl();
        c.setRoomcode(request.getParameter("code"));
        c.setDescription(request.getParameter("description"));
        c.setRoomtype(Boolean.parseBoolean(request.getParameter("room_type")));
        if (request.getParameter("id") == null) {
            cDAO.insert(c);
        } else {
            int id = Integer.parseInt(request.getParameter("id"));
            c.setId(id);
            cDAO.update(c);
        }
        response.sendRedirect("../add/add_classroom.jsp");
    }
%>