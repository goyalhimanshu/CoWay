<%-- <!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>
<%@page import="java.sql.Connection"%>
<html>
<head>

<title>Facebook Login JavaScript Example</title>
<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/navbar.css">


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
  <h2>Horizontal form</h2>
  <form class="form-horizontal" role="form">
    <div class="form-group">
      <label class="control-label col-sm-2" for="name">Name:</label>
      <div class="col-sm-4">
        <input type="email" class="form-control" id="name" placeholder="Enter name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="date">Date:</label>      
        <%@include file="assets/datetime/saved_resource.html" %>      
    </div>   
    <div class="form-group">
      <label class="control-label col-sm-2" for="place">Place:</label>      
        <%@include file="assets/searchbox/search_box.html" %>      
    </div>   
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-4">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>



</div>
</body>
</html>  --%>