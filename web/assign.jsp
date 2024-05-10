<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="animate.css">
</head>
<body>
<!-- Main Header -->
<header class="main-header">
    <img src="img/logo.png" alt="">
    <h1>Online Medicine Donation System Portal</h1>
</header>
<!-- Dropdown Navbar -->
<nav>
    <ul>
        <li>
            <a href="ngohome.jsp">Home</a>
        </li>

        <li>
            <a href="viewuser.jsp"  class="active">View Users </a>
        </li>
        
        
        <li>
            <a href="logout.jsp">Logout</a>
        </li>
    </ul>
</nav>




<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<br><br>

<%
String username = request.getParameter("user");                     
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String cnumber = request.getParameter("cnumber");
            
            Connection connection = DbConnection.getconnection();  
            String query1="select * from executive "; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
%>
<h2>Assign Here</h2>
<center>
    <form action="assignact.jsp" method="post">
        <input type="text" value="<%=username%>" name="username" readonly="" autocomplete="off">
        <br>
        <input type="email" value="<%=email%>" name="email" readonly="" autocomplete="off">
        <br>
        <input type="text" value="<%=address%>" name="address" readonly="" autocomplete="off">
        
        <br>
        <input type="text" value="<%=cnumber%>" name="cnumber" readonly="" autocomplete="off">
        <br>
       
    
    <select id="s1" name="executive" style="width:170px;" required="">
    <option value="">--Select--</option>
    <%
    while(rs.next()){
    %>
    
    <option style="background-color: black"><%=rs.getString("username")%></option>
    <% }%>
    </select>
    
        <br>
        <input type="submit" value="Assign">
        <br>
        <br>
    </form>
</center>
</div>
<!-- Main Footer -->
<footer class="main-footer">
    <p>Developed & Maintained by
        <a href="https://www.1000projects.com/" target="_blank">
            <i class="fa fa-user-circle"></i> 1000 Projects
        </a>
    </p>
</footer>
</body>
</html>