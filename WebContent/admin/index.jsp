<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Admin Login</title>
    <%@ page session="true" %>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
	<style type="text/css">
		body {
		    background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1IiBoZWlnaHQ9IjUiPgo8cmVjdCB3aWR0aD0iNSIgaGVpZ2h0PSI1IiBmaWxsPSIjZmZmIj48L3JlY3Q+CjxyZWN0IHdpZHRoPSIxIiBoZWlnaHQ9IjEiIGZpbGw9IiNjY2MiPjwvcmVjdD4KPC9zdmc+");
		}
		.box-shadow {
			-webkit-box-shadow: 0px 10px 20px 0px rgba(50, 50, 50, 0.52);
			-moz-box-shadow:    0px 10px 20px 0px rgba(50, 50, 50, 0.52);
			box-shadow:         0px 10px 20px 0px rgba(50, 50, 50, 0.52)
		}
	</style>
	<script type="text/javascript">
		$(document).ready(function() 
		{
    		var today = new Date().toDateString();
			$('.today').html(today);
		})
	</script>
  </head>
  <body>
	<div class="container">
      <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-5 col-md-offset-4 col-lg-4 col-lg-offset-4">
          <center><h2 class="center-block">CoWay</h2></center>
            <div class="panel panel-default box-shadow">
  	          <div class="panel-heading">
               <span class="text-primary">ADMIN</span>
     	       <span class="text-muted pull-right today" title="Today"></span>              
        	  </div><!--.panel-heading-->
		      <div class="panel-body">
				<form method="POST" action="CheckLogin.jsp">
	                <div class="form-group">
    	              <label for="email">Email</label>
        	          <div class="input-group">
            	        <div class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></div>
                	    <input autofocus required type="email" id="email" name="email" class="form-control" placeholder="Your email" tabindex="1">
                  	  </div>
                	</div>
	                <div class="form-group">
    	               <label for="password">Password</label>
          	           <div class="input-group">
	               	       <div class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></div>
    			             <input required type="password" id="password" name="password" class="form-control" placeholder="Your password" tabindex="2">
                		  </div>
                	   </div>
                       <label for="password">Password</label>
                 	   <a href="#forget-password" class="btn btn-xs btn-link" tabindex="4">Forget password?</a>
	                   <button type="submit" class="btn btn-block btn-primary" tabindex="3">Authenticate</button>
					   <p class="text-center text-muted h4">
                 			 or
                	   </p>
                	   <a href="#create-account" class="btn btn-block btn-success" tabindex="5">Create account</a>
              	</form>
            </div>
          </div><!--.panel-->
        </div><!--.cols-->
      </div><!--.row-->
    </div><!--.container-->
  </body>
</html>
