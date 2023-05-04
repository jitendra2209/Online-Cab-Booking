<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try{


    String query1="select * from admin where username='"+username+"' and password='"+password+"'"; 
    Statement st1=connection.createStatement();
    ResultSet rs=st1.executeQuery(query1);

    if(rs.next())
    {

    response.sendRedirect("adminhome.jsp?msg=success");
    }
    else 
    {
    response.sendRedirect("admin.jsp?msg1=Login_Failed");
    %>

    <%
    }
    } catch (Exception e) {
    e.printStackTrace();
    }

    %>