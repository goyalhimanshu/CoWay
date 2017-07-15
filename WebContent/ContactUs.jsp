<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>
<html>
<head>

<title>© COWAY | HOME</title>
<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true&libraries=places"></script>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/navbar.css">
 
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
    <link href="assets/css/toolkit.css" rel="stylesheet">
    
    <link href="assets/css/application.css" rel="stylesheet">
    
    <style>
      /* note: this is a hack for ios iframe for bootstrap themes shopify page */
      /* this chunk of css is not part of the toolkit :) */
      body {
        width: 1px;
        min-width: 100%;
        *width: 100%;
      }
    </style>
    <script type="text/javascript">
   $(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});

$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
</head>
<%
String email="";
email=session.getAttribute("email").toString();
 %>

<body class="ang">
<!--Nav-bar starts  -->
<%@include file="navbar.jsp" %>
<!--Navbar ends  -->
<div id='container'>
<div id="fb-root"></div>
<!--FB SDK for Logout starts  -->
<%@include file="fblogout.html" %>
<!--FB SDK for Logout ends  -->

<div class="by amt">  <!--amt starts  -->
  <div class="gc">	 <!-- gc starts -->    
    
	    <div class="gz">  <!-- gn starts left one -->
	      <div class="qv rc aog alu">
	        <ul class="ca qo anx">        
	           <li class="">
	    	     <div class="">
	        	   <ul class="">
	           		<h1>Feedback</h1>
	          	   </ul>
	         	 </div>
	          </li>
	          <li class="qf b aml">	    
	          	<h4><i class="fa fa-mobile"></i> (+91)123-456-789</h4>
	          	<h4><a href="mailto:info@coway.com"><i class="fa fa-envelope"></i> info@coway.com</a></h4>
	          			    	     
		      	</li>          
	          <li class="qf b aml">	    
	          	<form name="offer" role="form" action="feedbacksent.jsp" method="post">      
		          	<div class="form-group">
			      		<label for="Email-id">Email-Id:</label>
						<input id="email" name="email" readonly="readonly" required="required" class="form-control" type="text" value="<%=email %>" >	      		
					</div>
		      		<div class="form-group">
					  	<label for="feedback">Feedback:</label>
					  	<textarea class="form-control" required="required" placeholder="Message..." rows="6" id="feedback" name="feedback" ></textarea>
					</div> 
				    <div class="form-group center-block">        
						<div class="fj">
		            	 	<button title="Send Feedback" data-toggle="tooltip" type="submit" class="btn btn-info pull-right"><i class="fa fa-paper-plane"></i> Send</button>
		            	</div> 
					</div>
				 </form>			    	     
		      	</li>	      
	        </ul>
	      </div>
		  </div>  <!-- gn ends left one --> 
		  
		  <div class="gz">  <!-- gz starts left one -->
	      	<div class="qv rc aog alu">
	        	<ul class="ca qo anx">  
	        	      
	            	<li class="qf b aml">
	          	<h4><center><i class="fa fa-map-marker"></i> <a href="http://www.maps.google.com/?q=Jaipur, Rajasthan, India - 302033"> <br>Jaipur, Rajasthan, India - 302033</center></a></h4>
	          			    	     
		      	</li>          
	          
	          		<li class="qf b aml">
	          			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3560.542770722941!2d75.86432661485065!3d26.822683683166463!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396dc9d3687a88cf%3A0xa367e81e2d194fe1!2sSwami+Keshvanand+Institute+of+Technology+Management+%26+Gramothan!5e0!3m2!1sen!2sin!4v1445618271717" width="540" height="400" frameborder="0" style="border:0" allowfullscreen></iframe> 			        
		      		</li>  
		      		
		      	</ul>
	      	</div>
		  </div>  <!-- gz ends left one -->
	
           
      <!-- <div class="gz">  gz start right one 
  	    <ul class="ca qo anx">
          <li class="qf b aml">
    	     <div class="">
        	   <ul class="">
           		<h1>Search Ride</h1>
          	   </ul>
         	 </div>
          </li>
          <li class="qf b aml">
	          <form name="offer" role="form" action="SearchResult.jsp" method="post">
			     <div class="form-group">
			     	<label class="control-label" for="dep_place">From:</label>
			     	<input id="dep_place" name="dep_place" required="required" class="form-control" type="text" size="50">        			
			     </div>
				 <div class="form-group">
				 	<label for="des_place">To:</label>
					<input id="des_place" name="des_place" required="required" class="form-control" type="text" size="50">	      		
				</div>  
				<div class="form-group center-block">
					<label for="date">Departure Date:</label> 
					<input id="datepicker" placeholder="Day, DD MM, YYYY" name="datepicker" required="required" class="form-control" type="text" size="50">          
				</div> 
				<div class="fj">
	            	 <button title="Search Ride" data-toggle="tooltip" type="submit" class="btn btn-default">Search</button>
	            </div>			    	
			  </form>         
	      </li>      
        </ul>      
    </div> -->   <!--   gz ends right one-->
    
    
    <div align="center">
    <div class="">
      <div class=" rc aok">
        <div class="qw">
          © 2015 COWAY
          <a href="#">About</a>
          <a href="#">Help</a>
          <a href="#">Terms</a>
          <a href="#">Privacy</a>
          <a href="#">Cookies</a>
          <a href="#">Ads </a>

          <a href="#">info</a>
          <a href="#">Brand</a>
          <a href="#">Blog</a>
          <a href="#">Status</a>
          <a href="#">Apps</a>
          <a href="#">Jobs</a>
          <a href="#">Advertise</a>
        </div>
      </div>
    </div>
    </div>
  </div>
</div>


    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/chart.js"></script>
    <script src="assets/js/toolkit.js"></script>
    <script src="assets/js/application.js"></script>
    <script>
      // execute/clear BS loaders for docs
      $(function(){
        if (window.BS&&window.BS.loader&&window.BS.loader.length) {
          while(BS.loader.length){(BS.loader.pop())()}
        }
      })
    </script>

</div>
</body>
</html> 