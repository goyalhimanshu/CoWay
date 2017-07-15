<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Coway Users</title>
    
     	  <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
          <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/css/jasny-bootstrap.min.css">
		  <script src="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/js/jasny-bootstrap.min.js"></script>
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
	      <meta http-equiv="pragma" content="no-cache">
	      <meta http-equiv="cache-control" content="no-cache">
	      <meta http-equiv="expires" content="0">    
	      <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	      <meta http-equiv="description" content="This is my page">
	
		  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  	      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  	      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	      <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
            .navbar-static-top {
  margin-bottom:20px;
}

i {
  font-size:16px;
}

.nav > li > a {
  color:#787878;
}
  
footer {
  margin-top:20px;
  padding-top:20px;
  padding-bottom:20px;
  background-color:#efefef;
}

/* count indicator near icons */
.nav>li .count {
  position: absolute;
  bottom: 12px;
  right: 6px;
  font-size: 9px;
  background: rgba(51,200,51,0.55);
  color: rgba(255,255,255,0.9);
  line-height: 1em;
  padding: 2px 4px;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  -ms-border-radius: 10px;
  -o-border-radius: 10px;
  border-radius: 10px;
}

        </style>

  </head>
  
  <body>
         <!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">COWAY</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="http://www.bootply.com/run#"><i class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
            </ul>
        </div>
    </div>
    <!-- /container -->
</div>
  <!-- /Header -->
    </body>
  </html>
<script type="text/javascript">
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>
<script type="text/javascript">
$('tbody.rowlink').rowlink()
</script>
</head>

<div class="container">
<div align="center">
<table width="577" border="0" align="center" cellpadding="1" cellspacing="1">
<tr>
  <td>
	<table id="users" class="table table-hover">
   
	
  	<thead>
    <tr>
      
      <th width="144"><div align="center">UserId</div></th>
      <th width="144"><div align="center">UserName</div></th>
      <th width="144"><div align="center">Email</div></th>
      <th width="144"><div align="center">Age</div></th>
      <th width="144"><div align="center">FriendCount</div></th>
    </tr>
    </thead>
    <tbody data-link="row" class="rowlink">
	<%
		String userid="",name="",email="",age="",friend_count="";
		Connection con=DBInfo.getConnection();
		String query="select * from userdata;";
		PreparedStatement ps=con.prepareStatement(query);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			 userid=rs.getString("userid");
			 name=rs.getString("name");
			 email=rs.getString("email");		 
			 age=rs.getString("age");
			 friend_count=rs.getString("friend_count");
	%>
	<tr onclick="document.location='PastRides.jsp?userid=<%=userid %>'" style="cursor:hand">
		
		<td align="center"><%=userid %></td>
		<td align="center"><%=name %></td>
		<td align="center"><%=email %></td>
		<td align="center"><%=age %></td>
		<td align="center"><%=friend_count %></td>
		<td align="center"><a href="#.jsp?username=<%=name%>"class="btn btn-danger btn-md" data-toggle="tooltip" title="Block the user"><span class="glyphicon glyphicon-remove">&nbsp;Block</a></td>
	</tr>
<!-- <script>

 </script>
 -->	<%
		}
	 %>
	 </tbody>
  </table>

  </td>
  </tr>
  </table>
</div>
</div>	
 