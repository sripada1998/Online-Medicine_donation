
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>  
<%
   
   
    String user = session.getAttribute("username").toString();
    String name = request.getParameter("name");
    String price=request.getParameter("price");
    String mandt=request.getParameter("mandt");
    String expdt=request.getParameter("expdt");
   
  
    try{
       
       Connection con=DbConnection.getconnection();
       PreparedStatement ps = con.prepareStatement("insert into purchased (username, name, price, mandt, expdt) values (?,?,?,?,?)");
       ps.setString(1, user);
       ps.setString(2, name);
       ps.setString(3, price);
       ps.setString(4, mandt);
       ps.setString(5, expdt);
       
      
    
       ps.executeUpdate();
       
response.sendRedirect("buymedicine.jsp?message=success");
out.println("");
}
    catch(Exception e)
    {
        System.out.println(e);
    }
%>

