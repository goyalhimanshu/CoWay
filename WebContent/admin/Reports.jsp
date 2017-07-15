<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>COWAY | Users</title>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic" rel="stylesheet">
    <link href="assets/css/toolkit-inverse.css" rel="stylesheet">

	<style>
      /* note: this is a hack for ios iframe for bootstrap themes shopify page */
      /* this chunk of css is not part of the toolkit :) */
      body {
        width: 1px;
        min-width: 100%;
        *width: 100%;
      }
      
      .btn.disabled {
	    pointer-events: auto;
		}
		     
      .table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
  		background-color: black;
	  }
    </style>
	
	<script>
		$(document).ready(function(){
		    $('[data-toggle="tooltip"]').tooltip(); 
		});
		jQuery(document).ready(function($) {
		    $(".clickable-row").click(function() {
		        window.document.location = $(this).data("href");
		    });
		});
		
		 // execute/clear BS loaders for docs
      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
	</script>
  </head>
  <body class="ts">
    <nav class="ci ou g">
      <div class="ft ui">
      	<div class="oj">
      	  <button type="button" class="om collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          	<span class="ct">Toggle navigation</span>
          	<span class="on"></span>
          	<span class="on"></span>
          	<span class="on"></span>
        </button>
        <a class="ol tu" href="../admin/Admin.jsp">
          <i class="fa fa-tachometer" style="color:white;"></i>
          Dashboard
        </a>
      </div>
      <div id="navbar" class="ok collapse">
        <ul class="nav navbar-nav">
          <li class="active">
            <a href="ShowUsers.jsp"><i class="fa fa-user" style="color:white;"></i> Users</a>
          </li>
          <li >
          	<a href="Rides.jsp"><i class="fa fa-car" style="color:white;"></i> Rides</a>
          </li>
          <li >
            <a href="ShowFeedback.jsp"><i class="fa fa-list" style="color:white;"></i> Feedbacks</a>
          </li>
          <li >
            <a href="Reports.jsp"><i class="fa fa-remove" style="color:white;"></i> Reports</a>
          </li>
        </ul>
        <form action="logoutAction.jsp" class="fa oo ny">
          <div class="aol">
            <input class="form-control" type="submit" value="Logout">
          </div>
        </form>
      </div>
    </div>
  </nav>
  
    <div class="ft ui">
    <div class="apa alg">
  <div class="apb">
    <h6 class="apd">Dashboards</h6>
    <h2 class="apc">Reports</h2>
  </div>
</div>
  
  <div class="container">
	<div align="center">
		<table id="users" class="table table-hover" width="577" border="0" align="center" cellpadding="1" cellspacing="1">
		  	<thead>
    			<tr>
      		      <th width="144"><div align="center">Page Under Construction</div></th>
    			</tr>
    		</thead>
    		</table>
    </div>
  </div>
  </div>
 </body>
</html>
