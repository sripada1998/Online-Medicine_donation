<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
    <style>
        nav ul{
    list-style-type: none;
    margin: 0;
    margin-left: 650px;
}
    </style>
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
<!-- Navbar -->
<nav>
    <ul>
        <li>
            <a href="userhome.jsp" class="active">Home</a>
        </li>

        <li>
            <a href="buymedicine.jsp">Buy Medicine </a>
        </li>
        <li>
            <a href="myorders.jsp">My Orders  </a>
        </li>
        <li>
            <a href="donate.jsp"> Donate Medicine </a>
        </li>
        <li>
            <a href="logout.jsp">Logout</a>
        </li>
    </ul>
</nav>
<%
String username = session.getAttribute("username").toString();
%>
<center>
<br><br><br><br><br><br><br><br><br><br><br><h1>Welcome <%=username%></h1>
<br><br><br><br><br><br><br><br><br><br><br></center><!-- Main Footer -->
<footer class="main-footer">
    <p>Developed & Maintained by
        <a href="https://www.1000projects.com/" target="_blank">
            <i class="fa fa-user-circle"></i> 1000 Projects
        </a>
    </p>
</footer>
</body>
</html>