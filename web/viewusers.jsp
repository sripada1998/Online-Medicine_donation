<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
</head>
 <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Assigned Sucessfully!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert(' Failed..!')</script>
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
        <a href="#">Add</a>
       <div class="dropdown_list">
        <a href="addngo.jsp">Add NGO</a>
        <a href="addmedicine.jsp">Add Medicine</a>
        </div>
        </li> 
        <li class="dropdown">
            <a href="#" class="active">View</a>
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
<br><br>
<center>
    <%
    
try{ 
    						
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from user");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
     <h3> View Users</h3>
       <center> <table style="width:30%" border="1">
             
                   
           
  <tr>
    
    
                <th bgcolor="pink">  Username </th>
                   <th bgcolor="pink">  Email</th>
                   <th bgcolor="pink">  Address</th>
                   <th bgcolor="pink"> Mobile</th>
                 
               
                    
     
     </tr>
 <br>

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString("username")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("address")%></td>
                <td><%=rs.getString("cnumber")%></td>
                
           
             
                
                
                
                                
        </tr>
       
        
        
      <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
    
      
    
</center>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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