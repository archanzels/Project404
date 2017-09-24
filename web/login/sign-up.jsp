<%-- 
    Document   : signup
    Created on : Aug 27, 2017, 8:10:29 AM
    Author     : Ark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/validation.js"></script>

    </head>

    <body>
        <div class="container">
            <div class="col-lg-8">
                <form method="post" action="registration.jsp" id="reg-form" name="reg-form">

                    <h3>Enter the information here</h3>
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" name="fname" value="" placeholder="Enter your first name" class="form-control" >
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" name="lname" value="" placeholder="Enter your last name" class="form-control" >
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" name="email" value="" placeholder="Enter your email" class="form-control" >
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="uname" value="" placeholder="Enter your username" class="form-control" >
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" value="" placeholder="Enter your password"
                               id="password" class="form-control" >
                    </div>
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <input type="password" name="password2" value="" placeholder="Re-enter your password" 
                               id="password2" class="form-control" >
                    </div>
                    <div>
                        <button type="submit" class="btn btn-success" value="submit">Submit</button>
                        <button type="reset" class="btn btn-danger" value="reset">Clear</button>
                    </div>
                </form>
                <div>
                    <h3 class="text-info">Already Registered?</h3>
                    <a href="../index.jsp">
                        <button class="btn btn-primary">Login</button>
                    </a>
                </div>
            </div>
        </div>
    </body>

</html>
