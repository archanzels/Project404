<%-- 
    Document   : save_classroom
    Created on : Aug 31, 2017, 12:09:10 PM
    Author     : Ark
--%>

<%@page import="entity.dao.FacultyDAO"%>
<%@page import="entity.dao.impl.FacultyDAOImpl"%>
<%@page import="entity.Faculty"%>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        Faculty f = new Faculty();
        FacultyDAO fDAO = new FacultyDAOImpl();
        f.setCode(request.getParameter("faculty_code"));
        f.setDesignation(request.getParameter("designation"));
        f.setName(request.getParameter("faculty_name"));
        if (request.getParameter("id") == null) {
            fDAO.insert(f);
        } else {
            int id = Integer.parseInt(request.getParameter("id"));
            f.setId(id);
            fDAO.update(f);
        }
        response.sendRedirect("../add/add_faculty.jsp");
    }
%>