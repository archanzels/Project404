<%-- 
    Document   : index
    Created on : Aug 27, 2017, 7:34:42 AM
    Author     : Ark
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/validation.js"></script>
        <title>Login</title>
    </head>

    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-4">
                    <br/>
                    <form method="post" id='login-form' name='login-form' action="login/login.jsp">
                        <div class="form-group">
                            <input type="text" name="uname" id='uname' class="form-control" 
                                   placeholder="Username">
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" id='password' class="form-control" 
                                   placeholder="Password">
                        </div>
                        <div>
                            <button class="btn btn-success" type="submit" value="login">Login</button>
                            <button class="btn btn-danger" type="reset" value="reset">Reset</button>
                        </div>
                    </form>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
        </div>

    </body>
</html>