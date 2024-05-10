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
            <a href="userhome.jsp">Home</a>
        </li>

        <li>
            <a href="buymedicine.jsp">Buy Medicine </a>
        </li>
        <li>
            <a href="myorders.jsp">My Orders  </a>
        </li>
        <li>
            <a href="donate.jsp" class="active"> Donate Medicine </a>
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
    	String username = session.getAttribute("username").toString();
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from purchased where username = '"+username+"' ");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
       <center> <table style="width:80%" border="1">
           
  <tr>
    
                   <th bgcolor="pink">  Name</th>
                   <th bgcolor="pink">  Price</th>
                   <th bgcolor="pink"> Manufacture Date</th>
                   <th bgcolor="pink"> Expiry Date </th>
                   <th bgcolor="pink"> Donate </th>
               
                    
     
     </tr>
 <br>

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("price")%></td>
                <td><%=rs.getString("mandt")%></td>
                <td><%=rs.getString("expdt")%></td>
                <td><a href="donate1.jsp?pid=<%=rs.getString("pid")%>&name=<%=rs.getString("name")%>&price=<%=rs.getString("price")%>&mandt=<%=rs.getString("mandt")%>&expdt=<%=rs.getString("expdt")%>"><input type="submit" value="DONATE"></a>
                
                
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