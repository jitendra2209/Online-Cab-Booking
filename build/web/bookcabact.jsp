<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%@page import="onlinecab.Mail"%>
    <%
     String email = session.getAttribute("email").toString();
     String user = session.getAttribute("user").toString();
    String drivername = request.getParameter("drivername"); 
    String vehicleno = request.getParameter("vehicleno");
    String vtype = request.getParameter("vtype");
    String from = request.getParameter("vfrom"); 
    String to = request.getParameter("vto");
    String cno = request.getParameter("cno");
    String date = request.getParameter("date");
    String time = request.getParameter("time");
    String status = "Booked";
     
     Mail m= new Mail();
     String msg ="Vehicle No : "+vehicleno+"\nContact No : "+cno+"\nMessage  : Booking Confirmed";
     m.secretMail(msg, drivername, email);
    
    try{

    PreparedStatement ps=connection.prepareStatement("insert into bookings(username,drivername,vehicleno,vehicletype,vfrom,vto,cno,status,dt,time) values(?,?,?,?,?,?,?,?,?,?)");

    ps.setString(1,user);
    ps.setString(2,drivername);
    ps.setString(3,vehicleno);
    ps.setString(4,vtype);
    ps.setString(5,from);
    ps.setString(6,to);
    ps.setString(7,cno);
    ps.setString(8,status);
    ps.setString(9,date);
    ps.setString(10,time);
    ps.executeUpdate();
    
    PreparedStatement ps1=connection.prepareStatement("update cabs set status = 'Booked' where vehicleno = '"+vehicleno+"'");
    int i=ps1.executeUpdate();
    
    if(i>0)
    {
    response.sendRedirect("viewcabs.jsp?msg=Booked");
    }
    else{
    response.sendRedirect("viewcabs.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>