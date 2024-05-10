<%@page import="Database.Mail"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String username = request.getParameter("user");
            String executive = request.getParameter("executive");                      
            String email = request.getParameter("email");
            String address = request.getParameter("address");
           
               
            				
            try {
						
		
            Connection connection = DbConnection.getconnection();
            PreparedStatement ps=connection.prepareStatement("update user set status='Collected' where username='"+username+"' and executive='"+executive+"'");
            
            int x=ps.executeUpdate();
            if(x>0)
            {

                
                response.sendRedirect("assignedusers.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("assignedusers.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          