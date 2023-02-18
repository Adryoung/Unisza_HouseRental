<%-- 
    Document   : UpdateHouse
    Created on : 14 Jan 2023, 13:23:01
    Author     : mella
--%>

<%@page import="java.sql.*"%>
<%@page import="connection.db_connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%//update house
    if (request.getParameter("updt") != null) {

        String noTel = request.getParameter("noTel");
        String address = request.getParameter("address");
        String price = request.getParameter("price");
        String icOwner = request.getParameter("icOwner");
        String room = request.getParameter("room");
        String city = request.getParameter("city");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String idHouse = request.getParameter("idHouse");

        db_connection tc = new db_connection();
        Statement st = tc.Connection().createStatement();
        ResultSet rs;
        int i = st.executeUpdate("update house set name = '" + name + "' , noTel = '" + noTel + "', address = '" + address + "', city = '" + city + "',description = '" + description + "', price = '" + price + "' where idHouse = '" + idHouse + "'");
        if (i > 0) {
            response.sendRedirect("OwnerHouse.jsp");

        } else {
            response.sendRedirect("UpdateHouse.jsp");
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <title>Update House</title>

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
            .start-list, a:nth-child(2):hover~.animation{
                width: 110px;
                left: 100px;
                background-color:#D1D0CE;
            }
            .start-house, a:nth-child(3):hover~.animation{
                width: 100px;
                left: 210px;
                background-color:#708090;
            }
            .start-update, a:nth-child(4):hover~.animation{
                width: 160px;
                left: 310px;
                background-color:#838996;
            }

            .start-back, a:nth-child(5):hover~.animation{
                width: 120px;
                left: 510px;
                background-color:#838996;
            }



        </style>
    </head>
    <body>
        <div>
            <a href="OwnerHome.jsp">DASHBOARD</a>
            <a href="OwnerHouse.jsp">HOUSE LIST</a>
            <a href="AddHouse.jsp">ADD HOUSE</a>
            <a href="UpdateHouse.jsp">UPDATE HOUSE</a>
            <a href="">LOG OUT</a>

            <div class="animation start-update"></div>
        </div>

    <center>
        <br>  
        <div class="card" style="width: 43rem;border-radius: 35px;background-color:#f0f5f5">
            <br>
            <div class="card-body">
                <h1 class="card-title" style="text-align: center"><B>Update House</B></h1><br>
                <form action="" method="post">

                    <table>
                        <%
                            String idHouse = request.getParameter("idHouse");

                            db_connection tc = new db_connection();
                            Statement st = tc.Connection().createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from house where idHouse = '" + idHouse + "' ");
                            while (rs.next()) {


                        %>
                        <tr>
                            <td><b>Owner Name : </b></td>
                            <td><input type="text" name="name" maxlength="50" value="<%=rs.getString("name")%>" required=""></td>
                        </tr>

                        <tr>
                            <td><b>Phone Number :</b></td>
                            <td><input type="number" name="noTel" maxlength="20" value="<%=rs.getString("noTel")%>" required=""></td>
                        </tr>
                        <tr>
                            <td><b>Address: </b></td>
                            <td> <input type=text name="address" maxlength="100" value="<%=rs.getString("address")%>" required=""></td>
                        </tr>

                        <tr>
                            <td><b>City: </b></td>
                            <td> <input type="text" name="city"  maxlength="75" value="<%=rs.getString("city")%>" required=""></td>
                        </tr>



                        <tr>
                            <td><b>Price : (RM)</b></td>
                            <td> <input type="text" name="price" maxlength="5" value="<%=rs.getString("price")%>" required=""></td>
                        </tr>

                        <tr>
                            <td><b>Description: </b></td>
                            <td> <input type=text name="description" maxlength="100" value="<%=rs.getString("description")%>" required=""></td>
                        </tr>
                        <%}%>
                    </table>
                    <br><br>
                    <input type=submit value="Update" class="btn btn-danger" name="updt">
                    <br><br>
                    <input type="reset" value="Reset" class="btn btn-danger" href="" name="reset">

                </form><br></div>
        </div>
    </body>
</html>

<style>
    body{
        margin: 2em;


    }
    .container
    {
        width: 200px;
        height: 350px;
        text-align: left;
        margin: 0 auto;
        margin-top: 100px;

    }

    input[type="text"]{
        margin-top: 20px;
        height: 35px;
        width: 200px;
        font-size: 18px;
        margin-bottom: 20px;
        background-color: #fff;
        padding-left: 40px;

    }

    input[type="number"]{
        margin-top: 9px;
        height: 35px;
        width: 200px;
        font-size: 18px;
        margin-bottom: 20px;
        background-color: #fff;

    }

    .form-input::before{
        content: "\f007";
        font-family: "FontAwesome";
        padding-left: 07px;
        padding-top: 40px;
        position: absolute;
        font-size: 35px;
        color: #2980b9;
    }

    .form-input:nth-child(2)::before{
        content: "\f023";
    }

    #a
    {
        position: fixed;
        top: 55%;
        left: 10%;
    }

</style>