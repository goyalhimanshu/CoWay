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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

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



var $j = jQuery.noConflict();
    
    $(window).load(function(){
    	$j('#date').datepicker({
    	 minDate: 0,
    	 dateFormat: 'DD, d MM, yy',
                onSelect: function(datetext){
                    $(this).val(datetext);
                },
    	
    	});
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






var map;
var geocoder;
var bounds = new google.maps.LatLngBounds();
var markersArray = [];

//var origin1 = new google.maps.LatLng(55.930, -3.118);
var origin;
var destination;
//var destinationB = new google.maps.LatLng(50.087, 14.421);

var destinationIcon = 'https://chart.googleapis.com/chart?chst=d_map_pin_letter&chld=D|FF0000|000000';
var originIcon = 'https://chart.googleapis.com/chart?chst=d_map_pin_letter&chld=O|FFFF00|000000';



function calculateDistances() {
  origin = document.getElementById('dep_place').value;
  destination = document.getElementById('des_place').value;
  var service = new google.maps.DistanceMatrixService();
  service.getDistanceMatrix(
    {
      origins: [origin],
      destinations: [destination],
      travelMode: google.maps.TravelMode.DRIVING,
      unitSystem: google.maps.UnitSystem.METRIC,
      avoidHighways: false,
      avoidTolls: false
    }, calcDistance);
}

function calcDistance(response, status) {
  if (status != google.maps.DistanceMatrixStatus.OK) {
    alert('Error was: ' + status);
  } else {
    var origins = response.originAddresses;
    var destinations = response.destinationAddresses;
    deleteOverlays();

    for (var i = 0; i < origins.length; i++) {
      var results = response.rows[i].elements;
      addMarker(origins[i], false);
      for (var j = 0; j < results.length; j++) {
        addMarker(destinations[j], true);
        /* outputDiv.innerHTML += origins[i] + ' to ' + destinations[j]
            + ': ' + results[j].distance.text + ' in '
            + results[j].duration.text + '<br>'; */
            total_dist.value=results[j].distance.text;
            total_time.value=results[j].duration.text;
            total_distx.value=results[j].distance.text;
            total_timex.value=results[j].duration.text;
      }
    }
  }
}

function addMarker(location, isDestination) {
  var icon;
  if (isDestination) {
    icon = destinationIcon;
  } else {
    icon = originIcon;
  }
  geocoder.geocode({'address': location}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      bounds.extend(results[0].geometry.location);
      map.fitBounds(bounds);
      var marker = new google.maps.Marker({
        map: map,
        position: results[0].geometry.location,
        icon: icon
      });
      markersArray.push(marker);
    } else {
      /* alert('Geocode was not successful for the following reason: '
        + status); */
        alert('Please fill Source and destination first');
    }
  });
}

function deleteOverlays() {
  for (var i = 0; i < markersArray.length; i++) {
    markersArray[i].setMap(null);
  }
  markersArray = [];
}

google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>

<% 
	String id="";
	for(int i=0;i<6;i++)
	{
		id+=(int)(Math.random()*9)+1;
	}
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
    <form name="offer" role="form" action="PostOfferRide.jsp" method="post">
	    <div class="gz">  <!-- gn starts left one -->
	      <div class="qv rc aog alu">
	        <ul class="ca qo anx">        
	           <li class="">
	    	     <div class="">
	        	   <ul class="">
	           		<h1>Route Information</h1>
	          	   </ul>
	         	 </div>
	          </li>          
	          <li class="qf b aml">	          
		          <div class="form-group">
				     	<label class="control-label" for="dep_place">From:</label>
				     	<input id="dep_place" name="dep_place" required="required" class="form-control" type="text" size="50">        			
				     </div>
					 <div class="form-group">
					 	<label for="des_place">To:</label>
						<input id="des_place" name="des_place" required="required" class="form-control" type="text" size="50">	      		
					</div>  
					<div class="form-group">
						<label for="total_distx">Total Distance:</label>
						<input id="total_distx" required="required" class="form-control" type="text" placeholder="click to calculate distance" onfocus="calculateDistances();" size="50">
					</div>
					<div class="form-group">
						<label for="total_timex">Total Time:</label>
						<input id="total_timex" required="required" class="form-control" type="text" placeholder="click to calculate time" onfocus="calculateDistances();" size="50">
				    </div>
					<div class="form-group center-block">
						<label for="date">Departure Date:</label> 
						<input id="date" placeholder="Day, DD MM, YYYY" name="date" required="required" class="form-control" type="text" size="50">     
					</div> 
					<div class="form-group">
					    <label for="time">Departure Time:</label> 
					    <div class="input-group">
						    <span class="input-group-addon">
						    	<input type="number" required="required" class="form-control span1" id="hour" name="hour" min="00" max="12" placeholder="HH">
						    </span>
							<span class="input-group-addon">
						    	<input type="number" required="required" class="form-control span1" id="min" name="min" min="00" max="59" placeholder="Min">
						    </span>
						    <span class="input-group-addon">
						    	<select class="form-control span1" id="ampm" name="ampm">
									<option>AM</option>
									<option>PM</option>
								</select>
							</span>
						</div>
					</div>			    	     
		      	</li>	      
	        </ul>
	      </div>
		  </div>  <!-- gn ends left one --> 
		  
		  <div class="gz">  <!-- gz starts left one -->
	      	<div class="qv rc aog alu">
	        	<ul class="ca qo anx">  
	        	      
	            	<li class="">
	    	     		<div class="">
	        	   			<ul class="">
	           					<h1>Price & Seats</h1>
	          	   			</ul>
	         	 		</div>
	          		</li>          
	          
	          		<li class="qf b aml">
		      			<div class="form-group">
							<label for="cost">Cost per person:</label>
							<input id="cost" name="cost" title="This price is per person when 4 persons are sharing the ride. You can change it according no of seats available" data-toggle="tooltip" required="required" class="form-control" type="number" min="1"  >
					 	</div>
					 	<div class="form-group">
							<label for="total_seats">Seats Available:</label>
							<input id="total_seats" name="total_seats" required="required" class="form-control" type="number" min="0" max="4">
				    	</div>
				    	<div class="form-group">
							<label for="description">Description:</label>
							<textarea id="description" name="description" required="required" placeholder="write all relevent information regarding ride, stopovers, where to meet, max waiting time. Please donot share personal information like mobile no, address, etc" class="form-control" rows="11" id="description"></textarea>
							<h6 class="" id="count_message"></h6>
						</div>	
						<input id="userid" name="userid" required="required" class="form-control" value="<%= session.getAttribute("userid") %>" type="hidden">
						<input id="rideid" name="rideid" required="required" class="form-control" value="<%= id %>" type="hidden">
						<input id="total_dist" name="total_dist" required="required" class="form-control" value="" type="hidden">
						<input id="total_time" name="total_time" required="required" class="form-control" value="" type="hidden">	
						<div class="fj">
		            	 	<button title="Your ride will be verified first" data-toggle="tooltip" type="submit" class="btn btn-info pull-right">Post</button>
		            	</div> 			        
		      		</li>  
		      		
		      	</ul>
	      	</div>
		  </div>  <!-- gz ends left one -->
	  </form>
           
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