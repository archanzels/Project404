<%-- 
    Document   : homepage
    Created on : Aug 27, 2017, 7:57:13 AM
    Author     : Ark
--%>

<%@include file="shared/header.jsp" %>


<div class='container-fluid homepage'>
    <br/>
    <div class='row'>
        <div class='col-md-6'>
            <div class="jumbotron">
                <form class="form-horizontal" name="" id="" action="">
                    <legend>Generate Schedule</legend>
                    <div class="form-group">
                        <label>Course Name</label>
                        <input class="dropdown form-control">
                    </div>
                    <div class="form-group">
                        <label>Year/Session</label>
                        <input type="text" name="year" placeholder="Example: 2017-2018" required="" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Select Semester</label>
                        <select id="semester" name="semester" class="form-control" required="">
                            <option value="one">1</option>
                            <option value="two">2</option>
                            <option value="three">3</option>
                            <option value="four">4</option>
                            <option value="five">5</option>
                            <option value="six">6</option>
                            <option value="seven">7</option>
                            <option value="eight">8</option>
                        </select>

                    </div>


                </form>
            </div>
        </div>
        <div class='col-md-6'>
            <div class='jumbotron'>
                Timetable
            </div>
        </div>
    </div>
</div>


<%@include file="shared/footer.jsp" %>
