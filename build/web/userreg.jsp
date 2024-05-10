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
    
<script>alert('Login Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Registration Failed..!')</script>
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
            <a href="index.html" >Home</a>
        </li>

        <li>
            <a href="adminlogin.jsp">Admin</a>
        </li>
        <li>
            <a href="executivelogin.jsp">Executive</a>
        </li>
        <li>
            <a href="userlogin.jsp" class="active">User</a>
        </li>
        <li>
            <a href="ngo.jsp" >NGO</a>
            
        </li>
      
        
    </ul>
</nav>
<div class="form-div animated flip">
    <img src="img/user.png">
    <h2>Register Here</h2>
    <form action="userregact.jsp" method="post">
        <input type="text" placeholder="Name" name="username" required="" autocomplete="off">
        <br>
        <input type="password" placeholder="Password" title="Enter Valid Password" name="password" required="" autocomplete="off">
        <br>
        <input type="email" placeholder="E-mail Id" name="email" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Location" name="address" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Contact No" name="cnumber" pattern="[0-9]{10}" title="Indian Number Only(Max 10 Digit)" autocomplete="off">
        <br>
        <br>
        <input type="submit" value="Register">
        <br>
        <br>
    </form>
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