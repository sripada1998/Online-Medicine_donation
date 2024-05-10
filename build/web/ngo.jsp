<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="animate.css">
</head>


<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Registration Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Login Failed..!')</script>
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
<nav >
   <ul>
        <li>
            <a href="index.html" >Home</a>
        </li>

        <li>
            <a href="adminlogin.jsp">Admin</a>
        </li>
        <li>
            <a href="executivelogin.jsp">Executive</a>
        </li>
        <li>
            <a href="userlogin.jsp">User</a>
        </li>
        <li>
            <a href="ngo.jsp" class="active" >NGO</a>   
        </li>  
    </ul>
</nav>
<br><br><br>
<!-- Login Form -->
<div class="form-div animated fadeInUpBig">
    <img src="img/user.png">
    <h2>NGO Login</h2>
    <form action="ngoact.jsp" method="post">
        <input type="text" placeholder="Username" name="username" required="" autocomplete="off">
        <br>
        <input type="password" placeholder="Password" name="password" required="">
        <br>
        <br>
        <input type="submit" value="Login">
    </form>
    <br>
</div>
<br><br>
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