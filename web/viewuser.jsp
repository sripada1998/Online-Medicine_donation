<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Donation System Portal</title>
    <link rel="stylesheet" href="style.css">
    <style>
        input[type='submit']{
    background-color: teal;
    color: white;
    border: none;
    font-size: 10px;
    padding: 10px 25px;
    border-radius: 10px;
    outline: none;
    font-weight: 900;
}
input[type='submit']:hover{
    box-shadow: 0 0 15px white;
    background-color: #00aeef;
}
    </style>
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
<center>
    <%
    
try{ 
    						
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from user");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center> <table style="width:80%" border="1">
           
  <tr>
    
                <th>Username </th>
                   <th>Email</th>
                   <th>Address</th>
                   <th>Mobile</th>
                   <th>Assign Executive</th>
               
                    
     
     </tr>
 <br>

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString("username")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("address")%></td>
                <td><%=rs.getString("cnumber")%></td>
                <td><a href="assign.jsp?user=<%=rs.getString("username")%>&email=<%=rs.getString("email")%>&address=<%=rs.getString("address")%>&cnumber=<%=rs.getString("cnumber")%>"><input type="submit" value="ASSIGN"></a></td>
                
           
             
                
                
                
                                
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