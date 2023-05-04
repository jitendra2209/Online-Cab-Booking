<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@page import="onlinecab.Mail"%>
    <%
     String email = session.getAttribute("email").toString();
     String user = session.getAttribute("user").toString();
    String drivername = request.getParameter("dname"); 
    String vehicleno = request.getParameter("vno");
    String cno = request.getParameter("cno");
    String status = "Cancelled";
     
     Mail m= new Mail();
     String msg ="Vehicle No : "+vehicleno+"\nContact No : "+cno+"\nMessage  : Your Booking Cancellation Successful";
     m.secretMail(msg, drivername, email);
    
    PreparedStatement ps=connection.prepareStatement("update bookings set status = 'Cancelled' where vehicleno = '"+vehicleno+"' and username = '"+user+"'");
    ps.executeUpdate();
     
     
    PreparedStatement ps1=connection.prepareStatement("update cabs set status = 'Available' where vehicleno = '"+vehicleno+"'");
    int i=ps1.executeUpdate();
    
    if(i>0)
    {
    response.sendRedirect("viewmybookings.jsp?msg=Cancelled");
    }
    else{
    response.sendRedirect("viewmybookings.jsp?m1=Failed");    
    }
    %>
    