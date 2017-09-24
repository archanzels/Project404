<%-- 
    Document   : header
    Created on : Sep 4, 2017, 5:23:18 PM
    Author     : Ark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Routine Management System</title>

        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assets/css/theme.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js" type="text/javascript"></script>

    </head>
    <body>    
        <%
            try {
                response.setHeader("Cache-Control", "no-cache");
                response.setHeader("Cache-Control", "no-store");
                response.setHeader("Pragma", "no-cache");
                response.setDateHeader("Expires", 0);
                if (session.getAttribute("userid") == null) {
                    response.sendRedirect("index.jsp");
                } else {
                }
            } catch (Exception ex) {
                out.println(ex);
            }
        %>
        <div class='container-fluid'>
            <nav class="navbar brand">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand brand" href="${pageContext.request.contextPath}/homepage.jsp">Home</a>
                    </div>
                    <ul class="nav navbar-nav nav-pills">
                        <li><a href="${pageContext.request.contextPath}/entity/add/add_classroom.jsp" class="brand">Classroom</a></li>
                        <li><a href="${pageContext.request.contextPath}/entity/add/add_faculty.jsp" class="brand">Faculty</a></li>
                        <li><a href="${pageContext.request.contextPath}/entity/add/add_subject.jsp" class="brand">Subjects</a></li>
                        <li><a href="${pageContext.request.contextPath}/entity/add/add_timing.jsp" class="brand">Timing</a></li>
                        <li><a href="${pageContext.request.contextPath}/entity/routine.jsp" class="brand">Schedule</a></li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right nav-pills">
                        <li><a href="" class='brand'><span class='glyphicon glyphicon-user'></span><%=session.getAttribute("userid")%></a></li>
                        <li><a href="${pageContext.request.contextPath}/login/sign-up.jsp" class="brand"><span class="glyphicon glyphicon-plus-sign"></span>Add User</a></li>
                        <li><a href="${pageContext.request.contextPath}/login/logout.jsp" class="brand"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                    </ul>
                </div>
            </nav>
