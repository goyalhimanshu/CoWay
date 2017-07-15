<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>
<html>
<head>

<title>Feedback Form</title>
<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/navbar.css">
<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});

$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
<%
String email="";
email=session.getAttribute("email").toString();
 %>

</head>
<body>

	<div class="container">
		<div class="jumbotron" style="width:400px">
			<form name="Feedback" role="form" action="feedbacksent.jsp" method="post">
  				<fieldset class="center-block" style="width:500px">
						<legend>Feedback Form</legend>						
			     		<div class="form-group">
			      			<label for="Email-id">Email-Id:</label>
							<input id="email" name="email" readonly="readonly" required="required" class="form-control" type="text" value="<%=email %>"  style="width:300px" >	      		
						</div>
		      			<div class="form-group">
							  <label for="feedback">Feedback:</label>
							  <textarea class="form-control" style="width:300px" required="required" placeholder="Message..." rows="5" id="feedback" name="feedback" ></textarea>
						</div> 
				    	<div class="form-group center-block">        
						<div class="col-sm-offset-2 col-sm-10 center-block">
							<button title="Feedback" data-toggle="tooltip" type="submit" class="btn btn-default">Submit</button>
			    		</div>
					</div>	
				</fieldset> 
		  </form>
	</div>
</div>
</body>
</html> 