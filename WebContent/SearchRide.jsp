<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
  <title>Search your Ride</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true&libraries=places"></script>
 
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

function initialize() {

var dep_place = document.getElementById('dep_place');
var autocomplete = new google.maps.places.Autocomplete(dep_place);

var des_place = document.getElementById('des_place');
var autocomplete1 = new google.maps.places.Autocomplete(des_place);

var opts = {
    center: new google.maps.LatLng(9.93123, 76.26730),
    zoom: 10
  };
/*   map = new google.maps.Map(document.getElementById('map-canvas'), opts);
 */  geocoder = new google.maps.Geocoder();


}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
<!--Nav-bar starts  -->
<%@include file="../navbar.jsp" %>
<!--Navbar ends  -->

<div id='container'>

<div id="fb-root"></div>
<!--FB SDK for Logout starts  -->
<%@include file="../fblogout.html" %>
<!--FB SDK for Logout ends  -->
	<div class="container">
		<div class="jumbotron center-block" style="width:800px">
			<form name="offer" role="form" action="SearchResult.jsp" method="post">
  				<fieldset class="center-block" style="width:500px">
						<legend>Route</legend>
		      			<div class="form-group">
		       				<label class="control-label" for="dep_place">From:</label>
		        			<input id="dep_place" name="dep_place" required="required" class="form-control" type="text" size="50">        			
		      			</div>
			     		<div class="form-group">
			      			<label for="des_place">To:</label>
							<input id="des_place" name="des_place" required="required" class="form-control" type="text" size="50">	      		
						</div>  
			      	   	<div class="form-group">
				    		<label for="date">Departure Date:</label>      
				    		<%@include file="assets/datetime/date.html" %>      
				    	</div> 
				    	<div class="form-group center-block">        
						<div class="col-sm-offset-2 col-sm-10 center-block">
							<button title="Search Ride" data-toggle="tooltip" type="submit" class="btn btn-default">Search</button>
			    		</div>
					</div>	
				</fieldset> 
		  </form>
	</div>
</div>
</div>
</body>
</html>