<%-- 
    Document   : AddHouse
    Created on : 13 Jan 2023, 06:05:06
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
            .start-update, a:nth-child(3):hover~.animation{
                width: 100px;
                left: 210px;
                background-color:#708090;
            }
            .start-house, a:nth-child(4):hover~.animation{
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

    <title>ADD HOUSE</title>
    <body>

        <div>

            <a href="OwnerHome.jsp">DASHBOARD</a>
            <a href="OwnerHouse.jsp">HOUSE LIST</a>
            <a href="AddHouse.jsp">ADD HOUSE</a>
            <a href="">LOG OUT</a>

            <div class="animation start-house"></div> 


        </div>
    <center>
        <br>
        <div class="card" style="width: 43rem;border-radius: 35px;background-color:#f0f5f5">
            <br>
            <div class="card-body">
                <h1 class="card-title" style="text-align:center"><B>Add House</B></h1><br>
                <form  action="owner.jsp" method="post">

                    <table>
                        <%
                String icOwner = (String) session.getAttribute("icOwner");
                db_connection tc = new db_connection();
                Statement st = tc.Connection().createStatement();
                ResultSet rs;

                rs = st.executeQuery("select * from owner where icOwner = '" + icOwner + "' ");
                while (rs.next()) {
                
                
            %>
                        <tr>
                        <input type="hidden" name="icOwner" value="<%=rs.getString("icOwner")%>">
                            <td><b>Owner Name : </b></td>
                            <td> <input type=text name="name"  maxlength="50" value="<%=rs.getString("name")%>" required=""></td>
                        </tr>
                        <tr>
                            <td><b>Phone Number : </b></td>
                            <td> <input type=number name="noTel" maxlength="20" value="<%=rs.getString("noTel")%>" required=""></td>
                        </tr>
                        <tr>
                            <td><b>No Of Room : </b></td>
                            <td> <input type=number name="room" maxlength="20" required=""></td>
                        </tr>


                        <tr>
                            <td><b>City: </b></td>
                            <td> <input type="text" name="city"  maxlength="75" required=""></td>
                        </tr>
                        <tr>
                            <td><b>Address: </b></td>
                            <td> <input type=text name="address" maxlength="100" required=""></td>
                        </tr>
                        
                        <tr>
                            <td><b>Price : (RM) </b></td>
                            <td> <input type=number name="price" maxlength="5" required=""></td>
                        </tr>
                        
                        
                        
                        <tr>
                            <td><b>Description: </b></td>
                            <td> <input type=text name="description" maxlength="100" required=""></td>
                        </tr>
                        <%}%>
                    </table>
                    <br><br>
                    <input type=submit value="Add" class="btn btn-danger" name="add">
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