<!DOCTYPE html>
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

		                  
<div id='container'>
<div id="fb-root"></div>


<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Offer Ride</button>
<button id="loginBtn" class="btn btn-info" onclick="doLogin()" style="border: 0; margin-top: 10px;" ><i class="fa fa-facebook fa-fw animated"></i>Login</button>
<button id="logoutBtn" class="btn btn-info" style="border: 0; margin-top: 10px;"><i class="fa fa-facebook fa-fw animated"></i>Logout</button>		
<!-- Offer Ride Modal Starts  -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Offer Ride</h4>
        </div>
        <div class="modal-body">
          <p>Please Login to Continue...</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  
<!-- Offer Ride Modal Ends  -->		
<div id="response"></div>

<script>
 
function getUserData() {
	FB.api('/me?fields=name,email,friends,picture.height(200).width(200),age_range,gender', function(response) {
	document.getElementById('logoutBtn').style.display = 'block';
	console.log('Email: ' + response.email);
	console.log('Successful login for: ' + response.name);
	console.log('Total friends ' + response.friends.summary.total_count);
	console.log('Total friends ' + response.picture.data.url);
	var id=response.id;
	var name=response.name;
	var email=response.email;
	var age=response.age_range.min;
	var count=response.friends.summary.total_count;
	var picurl=response.picture.data.url;
	var d = new Date();
	var n = d.getTime();
	window.location="data.jsp?id="+id+"&name="+name+"&email="+email+"&count="+count+"&picurl="+encodeURIComponent(picurl)+"&age="+age+"&lastlogon="+n;
 	});
}

 
window.fbAsyncInit = function() {
	//SDK loaded, initialize it
	FB.init({
		appId      : '1626151110972924',
		xfbml      : true,
		cookie	   : true,
		version    : 'v2.2',
		status     : true
	});
 
	//check user session and refresh it
	FB.getLoginStatus(function(response) 
	{
		if (response.status === 'connected') {
			//user is authorized
			document.getElementById('loginBtn').style.display = 'none';
			document.getElementById('logoutBtn').style.display = 'block';
			doLogin();			
		} else  if (response.status === 'not_authorized'){
			//user is not authorized
			document.getElementById('loginBtn').style.display = 'block';
			document.getElementById('logoutBtn').style.display = 'none';
		}else {
		    // The person is not logged into Facebook, so we're not sure if
		    // they are logged into this app or not.
		    document.getElementById('loginBtn').style.display = 'block';
		    document.getElementById('logoutBtn').style.display = 'none';
        }
	});
};
 
 
function doLogin(){
 	 FB.getLoginStatus(function(response) {
		if (response.status === 'connected') {
			//user is authorized
			document.getElementById('loginBtn').style.display = 'none';
			document.getElementById('logoutBtn').style.display = 'block';
			getUserData();
		} else  if (response.status === 'not_authorized'){
			//user is not authorized
			document.getElementById('loginBtn').style.display = 'block';
			document.getElementById('logoutBtn').style.display = 'none';
		}else {
		      // The person is not logged into Facebook, so we're not sure if
		      // they are logged into this app or not.
		      document.getElementById('loginBtn').style.display = 'block';
		      document.getElementById('logoutBtn').style.display = 'none';
	   }
	});
}

 
//load the JavaScript SDK
(function(d, s, id)
{
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) 
	{
		return;
	}
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/en_US/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
 
 
 
 
//add event listener to login button
document.getElementById('loginBtn').addEventListener('click', function() {
	//do the login
	FB.login(function(response) {
		if (response.authResponse) {
			//user just authorized your app
			document.getElementById('loginBtn').style.display = 'none';
			document.getElementById('logoutBtn').value = 'Logout';
			getUserData();
		}
		else
		{
			document.getElementById('loginBtn').style.display = 'block';
			document.getElementById('logoutBtn').style.display = 'none';
		}
	}, {scope: 'email,public_profile,user_friends', return_scopes: true});
}, false);


document.getElementById('logoutBtn').addEventListener('click',
	//do the logout
	function()
	 {
	 	FB.api('/me/permissions','DELETE',{},function(response) 
	 	{
    		  // Insert your code here
		      if(response.success==true)
		      {
		      	document.getElementById('loginBtn').style.display = 'block';
		      	document.getElementById('logoutBtn').style.display = 'none';
		      	window.location="logoutAction.jsp";
		      }
		      else
		      {
		      	document.getElementById('logoutBtn').style.display = 'block';
		      }
    	  console.log(response.success);
  		}
		)
  }, false);
 
</script>
</div>

</body>
</html> 