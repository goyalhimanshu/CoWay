<%
try
{

%>


<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<jsp:useBean id="obj" class="com.coway.FeedbackBean">
	<jsp:setProperty property="*" name="obj"/>
</jsp:useBean>

<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'feedbacksent.jsp' starting page</title>
    
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
    This is my JSP page. <br>
  
			<%
			   int i=obj.feedbackSend();
			   response.sendRedirect("Home.jsp");
			%>
  
  </body>
</html>
<%
}
catch(Exception e)
{
	
	System.out.println(e.getMessage());
	
 }
 %>
