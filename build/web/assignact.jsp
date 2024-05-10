<%@page import="Database.Mail"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String username = request.getParameter("username");
            String executive = request.getParameter("executive");                      
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String cnumber = request.getParameter("cnumber");
           
               
            				
            try {
						
		String msg ="Executive Name : "+executive+"\nMessage :"+"Assigned Successfully";
                
                
            Connection connection = DbConnection.getconnection();
            PreparedStatement ps=connection.prepareStatement("update user set executive = '"+executive+"',status='Assigned' where username='"+username+"'");
            
            int x=ps.executeUpdate();
            if(x>0)
            {

                Mail m= new Mail();
                m.secretMail(msg, email,email);
                
                response.sendRedirect("viewuser.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("viewuser.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          