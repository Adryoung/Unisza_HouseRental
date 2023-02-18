<%-- 
    Document   : delete
    Created on : 13 Jan 2023, 05:46:57
    Author     : mella
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<%
    String idHouse = request.getParameter("idHouse");
    Connection con ;
    PreparedStatement pst ;
    ResultSet rs ;
    
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
pst = con.prepareStatement("delete from house where idHouse = ?");
pst.setString(1, idHouse);
 pst.executeUpdate(); 
%>
            
<script> 
    alert("Record Deleted SuccessFully");
    window.location="OwnerHouse.jsp";
</script>

<html> 
    <body> 
        <div align="left">
            <br><br> 
            <p><a href ="index.jsp"><Click Back</a></p>
        </div>
    </body>
</html>
