<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Login Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Item Failed..!')</script>
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
            <a href="adminhome.jsp" class="active">Home</a>
        </li>
        <li class="dropdown">
        <a href="#">Add</a>
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
</nav><center>
    <h1 style="margin-top: 7cm">Welcome Admin</h1>
</center>
<!-- Main Footer -->
<footer class="main-footer" style="margin-bottom:0;">
    <p>Developed & Maintained by
        <a href="https://www.1000projects.com/" target="_blank">
            <i class="fa fa-user-circle"></i> 1000 Projects
        </a>
    </p>
</footer>
</body>
</html>