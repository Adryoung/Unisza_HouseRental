<%-- 
    Document   : StudentHouse
    Created on : 14 Jan 2023, 06:15:48
    Author     : mella
--%>

<%@page import="java.sql.*"%>
<%@page import="connection.db_connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css"/>
        <link rel="stylesheet" href="table.css"/>


        <title>House View</title>
    </head>
    <body>
        <div>

            <a href="StudentHome.jsp">DASHBOARD</a>
            <a href="StudentHouse.jsp">HOUSE</a>
            
            <div class="animation start-owner"></div>
        </div>

        <br> 
        <table border="1" id="customers">
            
            <thead>
            <th>House ID</th>
            <th>Owner Name</th>
            <th>Owner Phone Number</th>
            <th>No Of Room</th>
            <th>Address</th>
            <th>City</th>
            <th>Description</th>
            <th>Price</th>
            <th>Click Here</th>
            <thead>
                <%
                String noMatrik = (String) session.getAttribute("noMatrik");
                db_connection tc = new db_connection();
                Statement st = tc.Connection().createStatement();
                ResultSet rs;

                rs = st.executeQuery("select * from house");
                while (rs.next()) {
                String idHouse = rs.getString("idHouse");

            %>
                <tr>
                    <td><%=rs.getString("idHouse")%></td>
                    <td><%=rs.getString("name")%></td><!-- <td></td> -->
                    <td><%=rs.getString("noTel")%></td>
                    <td><%=rs.getString("room")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("city")%></td>
                    <td><%=rs.getString("description")%></td>
                    <td><%=rs.getString("price")%></td>
                    <td><a href="BookingForm.jsp?idHouse=<%=idHouse%>">Booking?</a></td>

                </tr>
                <%}%>
        </table>
    </body>
</html>
<style>

    body{
        margin: 2em;
        padding: 2px;
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