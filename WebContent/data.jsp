<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coway.DBInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'data.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    	String userid=request.getParameter("id");
    	String name=request.getParameter("name");
	    String email=request.getParameter("email");
	    String friend_count=request.getParameter("count");
	    String picurl=request.getParameter("picurl");
	    String age=request.getParameter("age");
	    String lastlogon = request.getParameter("lastlogon");
	    String pageid = request.getParameter("pageid");
	    String blocked="false";
    
    	Connection con=DBInfo.getConnection();
    	String getData="select * from userdata where userid=?";
    	PreparedStatement ps1=con.prepareStatement(getData);
    	ps1.setString(1, userid);
    	ResultSet rs=ps1.executeQuery();
    	if(rs.next())
    	{
    			System.out.println("email1 "+email);
    			System.out.println("count1 "+email);
    			System.out.println("picurl1 "+email);
    			System.out.println("age1"+email);
    			blocked=rs.getString("blocked");
    			if(email.equalsIgnoreCase("undefined"))
    			{
    				email=rs.getString("email");
    			}
    			if(friend_count.equalsIgnoreCase("undefined"))
    			{
    				friend_count=rs.getString("friend_count");
    			}
    			if(picurl.equalsIgnoreCase("undefined"))
    			{
    				picurl=rs.getString("picurl");
    			}
    			/* session.setAttribute("userid", userid);
			    session.setAttribute("email", email);
			    session.setAttribute("picurl", picurl);
			    session.setAttribute("name", name); */
    			String updateData="update userdata set email=?, friend_count=?, picurl=?, age=? where userid=?";
    			PreparedStatement ps2=con.prepareStatement(updateData);
    			ps2.setString(1, email);
		    	ps2.setString(2, friend_count);
		    	ps2.setString(3, picurl);
		    	ps2.setString(4, age);
		    	ps2.setString(5, userid);
		    	ps2.executeUpdate();
		    	System.out.println("email3 "+email);
    			System.out.println("count3 "+email);
    			System.out.println("picurl3 "+email);
    			System.out.println("age3"+email);
    			
    	}
    	else
    	{
    			System.out.println("email2 "+email);
    			System.out.println("count2 "+email);
    			System.out.println("picurl2 "+email);
    			System.out.println("age2"+email);
		    	String insertData="insert into userdata values(?,?,?,?,?,?,?)";
		    	PreparedStatement ps3=con.prepareStatement(insertData);
		    	ps3.setString(1, userid);
		    	ps3.setString(2, name);
		    	ps3.setString(3, email);
		    	ps3.setString(4, age);
		    	ps3.setString(5, friend_count);
		    	ps3.setString(6, picurl);
		    	ps3.setString(7, "false");
		    	ps3.executeUpdate();
	    }
	    
	    session.setAttribute("userid", userid);
	    session.setAttribute("email", email);
	    session.setAttribute("picurl", picurl);
	    session.setAttribute("name", name);
	    if(blocked.equals("false"))
	    {
		    if(pageid.equals("login"))
		    {
	    		response.sendRedirect("Home.jsp");
	    	}
	    	else if(pageid.equals("share"))
	    	{
	    		response.sendRedirect("OfferRide.jsp");
	    	}
	    	else
	    	{
	    		response.sendRedirect("SearchRide.jsp");
	    	}
	    }
	    else
	    {
	    	response.sendRedirect("UserLoginError.jsp");
	    }
    
     %>
  </body>
</html>
