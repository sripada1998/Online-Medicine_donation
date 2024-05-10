<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String name = request.getParameter("name");
             String price = request.getParameter("medprice");
              String mandt = request.getParameter("mnfdate");
               String expdt = request.getParameter("expdate");
          
               
            				
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
                     
            
            
            PreparedStatement ps=connection.prepareStatement("insert into medicine values(?,?,?,?)");
            
            ps.setString(1,name);
            ps.setString(2,price);
            ps.setString(3,mandt);
            ps.setString(4,expdt);

          
                       
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("addmedicine.jsp?m1=success");

            }
             else
            {

                response.sendRedirect("addmedicine.jsp?m2=Failed");   

            }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          