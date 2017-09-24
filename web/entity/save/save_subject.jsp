<%-- 
    Document   : save_classroom
    Created on : Aug 31, 2017, 12:09:10 PM
    Author     : Ark
--%>

<%@page import="entity.Faculty"%>
<%@page import="entity.dao.SubjectDAO"%>
<%@page import="entity.dao.impl.SubjectDAOImpl"%>
<%@page import="entity.Subject"%>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        int fid = Integer.parseInt(request.getParameter("faculty"));
        Subject f = new Subject();
        SubjectDAO fDAO = new SubjectDAOImpl();
        f.setSubject_code(request.getParameter("subject_code"));
        f.setSubject_name(request.getParameter("subject_name"));
        f.setSubject_type(Boolean.parseBoolean(request.getParameter("subject_type")));
        f.setFac(new Faculty(fid));
        if (request.getParameter("id") == null) {
            fDAO.insert(f);
        } else {
            int id = Integer.parseInt(request.getParameter("id"));
            f.setId(id);
            fDAO.update(f);
        }
        response.sendRedirect("../add/add_subject.jsp");
    }
%>