
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
    String did=request.getParameter("pid");
   
  
    try{
       
       Connection con=DbConnection.getconnection();
       PreparedStatement ps = con.prepareStatement("insert into donated (did,username, name, price, mandt, expdt) values (?,?,?,?,?,?)");
       ps.setString(1, did);
       ps.setString(2, user);
       ps.setString(3, name);
       ps.setString(4, price);
       ps.setString(5, mandt);
       ps.setString(6, expdt);
       
      PreparedStatement ps1=con.prepareStatement("delete from purchased where pid='"+did+"'");
      PreparedStatement ps4=con.prepareStatement("update user set status='Donated' where username='"+user+"'");
       ps1.executeUpdate();
       ps.executeUpdate();
       
response.sendRedirect("donate.jsp?message=success");
out.println("");
}
    catch(Exception e)
    {
        System.out.println(e);
    }
%>

