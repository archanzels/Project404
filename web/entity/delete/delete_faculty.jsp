<%-- 
    Document   : delete_classroom
    Created on : Aug 31, 2017, 12:42:16 PM
    Author     : Ark
--%>

<%@page import="entity.dao.impl.FacultyDAOImpl"%>
<%@page import="entity.dao.FacultyDAO"%>
<%
    FacultyDAO cDAO = new FacultyDAOImpl();
    if (request.getParameter("id") != null) {
        int id = Integer.parseInt(request.getParameter("id"));
        cDAO.delete(id);
        response.sendRedirect("../add/add_faculty.jsp");
    }
    
%>

