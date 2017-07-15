<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>
<html>
  <head>
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  String email=request.getParameter("email");
  String password=request.getParameter("password");
  Connection con=DBInfo.getConnection();
  String select="select * from admin where email=? and password=?";
  PreparedStatement ps=con.prepareStatement(select);
  ps.setString(1, email);
  ps.setString(2, password);
  ResultSet rs=ps.executeQuery();
  if(rs.next())
  {
  	session.setAttribute("email", email);
  	session.setAttribute("name", rs.getString("name"));
  	response.sendRedirect("Admin.jsp");
  }
  else
  {
  	  	response.sendRedirect("LoginError.jsp");
  }
  
  
  
   %>
  </body>
</html>
