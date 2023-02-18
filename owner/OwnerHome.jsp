<%-- 
    Document   : home
    Created on : 12 Jan 2023, 16:05:24
    Author     : mella
--%>

<%@page import="connection.db_connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="home.css"/>
        <title>Dashboard</title>
    </head>
    <body>
        <div>

            <a href="OwnerHome.jsp">DASHBOARD</a>
            <a href="BookList.jsp">Bookng List</a>
            <a href="LogInStudent.jsp">STUDENT</a>
            <a href="OwnerIndex.jsp">LOG OUT</a>


            <div class="animation start-owner"></div> 

        </div>
        <div class="container" style="margin-top:150px ">
            <h3><b>Welcome Owner
                </b>
            </h3>
            <%
                String icOwner = (String) session.getAttribute("icOwner");
                db_connection tc = new db_connection();
                Statement st = tc.Connection().createStatement();
                ResultSet rs;

                rs = st.executeQuery("select * from owner where icOwner = '" + icOwner + "' ");
                while (rs.next()) {
                
                
            %>
            <br><br>
            <div class="row">
                <div class="col-lg-2">
                    <div class="card colo-md-4" style="width:250px" >
                        <img class="card-img-top" src="https://alliancehomes.com/wp-content/uploads/cute-house-1024x683.jpg" alt="Card image" width="250px;" height="190px;">
                        <div class="card-body"><center>
                                <h4 class="card-title"><b>Houses</b></h4><br>
                                <p class="card-text">This page contains the details of all Houses.</p><br>
                                <a href="OwnerHouse.jsp?icOwner=<%=icOwner%>" class="btn btn-primary">See Details</a></center><br>
                        </div>
                    </div>
                    <br>
                </div>





                <div class="col-lg-3" >
                    <div class="card colo-md-4" style="width:250px" >
                        <img class="card-img-top" src="https://i.pinimg.com/originals/e2/24/eb/e224eb27fd5ff7710d9e6d9d50c2fcab.jpg" alt="Card image" width="250px;" height="190px;">
                        <div class="card-body"><center>
                                <h4 class="card-title"><b>Booking</b></h4><br>
                                <p class="card-text">This page contains the details of all Bookings.</p><br>
                                <a href="ownerhouse.jsp?icOwner=<%=icOwner%>" class="btn btn-primary">See Details</a></center><br>
                        </div>
                    </div>
                    <br>
                </div>


                <div class="col-lg-4" >
                    <div class="card colo-md-4" style="width:250px" >
                        <img class="card-img-top" src="https://i.pinimg.com/originals/e2/24/eb/e224eb27fd5ff7710d9e6d9d50c2fcab.jpg" alt="Card image" width="250px;" height="190px;">
                        <div class="card-body"><center>
                                <h4 class="card-title"><b>Booking</b></h4><br>
                                <p class="card-text">This page contains the details of all Bookings.</p><br>
                                <a href="ownerhouse.jsp?icOwner=<%=icOwner%>" class="btn btn-primary">See Details</a></center><br>
                        </div>
                    </div>
                    <br>
                </div>


            </div>
            <%}%>
        </div>
    </body>
</html>


<style>
    body{
        margin: 0;
        padding: 0;
        font-family: 'Poppins', sans-serif;
        background-image:url('https://www.kentonline.co.uk/_media/img/KW3F55080RFJ5Q0BW1OC.jpg');
    }

    .header{

        min-height: 100vh;

        background-position: center;
        background-size: cover;
        position: relative;
    }

    div{
        position: relative;

        font-size: 0;
    }

    a{
        line-height: 50px;
        height: 100%;
        font-size: 15px;
        display: inline-block;
        position: relative;
        z-index: 1;
        text-decoration: none;
        text-transform: uppercase;
        text-align: center;
        color:azure;
        cursor: pointer;
    }
    .animation {
        position: absolute;
        height: 100%;
        top: 0;
         z-index: 0;
        transition: all .5s ease 0s;
        border-radius: 8px;
    }
    a:nth-child(1){
        width: 100px;
    }
    a:nth-child(2){
        width: 110px;
    }
    a:nth-child(3){
        width: 100px;
    }
    a:nth-child(4){
        width: 160px;
    }
    a:nth-child(5){
        width: 120px;
    }
    .start-home, a:nth-child(1):hover~.animation{
        width: 100px;
        left: 0;
        background-color:#98AFC7;
    }
    .start-owner, a:nth-child(2):hover~.animation{
        width: 110px;
        left: 100px;
        background-color:#D1D0CE;
    }
    .start-student, a:nth-child(3):hover~.animation{
        width: 100px;
        left: 210px;
        background-color:#708090;
    }
    .start-about, a:nth-child(4):hover~.animation{
        width: 160px;
        left: 310px;
        background-color:#838996;
    }


</style>
