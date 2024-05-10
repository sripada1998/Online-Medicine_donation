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
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Boked Sucess!')</script>

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
            <a href="userhome.jsp">Home</a>
        </li>

        <li>
            <a href="buymedicine.jsp"  class="active">Buy Medicine </a>
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
    </ul>
</nav>
<br>
<h2>Buy Medicine</h2>
<center>
    <table>
        <tr>
                  
            <th>Name</th>
             <th>Price</th>            
              <th>M Date </th>            
               <th>EXP Date</th>
               <th>Buy Med</th>     
        </tr>
        <%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>   

            <center>
                
                
                
              
    <%


    
try{ 
    						
        Connection con = DbConnection.getconnection();
        PreparedStatement pst=con.prepareStatement("select * from medicine");    
        
	ResultSet rs=pst.executeQuery();
        %>
         
    
      
 

<%
       
   while(rs.next()){
     
            %><tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><a href="buymedicine1.jsp?name=<%=rs.getString(1)%>&price=<%=rs.getString(2)%>&mandt=<%=rs.getString(3)%>&expdt=<%=rs.getString(4)%>"><input type="submit" value="BUY"></a></td>
                       
                       
             
                
                
                
                                
        </tr>
       
        
        
      <%  }
%></table></center>

<%}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
    
      
    
            
            
      
            }
%>
    </table>
</center>
<br><br><br><br><br><br><br><br><br><br>
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