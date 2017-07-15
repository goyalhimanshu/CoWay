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
    <h2 class="apc">Feedbacks</h2>
  </div>
</div>
  
  <div class="container">
	<div align="center">
		<table id="users" class="table table-hover" width="577" border="0" align="center" cellpadding="1" cellspacing="1">
		  	<thead>
    			<tr>
      		      <th width="144"><div align="center">Feedback ID</div></th>
      			  <th width="144"><div align="center">Email</div></th>
      			  <th width="144"><div align="center">Feedback</div></th>
    			</tr>
    		</thead>
    		<tbody>
    		<%
				
				String id="",email="",feedback="",replied="";
				int count=0;
				Connection con=DBInfo.getConnection();
				String query="select * from feedback where replied=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1,"false");
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					 id=rs.getString(1);
				     email =rs.getString(2);
				     feedback=rs.getString(3);
				     replied=rs.getString(4);
				     count++;
			%>
				<tr class=''>
					<td id="userid" align="center"><%=id %></td>
					<td align="center"><%=email %></td>
					<td align="center"><%=feedback %></td>
					<td align="center"><input type="button" class="btn btn-danger" id="reply<%=count%> "value="Reply" data-toggle="modal" data-target="#myModal<%=count %>"></td>
					
				</tr>
				<div id="myModal<%=count %>" class="modal fade" role="dialog">
  	<div class="modal-dialog">
     <!-- Modal content-->
      <div class="modal-content">
       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Reply Form</h4>
      </div>
      <div class="modal-body">
        <form  action="../servlet/SendReplyEmail"  id="reply" method="post">
        	<div class="form-group">
			    <label for="Email-id">Email-Id:</label>
				<input id="email" name="email" readonly="readonly" required="required" class="form-control" type="text" value="<%=email %>"  style="width:300px" >	      		
			</div>
		    <div class="form-group">
				  <label for="reply">Reply:</label>
				  <textarea class="form-control" style="width:300px" required="required" placeholder="Message..." rows="5" id="feedback" name="feedback" ></textarea>
			</div> 
			<input type="hidden" name="id" id="id" value="<%=id%>">
			            
		   	<div class="form-group center-block">        
				
						<button title="Reply" data-toggle="tooltip" type="submit" class="btn btn-default">Reply</button>
		   		
			</div>	
		</form>
      </div>
     </div>
	</div>	
			<%
				}
			%>
			
	 		</tbody>
		</table>
    </div>
  </div>
  </div>
 </body>
</html>
