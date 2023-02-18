<%-- 
    Document   : owner
    Created on : 8 Jan 2023, 05:40:44
    Author     : mella
--%>
<%@page import="connection.db_connection"%>
<%@page import="java.sql.*"%>
<%
    db_connection tc = new db_connection();
    Statement st = tc.Connection().createStatement();
    ResultSet rs;
%>

<%// ni untuk pendaftaran Owner
    if (request.getParameter("register") != null) {
        String name = request.getParameter("name");
        String icOwner = request.getParameter("icOwner");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String noTel = request.getParameter("noTel");
        String pass = request.getParameter("pass");
        try{
        int i = st.executeUpdate("insert into owner (name,icOwner,email,address,notel,pass) values ('" + name + "','" + icOwner + "','" + email + "','" + address + "','" + noTel + "','" + pass + "') ");
        if (i > 0) {
            
            %>
            <script>
                alert("Register Succedful");
                window.location = "OwnerIndex.jsp";
            </script>
<%

        } else {
            
        }
} catch (Exception e) {
    request.setAttribute("error", e);
%>
<script>
    alert("Register is already");
    window.location = "OwnerRegister.jsp";
</script>
<%
        }

    }
%>



<%// untuk log in Owner
    if (request.getParameter("login") != null) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        rs = st.executeQuery("select * from owner where name = '" + name + "' and email = '" + email + "' and pass = '" + pass + "'");
        if (rs.next()) {
            session.setAttribute("icOwner",rs.getString("icOwner"));
%>
<script>
    alert("Login Succesful");
    window.location = "OwnerHome.jsp";
</script>
<%
        } else {
            %>
<script>
    alert("Please insert the correct detail");
    window.location = "OwnerIndex.jsp";
</script>
<%
        }


    }
%>


<%
    //update detail owner
    if (request.getParameter("update") != null) {

        String name = request.getParameter("name");
        String icOwner = request.getParameter("icOwner");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String noTel = request.getParameter("noTel");
        String pass = request.getParameter("pass");
        int i = st.executeUpdate("update owner set name = '" + name + "' , icOwner = '" + icOwner + "', email = '" + email + "', address = '" + address + "',noTel = '" + noTel + "', pass = '" + pass + "' where icOwner = '" + icOwner + "'");
        if (i > 0) {
            response.sendRedirect("OwnerIndex.jsp");

        } else {
            response.sendRedirect("OwnerRegister.jsp");
        }
    }
%>



<%// ni untuk tambah rumah
    if (request.getParameter("add") != null) {
        String noTel = request.getParameter("noTel");
        String address = request.getParameter("address");
        String price = request.getParameter("price");
        String icOwner = request.getParameter("icOwner");
        String room = request.getParameter("room");
        String city = request.getParameter("city");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int i = st.executeUpdate("insert into house (icOwner,name,noTel,room,address,city,description,price) values ('"+icOwner+"','"+name+"','" + noTel + "','"+ room +"','" + address + "','" + city + "','"+description+"','"+price+"') ");
        if (i > 0) {
            %>
            <script>
                alert("add house succedful");
                window.location="OwnerHouse.jsp";
            </script>
<%

        } else {
             %>
            <script>
                alert("add house fail");
                window.location="AddHouse.jsp";
            </script>
<%
        }
    }
%>


