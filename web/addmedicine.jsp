<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
</head>
 <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Added Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Added Failed..!')</script>
 <%
}
%> 
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
            <a href="adminhome.jsp" >Home</a>
        </li>
        <li class="dropdown">
        <a href="#" class="active">Add</a>
       <div class="dropdown_list">
        <a href="addngo.jsp">Add NGO</a>
        <a href="addmedicine.jsp">Add Medicine</a>
        </div>
        </li> 
        <li class="dropdown">
            <a href="#">View</a>
            <div class="dropdown_list">
                <a href="viewngo.jsp">View NGO</a>
                <a href="viewmedicine.jsp">View Medicine</a>
                <a href="viewusers.jsp">View Users</a>
               
            </div>
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
<br><br><br>
<center>
    <div style="box-shadow: 0 0 15px white;width: 400px;border-radius: 20px">
        <br>
    <h2><u>Add Medicine</u></h2>
        <form action="addmedact.jsp" method="post">
          <label for="name"><font color="white">Medicine:</label>
            <input type="text" name="name" class="text" />
            <br><br>
            <label for="name"><font color="white"> Med Price:</label>
            <input type="text" name="medprice" class="text" />
            <br><br>
            <label for="name"><font color="white"> MNF Date:</label>
            <input type ="date" id="name" name="mnfdate" class="text" /> 
           <br><br>
            <label for="name"><font color="white"> EXP Date:</label>
            <input type ="date" id="name" name="expdate" class="text" /> 
             <br><br>
            <input name="submit" type="submit" value="Add" /> 
      </form>
    <br><br><br>
    </div>
</center>
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