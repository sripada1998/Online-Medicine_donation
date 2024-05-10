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
                        
			String sql="SELECT * FROM orphans where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
                        if(rs.next())
			{
                       session.setAttribute("username",username);
                           
                       
			response.sendRedirect("orphanshome.jsp?m1=success");
						
			}
			else
			{
			
                         response.sendRedirect("orphans.jsp?m2=Failed");   
                            
			}

                }
                
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>