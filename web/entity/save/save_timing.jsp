<%-- 
    Document   : save_classroom
    Created on : Aug 31, 2017, 12:09:10 PM
    Author     : Ark
--%>

<%@page import="entity.dao.TimingDAO"%>
<%@page import="entity.dao.impl.TimingDAOImpl"%>
<%@page import="entity.Timing"%>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        Timing f = new Timing();
        TimingDAO fDAO = new TimingDAOImpl();
        f.setFirst(request.getParameter("first"));
        f.setSecond(request.getParameter("second"));
        f.setThird(request.getParameter("third"));
        f.setFourth(request.getParameter("fourth"));
        if (request.getParameter("id") == null) {
            fDAO.insert(f);
        } else {
            int id = Integer.parseInt(request.getParameter("id"));
            f.setId(id);
            fDAO.update(f);
        }
        response.sendRedirect("../add/add_timing.jsp");
    }
%>