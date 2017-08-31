<%-- 
    Document   : addclassroom
    Created on : Aug 31, 2017, 11:53:23 AM
    Author     : Ark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Classroom</title>
    </head>
    <body>
        <h1>Add Classroom</h1>

        <form method="post" id="add_classroom" name="add_classroom" action="${pageContext.request.contextPath}/entity/save/save_classroom.jsp">
            <div class="form-group">
                <label>Room Code</label>
                <input type="text" name="code" placeholder="Enter room code" class="form-control">
            </div>
            <div class="form-group">
                <label>Description</label>
                <input type="text" name="description" placeholder="Enter room description" class="form-control">
            </div>
            <div class="form-group">
                <label>Room Type</label>
                <input type="radio" name="room_type" value="true" class="form-control">Class</input>
                <input type="radio" name="room_type" value="false" class="form-control">Lab</input>
            </div>
            <button type="submit">Save</button>
        </form>

    </body>
</html>
