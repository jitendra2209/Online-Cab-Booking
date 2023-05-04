<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String drivername = request.getParameter("drivername"); 
    String vehicleno = request.getParameter("vehicleno");
    String vtype = request.getParameter("vtype");
    String from = request.getParameter("from"); 
    String to = request.getParameter("to");
    String cno = request.getParameter("cno");
    
    try{

    PreparedStatement ps=connection.prepareStatement("insert into cabs(drivername,vehicleno,vehicletype,vfrom,vto,cno) values(?,?,?,?,?,?)");

    ps.setString(1,drivername);
    ps.setString(2,vehicleno);
    ps.setString(3,vtype);
    ps.setString(4,from);
    ps.setString(5,to);
    ps.setString(6,cno);	
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("addcabs.jsp?msg=Added");
    }
    else{
    response.sendRedirect("addcabs.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>