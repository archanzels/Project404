<%-- 
    Document   : logout
    Created on : Sep 4, 2017, 6:38:11 PM
    Author     : Ark
--%>
<%
    session.setAttribute("userid", null);
    session.invalidate();
    response.sendRedirect("../index.jsp");
%>