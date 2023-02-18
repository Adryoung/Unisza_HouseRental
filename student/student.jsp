<%-- 
    Document   : student
    Created on : 14 Jan 2023, 14:00:24
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
        String noMatrik = request.getParameter("noMatrik");
        String icStudent = request.getParameter("icStudent");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String noTel = request.getParameter("noTel");
        String pass = request.getParameter("pass");

        int i = st.executeUpdate("insert into student (name,noMatrik ,icStudent,email,address,noTel,pass) values ('" + name + "','" + noMatrik + "','" + icStudent + "','" + email + "','" + address + "','" + noTel + "','" + pass + "') ");
        if (i > 0) {
            response.sendRedirect("StudentWelcome.jsp");

        } else {
            response.sendRedirect("SignUpStudent.jsp");
        }
    }
%>

<%// untuk log in Owner
    if (request.getParameter("login") != null) {
        String name = request.getParameter("name");
        String noMatrik = request.getParameter("noMatrik");
        String pass = request.getParameter("pass");

        rs = st.executeQuery("select * from student where noMatrik = '" + noMatrik + "' and name = '" + name + "' and pass = '" + pass + "'");
        if (rs.next()) {
            session.setAttribute("noMatrik", rs.getString("noMatrik"));
%>
<script>
    alert("Login Succesful");
    window.location = "StudentHome.jsp";
</script>
<%
} else {
%>
<script>
    alert("Please insert the correct detail");
    window.location = "LogInStudent.jsp";
</script>
<%
        }

    }
%>



<%// ni untuk booking
    if (request.getParameter("book") != null) {
        String noMatrik = request.getParameter("noMatrik");
        String idHouse = request.getParameter("idHouse");
        String dateStart = request.getParameter("dateStart");
        String dateEnd = request.getParameter("dateEnd");
        String period = request.getParameter("period");
        try {
            int i = st.executeUpdate("insert into booking (noMatrik,idHouse,dateStart,dateEnd,period) values ('" + noMatrik + "','" + idHouse + "','" + dateStart + "','" + dateEnd + "','" + period + "') ");
            if (i > 0) {

%>
<script>
    alert("Booking Succedful");
    window.location = "StudentHouse.jsp";
</script>
<%    } else {

    }
} catch (Exception e) {
    request.setAttribute("error", e);
%>
<script>
    alert("Booking fail");
    window.location = "BookingForm.jsp";
</script>
<%
        }

    }
%>






