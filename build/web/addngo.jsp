<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="animate.css">
    <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Login Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Login Failed..!')</script>
 <%
}
%> 
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
<!-- Login Form -->
<div class="form-div animated bounceInDown">
    <img src="img/user.png">
    <h2>Add NGO Here</h2>
    <form action="addngoact.jsp" method="post">
        <input type="text" placeholder="Name" name="username" required="" autocomplete="off">
        <br>
        <input type="password" placeholder="Password" name="password" required="" autocomplete="off">
        <br>
        <input type="email" placeholder="E-mail Id" name="email" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Location" name="address" required="" autocomplete="off">
       
        
        <input type="text" placeholder="Contact No" name="cnumber" required="" autocomplete="off">
        <br>
        <br>
        <input type="submit" value="Add">
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