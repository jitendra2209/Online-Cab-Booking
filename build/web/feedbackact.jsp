<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    String user = session.getAttribute("user").toString();
    String drivername = request.getParameter("drivername"); 
    String vno = request.getParameter("vno");
    String feedback = request.getParameter("feedback");
    
    try{

    PreparedStatement ps=connection.prepareStatement("insert into feedback(username,drivername,vehicleno,feedback) values(?,?,?,?)");

    ps.setString(1,user);
    ps.setString(2,drivername);
    ps.setString(3,vno);
    ps.setString(4,feedback);
      
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("viewmybookings.jsp?msg2=Success");
    }
    else{
    response.sendRedirect("viewmybookings.jsp?m2=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>