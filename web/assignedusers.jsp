<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
</head>
 <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Medicine Collected  Sucessfully!')</script>

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
            <a href="executivehome.jsp">Home</a>
        </li>

        <li>
            <a href="assignedusers.jsp" class="active">View Assigned Users</a>
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
    	String executive = session.getAttribute("username").toString();
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from user where executive = '"+executive+"'");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center> <table style="width:80%" border="1">
           
  <tr>
    
                <th bgcolor="pink">  Username </th>
                   <th bgcolor="pink">  Email</th>
                   <th bgcolor="pink">  Address</th>
                   <th bgcolor="pink"> Mobile</th>
                   <th bgcolor="pink"> Collect Medicine </th>
               
                    
     
     </tr>
 <br>

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString("username")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("address")%></td>
                <td><%=rs.getString("cnumber")%></td>
                <td><a href="collect.jsp?user=<%=rs.getString("username")%>&email=<%=rs.getString("email")%>&address=<%=rs.getString("address")%>&executive=<%=rs.getString("executive")%>"><button type="button">Collect</button></a></td>
                
           
             
                
                
                
                                
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