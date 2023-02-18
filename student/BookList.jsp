<%-- 
    Document   : BookList
    Created on : 14 Jan 2023, 08:24:29
    Author     : mella
--%>

<%@page import="connection.db_connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>House Rental Management System</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <style>

            table{
                margin: 4em ;
                width:50%;
                height: 30%;
                color: #98AFC7;
                font-family: monospace;
                font-size: 15px;
                text-align: left;
                border-color: black;
                border-style: solid;
            }
            #customers {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                text-align: center;
                width: 85%;
                height: 30%;
            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even){
                background-color: #f2f2f2;
            }

            #customers tr:hover {
                background-color: #ddd;
            }

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #3c3c3c;
                color: white;
            }
            .btn-primary{

                position: absolute;
                top: 18%;
                transform: translate(50%,40%);


            }
        </style>

    </head>
    <body>
        <div>

            <a href="StudentHome.jsp">DASHBOARD</a>
            <a href="BookList.jsp">BOOKING LIST</a>
            <a href="">LOG OUT</a>

            <div class="animation start-booking"></div> 

            <br>
            <table border="1" id="customers">
                <%
                String noMatrik= (String) session.getAttribute("noMatrik");
                db_connection tc = new db_connection();
                Statement st = tc.Connection().createStatement();
                ResultSet rs;

                rs = st.executeQuery("select * from student JOIN booking ON student.noMatrik=booking.noMatrik");
                while (rs.next()) {
                String idBooking=rs.getString("idBooking");
                
            %>
                <thead>
                <th>Name</th>
                <th>Matric Number</th>
                <th>Phone Number</th>
                <th>Rental Date Start</th>
                <th>Rental Date End</th>
                <th>Period</th>
                <th>Click Here</th>
                </thead>
                
                <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("noMatrik")%></td>
                <td><%=rs.getString("noTel")%></td>
                <td><%=rs.getString("dateStart")%></td>
                <td><%=rs.getString("dateEnd")%></td>
                <td><%=rs.getString("Period")%></td>
                <td><a href="UpdateBookingForm.jsp?idBooking=<%=idBooking%>">Update?</a></td>
                </tr>
                <%}%>
            </table>

        </div>
    </body>
</html>
<style>
    body{
        margin: 3em;
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
        height: 25%;
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
    .start-booking , a:nth-child(2):hover~.animation{
        width: 110px;
        left: 100px;
        background-color:#D1D0CE;
    }
    .start-back ,a:nth-child(3):hover~.animation{
        width: 100px;
        left: 210px;
        background-color:#708090;
    }
</style>