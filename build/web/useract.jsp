<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

                String username=request.getParameter("username");
   	        String Password=request.getParameter("password");
               
                try {
                
                Connection connection = DbConnection.getconnection();
                        
			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
                        if(rs.next())
			{
                       session.setAttribute("username",username);
                           session.setAttribute("id",rs.getString("id"));
                       
			response.sendRedirect("userhome.jsp?m1=success");
						
			}
			else
			{
			
                         response.sendRedirect("userlogin.jsp?m2=Failed");   
                            
			}

                }
                
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>