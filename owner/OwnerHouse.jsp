<%-- 
    Document   : OwnerHouse
    Created on : 12 Jan 2023, 15:05:24
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <title>JSP Page</title>
        
        <style>
            
table{
    margin: 10em ;
    width:100%;
    height: 30%;
    color: black;
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

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

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

            <a href="OwnerHome.jsp">DASHBOARD</a>
            <a href="OwnerHouse.jsp">HOUSE LIST</a>
            <a href="AddHouse.jsp">ADD HOUSE</a>
            <a href="">BACK</a>

            <div class="animation start-owner"></div> 


        </div>
     

            <br>
            <table border="1" id="customers">

                <th>House ID</th>
                <th>Owner Name</th>
                <th>Owner Phone Number</th>
                <th>No of rooms</th>
                <th>Address</th>
                <th>City</th>
                <th>Description</th>
                <th>Price</th>
                <th>Edit</th>
                <th>Delete</th>
                <%
                String icOwner = (String) session.getAttribute("icOwner");
                db_connection tc = new db_connection();
                Statement st = tc.Connection().createStatement();
                ResultSet rs;

                rs = st.executeQuery("select * from house where icOwner = '" + icOwner + "' ");
                while (rs.next()) {
                String idHouse=rs.getString("idHouse");
                
            %>
                <tr>
                    <td><%=rs.getString("idHouse")%></td>
                    <td><%=rs.getString("name")%></td><!-- 0 -->
                    <td><%=rs.getString("noTel")%></td>
                    <td><%=rs.getString("room")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("city")%></td>
                    <td><%=rs.getString("description")%></td>
                    <td><%=rs.getString("price")%></td><!-- comment -->
                     <td><a href="UpdateHouse.jsp?idHouse=<%=idHouse%>">Edit</a></td>
                    <td><a href="HouseDelete.jsp?idHouse=<%=idHouse%>">Delete</a></td>
                </tr>
<%}%>

        </div>
</table>




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


    .text-box{
        width:50%;
        color:#728FCE;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        text-align: center;
    }
    .text-box h1{
        font-size: 62px;
    }
    .text-box p{
        margin: 8px 0 40px;
        font-size: 20px;
        color:#0C090A;

    }
</style>