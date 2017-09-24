<%-- 
    Document   : login
    Created on : Aug 27, 2017, 7:49:20 AM
    Author     : Ark
--%>
<%@ page import ="java.sql.*" %>

<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", null);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("../homepage.jsp");
    } else {
        out.println("Invalid password <a href='../index.jsp'>try again</a>");
    }
%>
<%--
<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("password");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login",
            "root", null);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        {
            if (userid.equals(rs.getString("uname")) && pwd.equals(rs.getString("pass"))) {
                session.setAttribute("userid", userid);
                response.sendRedirect("../homepage.jsp");
            }
        }
    } else {
        session.invalidate();
        request.setAttribute("errorMessage", "Invalid username or password");
        RequestDispatcher rd = request.getRequestDispatcher("../index.jsp");
        rd.forward(request, response);
    }

%>
--%>