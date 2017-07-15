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
    $('[data-toggle="tooltip"]').tooltip();   
});
    
    
    var $j = jQuery.noConflict();
    
    $(window).load(function(){
    	$j('#datepicker').datepicker({
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
    </script>
</head>
<body class="ang">
<!--Nav-bar starts  -->
<%@include file="navbar.jsp" %>
<!--Navbar ends  -->
<div id='container'>
<div id="fb-root"></div>
<!--FB SDK for Logout starts  -->
<%@include file="fblogout.html" %>
<!--FB SDK for Logout ends  -->

<div class="by amt">
  <div class="gc">
    <div class="gn">
      <div class="qv rc aog alu">
        <div class="qx" style="background-image: url(assets/img/iceland.jpg);"></div>
        <div class="qw dj">
          <a href="profile/index.html">
          <%-- <img class="img-circle" src="<%=session.getAttribute("picurl").toString() %>" alt="<%=session.getAttribute("name").toString() %>" width="20" /> --%>
            <img
              class="aoh"
              src="<%=session.getAttribute("picurl").toString() %>" alt="<%=session.getAttribute("name").toString() %>" />
          </a>

          <h5 class="qy">
            <a class="aku" href="profile/index.html"><%=session.getAttribute("name").toString() %></a>
          </h5>

          <p class="alu">I wish i was a little bit taller, wish i was a baller, wish i had a girl.. also.</p>

          <ul class="aoi">
            <li class="aoj">
              <a href="#userModal" class="aku" data-toggle="modal">
                Friends
                <h5 class="ali">12M</h5>
              </a>
            </li>

            <li class="aoj">
              <a href="#userModal" class="aku" data-toggle="modal">
                Enemies
                <h5 class="ali">1</h5>
              </a>
            </li>
          </ul>
        </div>
      </div>

      <div class="qv rc sm sp">
        <div class="qw">
          <h5 class="ald">About <small>· <a href="#">Edit</a></small></h5>
          <ul class="eb tb">
            <li><span class="dp h xh all"></span>Went to <a href="#">Oh, Canada</a>
            <li><span class="dp h ajw all"></span>Became friends with <a href="#">Obama</a>
            <li><span class="dp h abu all"></span>Worked at <a href="#">Github</a>
            <li><span class="dp h ack all"></span>Lives in <a href="#">San Francisco, CA</a>
            <li><span class="dp h adt all"></span>From <a href="#">Seattle, WA</a>
          </ul>
        </div>
      </div>
    </div>

    <div class="gz">
      <ul class="ca qo anx">
      
      <li class="qf b aml">
         <div class="qg">
           <ul class="qo alm">
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
				<%-- <%@include file="assets/datetime/date.html" %> --%>      
			</div> 
			<div class="fj">
            	 <button title="Search Ride" data-toggle="tooltip" type="submit" class="btn btn-default">Search</button>
            </div>			    	
		  </form>         
        </li>      
      </ul>
      <div class="qv rc alu ss">
        <div class="qw">
        <h5 class="ald">Recent Rides with <small>· <a href="#">View All</a></small></h5>
        <ul class="qo anx">
          <li class="qf alm">
            <a class="qj" href="#">
              <img
                class="qh cu"
                src="assets/img/avatar-fat.jpg">
            </a>
            <div class="qg">
              <strong>Jacob Thornton</strong> @fat
              <div class="aoa">
                <button class="cg ts fx">
                  <span class="h vc"></span> Follow</button>
              </div>
            </div>
          </li>
           <li class="qf">
            <a class="qj" href="#">
              <img
                class="qh cu"
                src="assets/img/avatar-mdo.png">
            </a>
            <div class="qg">
              <strong>Mark Otto</strong> @mdo
              <div class="aoa">
                <button class="cg ts fx">
                  <span class="h vc"></span> Follow</button></button>
              </div>
            </div>
          </li>
        </ul>
        </div>
        <div class="qz">
          Dave really likes these nerds, no one knows why though.
        </div>
      </div>
    </div>
    
    <div class="gn">
      <div class="alert pv alert-dismissible ss" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <a class="pr" href="profile/index.html">Visit your profile!</a> Check your self, you aren't looking too good.
      </div>

      <div class="qv rc alu ss">
        <div class="qw">
          <h5 class="ald">Sponsored Ads</h5>
          <div data-grid="images" data-target-height="150">
            <img class="qh" data-width="640" data-height="640" data-action="zoom" src="assets/img/instagram_2.jpg">
          </div>
          <p><strong>It might be time to visit Iceland.</strong> Iceland is so chill, and everything looks cool here. Also, we heard the people are pretty nice. What are you waiting for?</p>
          <button class="cg ts fx">Buy a ticket</button>
        </div>
      </div>

      

      <div class="qv rc aok">
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