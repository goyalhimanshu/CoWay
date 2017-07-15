<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>
<head>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
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
    
<script type="text/javascript">
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
}); 
</script>


</head>

<body>

<%-- <nav class="navbar navbar-default" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-slide-dropdown">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Home.jsp"><img alt="Home" src="assets/logo_coway.png" width="200" height="35"></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-slide-dropdown">
        <ul class="nav navbar-nav">
            <li><a href="PastRides.jsp">My Past Rides</a></li>
            <li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>				
			  <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>                
            </li>
            <li><a href="OfferRide.jsp" class="btn btn-default">Offer Ride</a></li>
            <li><a href="SearchRide.jsp" class="btn btn-default">Search Ride</a></li>
        </ul>
        
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img class="img-circle" src="<%=session.getAttribute("picurl").toString() %>" alt="<%=session.getAttribute("name").toString() %>" width="20" /> <%=session.getAttribute("name").toString() %> <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="settings_profile.jsp">Profile Setting</a></li>
                <li><a href="settings_post.jsp">Post Setting</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
            <li><button id="loginBtn" class="btn btn-info btn-outline btn-circle" onclick="doLogin()" style="border: 0; margin-top: 10px;" ><i class="fa fa-facebook fa-fw animated"></i>Login</button></li>
            	<li class=""><button id="logoutBtn" class="btn btn-info" style="border: 0; margin-top: 10px;"><i class="fa fa-facebook fa-fw animated"></i>Logout</button></li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav> --%>


<%-- <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href=""><i class="fa fa-car"></i>COWAY</a>
    </div>

    <div class="collapse navbar-collapse" ><!-- id="bs-example-navbar-collapse-1" -->
      <!-- <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
      </ul> -->
      <form class="navbar-form navbar-left" role="search" action="SearchRide.jsp">
        <div class="form-group">
          <!-- <input type="text" class="form-control" placeholder="Search">
          <input type="text" class="form-control" placeholder="Search"> -->
        </div>
        <button type="submit" class="btn btn-default">Search Ride</button>
      </form>
      <form class="navbar-form navbar-left" role="share" action="OfferRide.jsp" >
        <div class="form-group">
        </div>
        <button type="submit" class="btn btn-default">Share Ride</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
      	<li class="dropdown">
      	  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><img class="img-circle" src="<%=session.getAttribute("picurl").toString() %>" alt="<%=session.getAttribute("name").toString() %>" width="20" /> <%=session.getAttribute("name").toString() %> <span class="caret"></span></a>
          <!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a> -->
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">My Profile</a></li>
            <li><a href="#">My Rides</a></li>
            <li class="divider"></li>
            <li><a href="#">Contact Us</a></li>
          </ul>
        </li>
        <li><button id="loginBtn" class="btn btn-info btn-outline btn-circle" onclick="doLogin()" style="border: 0; margin-top: 10px;" ><i class="fa fa-facebook fa-fw animated"></i>Login</button></li>
        <li><button id="logoutBtn" class="btn btn-info"><i class="fa fa-facebook"></i> Logout</button></li>  <!-- style="border: 0; margin-top: 10px;" -->
      </ul>
    </div>
  </div>
</nav> --%>
		
		
<nav class="ck pc os app-navbar">
  <div class="by">
    <div class="or">
      <button type="button" class="ou collapsed" data-toggle="collapse" data-target="#navbar-collapse-main">
        <span class="cv">Toggle navigation</span>
        <span class="ov"></span>
        <span class="ov"></span>
        <span class="ov"></span>
      </button>
      
      <a class="e" href="Home.jsp">
        COWAY
      </a>
    </div>
    <div class="f collapse" id="navbar-collapse-main">

        <ul class="nav navbar-nav ss">
          <li class="active">
            <a href="Home.jsp"><i class="fa fa-home"></i> Home</a>
          </li>
          <li>
            <a href="settings_profile.jsp"><i class="fa fa-user"></i> Profile</a>
          </li>
          <li class="active">
            <a href="OfferRide.jsp"><i class="fa fa-share"></i> Share Ride</a>
          </li>
          <li>
            <a href="SearchRide.jsp"><i class="fa fa-search"></i> Search Ride</a>
          </li>
        </ul>

        <ul class="nav navbar-nav og ale ss">
          <li >
            <a class="g" href="notifications/index.html">
              <span class="h ws"></span>
            </a>
          </li>
          <li >
            <a class="g" href="ContactUs.jsp">
              <strong><i class="fa fa-phone"></i></strong>
            </a>
          </li>
          <li>
            <button class="cg fm ox anl" data-toggle="popover">
              <img class="img-circle cu" src="<%=session.getAttribute("picurl").toString() %>" alt="<%=session.getAttribute("name").toString() %>" width="20" />
            </button> 
          </li>
          <li>
          	<button id="loginBtn" class="btn btn-info btn-outline btn-circle" onclick="doLogin()" style="border: 0; margin-top: 10px;" >
          		<i class="fa fa-facebook fa-fw animated"></i>Login
          	</button>
          </li>
          <li>
          	<button id="logoutBtn" class="btn btn-default btn-outline btn-circle" style="border: 0; margin-top: 10px;">
          		<i class="fa fa-facebook"></i> Logout
          	</button>
          </li>  <!-- style="border: 0; margin-top: 10px;" -->       
        </ul>

        <form class="ow og i" role="search">
          <div class="et">
            <input type="text" class="form-control" data-action="grow" placeholder="Search">
          </div>
        </form>

        <ul class="nav navbar-nav st su sv">
          <li><a href="index.html">Home</a></li>
          <li><a href="profile/index.html">Profile</a></li>
          <li><a href="notifications/index.html">Notifications</a></li>
          <li><a data-toggle="modal" href="#msgModal">Messages</a></li>
          <li><a href="docs/index.html">Docs</a></li>
          <li><a href="#" data-action="growl">Growl</a></li>
          <li><a href="login/index.html">Logout</a></li>
       </ul>

        <ul class="nav navbar-nav hidden">
          <li><a href="#" data-action="growl">Growl</a></li>
          <li><a href="logoutAction.jsp">Logout</a></li>
        </ul>
      </div>
  </div>
</nav>
		
</body>


</html>