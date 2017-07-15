<!DOCTYPE html>
<html lang="en" class="no-js">
  
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- SEO Data -->
    <meta name="description" content="Fully Responsive app landing page with Parallax, Video Background and Animated Background. It's also comes with dark version. It's built with Bootsrap 3.2" />
    <meta name="keywords" content="car, pool, pooling, sharing, app car pool, friendly, mobile application, clean" />
    <meta name="author" content="Himanshu Goyal, CoWay">

    <!--  Icon --> 
    <link rel="icon" href="indexassets/photos/favicon.ico">
    <!-- <link rel="apple-touch-icon" href="indexassets/photos/icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="indexassets/photos/icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="indexassets/photos/icon-114x114.png"> --> 

    <!-- SITE TITLE HERE -->
    <title>CoWay - Car Pooling Website</title>

    <!-- Page Loading -->
    <link href="indexassets/css/loading.css" rel="stylesheet">

    <!-- Google Font -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400italic,700italic,400,300,700|Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>


    <!-- Bootstrap CSS File -->
    <link href="indexassets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Icons -->
    <link href="indexassets/css/pe-icon-7-stroke.css" rel="stylesheet">
    <link href="indexassets/css/pe-icon-social.css" rel="stylesheet">
    <link href="indexassets/css/simple-line-icons.css" rel="stylesheet">
    <link href="indexassets/css/font-awesome.min.css" rel="stylesheet">

    <!-- Owl Carousel -->
    <link href="indexassets/css/owl.carousel.css" rel="stylesheet">
    <link href="indexassets/css/owl.theme.css" rel="stylesheet">
    <link href="indexassets/css/owl.transitions.css" rel="stylesheet">

    <!-- prettyPhoto Image Lightbox -->
    <link href="indexassets/css/prettyPhoto.css" rel="stylesheet">

    <!-- Custom CSS Code -->
    <link href="indexassets/css/style.css" rel="stylesheet">

    <!-- Colors -->
    <!-- <link href="indexassets/css/aqua.css" rel="stylesheet"> -->
    <!-- <link href="indexassets/css/deepblue.css" rel="stylesheet"> -->
    <!-- <link href="indexassets/css/pink.css" rel="stylesheet"> -->
    <!-- <link href="indexassets/css/red.css" rel="stylesheet"> -->
    <!-- <link href="indexassets/css/magenta.css" rel="stylesheet"> -->
    <!-- <link href="indexassets/css/orange.css" rel="stylesheet"> -->
    <!-- <link href="indexassets/css/green.css" rel="stylesheet"> -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="indexassets/js/html5shiv.js"></script>
      <script src="indexassets/js/respond.min.js"></script>
    <![endif]-->
	<style>
	input[type="submit"] {
    	font-family: FontAwesome;
	}
	</style>
  </head>
  <body>
  <div id='container'>
<div id="fb-root"></div>

    <!--///////////////////////////////////
    /////// Loading Animation Start //////
    ///////////////////////////////////-->
    <div class="overlayer clearfix">
      <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
      </div>
    </div>
    <!--/////////////////////////////////
    /////// Loading Animation End //////
    //////////////////////////////////-->

    <div id="animatebg" class="animatebg" data-fss-depth="3" ></div>

    <!--///////////////////////////////////
    ///////// Home Section Start /////////
    ////////////////////////////////////-->
    <section class="at-home bgtransparent" id="at-home">

      <!--///// Site Header Start /////-->
      <header class="header-navbar">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <nav class="navbar main-nav navbar-default" role="navigation">

                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".at-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a href="#" class="logo"><h1 style="color:aqua;"><i class="fa fa-car"></i>CoWay</h1></a>
                </div><!-- .navbar-header -->

                <div class="collapse navbar-collapse at-navbar">
                  <ul class="nav navbar-nav navbar-right">
                    <li class="current"><a href="#at-home">Home</a></li>
                    <li><a href="#at-contact">Contact</a></li>
                  </ul><!-- .nav .navbar-nav -->
                </div><!-- .collapse .navbar-collapse -->

              </nav><!-- .navbar .main-nav .navbar-default -->
            </div><!-- .col-md-12 -->
          </div><!-- .row -->
        </div><!-- .container -->
      </header><!-- .header-navbar -->
      <!--///// Site Header End /////-->
      
      <!--///// Hero Section Start /////-->
      <div class="hero-unit">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="main-title">
                <h3><strong><i class="fa fa-car"></i>COWAY</strong></h3>
                <p>Share More. Save More.</p>
                <div class="row text-center">
              	  <div class="col-sm-2 col-sm-offset-4 text-center">
              		<button type="button" id="searchBtn" onclick="doLogin()" class="btn btn-info"><i class="fa fa-car"></i><i class="fa fa-search"></i> Search Ride</button>
              	  </div>
              	  <div class="col-sm-2 text-center">
               		<button type="button" id="loginBtn" onclick="doLogin()" class="btn btn-info"><i class="fa fa-car"></i><i class="fa fa-share"></i> Share Ride</button>
              	  </div>
              	</div>
              	<!-- <button id="logoutBtn" class="btn btn-info" style="border: 0; margin-top: 10px;"><i class="fa fa-facebook fa-fw animated"></i>Logout</button><br> -->
                <div class="app-mockup">
                  <!-- <img src="photos/mobile_mockup_3d.png" alt="" class="img-responsive"> -->
                  <p> <br> </p>
                  <p> <br> </p>
                  <p> <br> </p>
                  <p> <br> </p>
                </div>
              </div><!-- .main-title -->
            </div><!-- .col-md-12 -->
          </div><!-- .row -->
        </div><!-- .container -->
      </div><!-- .hero-unit -->
      <!--///// Hero Section End /////-->
      
<script> 
function getUserData(page) {
	FB.api('/me?fields=name,email,friends,picture.height(200).width(200),age_range,gender', function(response) {
/* 	document.getElementById('logoutBtn').style.display = 'block'; */
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
	window.location="data.jsp?id="+id+"&name="+name+"&email="+email+"&count="+count+"&picurl="+encodeURIComponent(picurl)+"&age="+age+"&lastlogon="+n+"&pageid="+page;
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
			/* document.getElementById('logoutBtn').style.display = 'none'; */
			doLogin();			
		} else  if (response.status === 'not_authorized'){
			//user is not authorized
			document.getElementById('loginBtn').style.display = 'block';
			/* document.getElementById('logoutBtn').style.display = 'none'; */
		}else {
		    // The person is not logged into Facebook, so we're not sure if
		    // they are logged into this app or not.
		    document.getElementById('loginBtn').style.display = 'block';
		    /* document.getElementById('logoutBtn').style.display = 'none'; */
        }
	});
};
 
 
function doLogin(){
 	 FB.getLoginStatus(function(response) {
		if (response.status === 'connected') {
			//user is authorized
			document.getElementById('loginBtn').style.display = 'none';
			/* document.getElementById('logoutBtn').style.display = 'none'; */
			getUserData('login');
		} else  if (response.status === 'not_authorized'){
			//user is not authorized
			document.getElementById('loginBtn').style.display = 'block';
			/* document.getElementById('logoutBtn').style.display = 'none'; */
		}else {
		      // The person is not logged into Facebook, so we're not sure if
		      // they are logged into this app or not.
		      document.getElementById('loginBtn').style.display = 'block';
		      /* document.getElementById('logoutBtn').style.display = 'none'; */
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
			/* document.getElementById('logoutBtn').style.display = 'none'; */
			
			getUserData('login');
		}
		else
		{
			document.getElementById('loginBtn').style.display = 'block';
			/* document.getElementById('logoutBtn').style.display = 'none'; */
		}
	}, {scope: 'email,public_profile,user_friends', return_scopes: true});
}, false);

document.getElementById('searchBtn').addEventListener('click', function() {
	//do the login
	FB.login(function(response) {
		if (response.authResponse) {
			//user just authorized your app
			document.getElementById('loginBtn').style.display = 'none';
			/* document.getElementById('logoutBtn').style.display = 'none'; */
			getUserData('search');
		}
		else
		{
			document.getElementById('loginBtn').style.display = 'block';
			/* document.getElementById('logoutBtn').style.display = 'none'; */
		}
	}, {scope: 'email,public_profile,user_friends', return_scopes: true});
}, false);


/* document.getElementById('logoutBtn').addEventListener('click',
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
  }, false); */
 
</script>

    </section><!-- .at-home .parallax #at-home -->
    <!--////////////////////////////////
    ///////// Home Section End /////////
    /////////////////////////////////-->


    <!--///////////////////////////////////////
    ///////// Features Section Start //////////
    ////////////////////////////////////////-->
    <section class="at-features bgwhite" id="at-features">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="sec-title">
              <h3><span class="thin-txt">Our Website</span> Features</h3>
              <p></p>
            </div><!-- .sec-title -->
          </div><!-- .col-md-12 -->
        </div><!-- .row -->
        <div class="row mb30">
          <div class="col-md-3">
            <div class="feature">
              <div class="feature-icon">
                <i class="fa fa-shield"></i>
              </div>
              <h3 class="feature-title"><span class="thin-txt"></span>Secure</h3>
              <p class="feature-desc">We are building a community on the basis of mutual trust among the users of CoWay</p>
            </div><!-- .feature -->
          </div><!-- .col-md-3 -->
          <div class="col-md-3">
            <div class="feature">
              <div class="feature-icon">
                <i class="pe-7s-science"></i>
              </div>
              <h3 class="feature-title"><span class="thin-txt">Eco</span> Friendly</h3>
              <p class="feature-desc">By taking cars off the streets, we reduce the pollution generated by the combustion of fossil fuels.</p>
            </div><!-- .feature -->
          </div><!-- .col-md-3 -->
          <div class="col-md-3">
            <div class="feature">
              <div class="feature-icon">
                <i class="pe-7s-share"></i>
              </div>
              <h3 class="feature-title"><span class="thin-txt">Share</span> Easily</h3>
              <p class="feature-desc">We help the world by spreading the culture of the Sharing Economy!</p>
            </div><!-- .feature -->
          </div><!-- .col-md-3 -->
          <div class="col-md-3">
            <div class="feature">
              <div class="feature-icon">
                <i class="fa fa-inr"></i>
              </div>
              <h3 class="feature-title"><span class="thin-txt">Save</span> Money</h3>
              <p class="feature-desc">Sharing rides by taking or offering rides is much cheaper than any other way of travelling.</p>
            </div><!-- .feature -->
          </div><!-- .col-md-3 -->
        </div><!-- .row .mb30 -->
      </div><!-- .container -->
    </section><!-- .at-features #at-features -->
    <!--/////////////////////////////////////
    ///////// Features Section End //////////
    //////////////////////////////////////-->

   
    <!--//////////////////////////////////////
    ///////// FunFact Section Start //////////
    ///////////////////////////////////////-->
    <section class="at-funfact bgtransparent">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="all-funfacts">
              <div class="funfact">
                <div class="at-funfact-icon"><i class="pe-7s-users"></i></div>
                <div class="at-funfact-counter" data-from="0" data-to="1000" data-runit="1">0</div>
                <strong class="funfact-title"> + Users</strong>
              </div><!-- .funfact -->
              <div class="funfact">
                <div class="at-funfact-icon"><i class="pe-7s-call"></i></div>
                <div class="at-funfact-counter" data-from="0" data-to="24" data-runit="1">0</div>
                <strong class="funfact-title">x7 Online Support</strong>
              </div><!-- .funfact -->
              <div class="funfact">
                <div class="at-funfact-icon"><i class="fa fa-car"></i></div>
                <div class="at-funfact-counter" data-from="0" data-to="500" data-runit="1">0</div>
                <strong class="funfact-title"> + Rides</strong>
              </div><!-- .funfact -->
            </div><!-- .all-funfacts -->
          </div><!-- .col-md-12 -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .at-funfact -->
    <!--//////////////////////////////////////
    ///////// FunFact Section End ////////////
    ///////////////////////////////////////-->

   
    <!--/////////////////////////////////////////////
    ///////// Subscribe Form Section Start //////////
    //////////////////////////////////////////////-->
    <section class="at-subscribe bgtransparent">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="subscribe-form">
              <h3 class="subscribe-title"><span class="thin-txt">Subscribe</span> Now!</h3>
              <form class="mc-subscribe" role="form">
                <div class="input-group">
                  <input type="email" class="form-control" id="mc-email" placeholder="Enter your email">
                  <span class="input-group-btn">
                    <input type="submit" class="btn btn-lg btn-main" value="Subscribe">
                  </span>
                </div><!-- /input-group -->
              </form>
              <div class="subscribe-result"></div>
            </div><!-- .subscribe-form -->
          </div><!-- .col-md-12 -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .at-subscribe .parallax -->
    <!--///////////////////////////////////////////
    ///////// Subscribe Form Section End //////////
    ////////////////////////////////////////////-->

    <!--/////////////////////////////////////////////
    ///////// Contact Form Section  Start////////////
    //////////////////////////////////////////////-->
    <section class="at-contact bgwhite" id="at-contact">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="sec-title">
              <h3><span class="thin-txt">Still Need Help
                </span>Contact Us</h3>
              <p>We are constantly working to improve our services. Hence, your feedback is extremely important to us. Kindly fill out the form below with your questions, complaints or suggestions and we will get back to you as soon as possible. Thank you for helping us create a better carpooling service!</p>
            </div><!-- .sec-title -->
          </div><!-- .col-md-12 -->
        </div><!-- .row -->
        <div class="row">
          <div class="col-md-6">
            <div class="contact-address">
              <div class="contact-info clearfix">
                <div class="contact-info-icon">
                  <i class="pe-7s-map-marker"></i>
                </div>
                <div class="contact-info-txt">
                  <address>
                    <strong>CoWay</strong><br>
                    <a href="http://maps.google.com/?q=Jaipur, Rajasthan - 302033, India">Jaipur, Rajasthan - 302033<br>
                    India<br></a>
                  </address>
                </div>
              </div><!-- .contact-info .clearfix -->
              <div class="contact-info clearfix">
                <div class="contact-info-icon">
                  <i class="pe-7s-mail"></i>
                </div>
                <div class="contact-info-txt">
                  <a href="mailto:support@coway.com">support@coway.com</a><br>
                  <a href="mailto:admin@coway.com">admin@coway.com</a>
                </div>
              </div><!-- .contact-info .clearfix -->
              <div class="contact-info clearfix">
                <div class="contact-info-icon">
                  <i class="pe-7s-phone"></i>
                </div>
                <div class="contact-info-txt">
                  +123-456-7890<br>
                  +987-654-3210
                </div>
              </div><!-- .contact-info .clearfix -->
              <div class="contact-info clearfix">
                <div class="contact-info-icon">
                  <i class="pe-7s-link"></i>
                </div>
                <div class="contact-info-txt">
                  <a href="http://localhost:8080/testcoway/">http://www.coway.com</a>
                </div>
              </div><!-- .contact-info .clearfix -->
            </div><!-- .contact-address -->
          </div><!-- .col-md-6 -->
          <div class="col-md-6">
            <div class="contact-form">
              <form class="contact-form" role="form">
                <div class="contact-form-container">
                  <div class="row">
                    <div class="col-md-6">
                      <input type="text" id="fname" class="form-control" name="fname" placeholder="Full Name">
                    </div>
                    <div class="col-md-6">
                      <input type="email" id="memail" class="form-control" name="memail" placeholder="Your E-mail">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <input type="text" id="msubject" class="form-control" name="msubject" placeholder="Your subject">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <textarea id="mmessage" class="form-control" name="mmessage" placeholder="Your message"></textarea>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="at-btn-container">
                        <input type="submit" class="btn btn-lg btn-main" data-loading-text="Sending..." value="Send" id="send">
                      </div>
                    </div>
                  </div>
                </div>
              </form>
              <div id="result-message" role="alert"></div>
            </div><!-- .contact-form -->
          </div><!-- .col-md-6 -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .at-contact #at-contact -->
    <!--////////////////////////////////////////////
    ///////// Contact Form Section  End ////////////
    /////////////////////////////////////////////-->

    <!--///////////////////////////////////////
    ///////// Footer Section Start ////////////
    ////////////////////////////////////////-->
    <footer class="bgwhite">
      <div class="copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              &copy; 2015 CoWay. All Rights Reserved.
            </div><!-- .col-md-12 -->
          </div><!-- .row -->
        </div><!-- .container -->
      </div><!-- .copyright -->
    </footer>
    <!--/////////////////////////////////////
    ///////// Footer Section End ////////////
    //////////////////////////////////////-->


    <!-- jQuery and Necessary plugins -->
    <script src="indexassets/js/jquery.min.js"></script>
    <script src="indexassets/js/jquery-ui.min.js"></script>
    <script src="indexassets/js/jquery-migrate-1.2.1.js"></script>

    <!-- Bootstrap Plugin -->
    <script src="indexassets/js/bootstrap.min.js"></script>

    <!-- Loding -->
    <script src="indexassets/js/loading.js"></script>

    <!-- Parallax Plugin -->
    <script src="indexassets/js/jquery.parallax-1.1.3.js"></script>

    <!-- Custom Scrollbar -->
    <script src="indexassets/js/jquery.nicescroll.min.js"></script>

    <!-- Sticky Navbar -->
    <script src="indexassets/js/jquery.nav.js"></script>
    <script src="indexassets/js/headhesive.min.js"></script>

    <!-- OWL Carosel -->
    <script src="indexassets/js/owl.carousel.min.js"></script>

    <!-- Appear Plugin -->
    <script src="indexassets/js/jquery.appear.js"></script>

    <!-- Funfact CountTo Plugin -->
    <script src="indexassets/js/jquery.countTo.js"></script>

    <!-- Animated Background Plugin -->
    <script src="indexassets/js/fss.min.js"></script>

    <!-- prettyPhoto Image Lightbox -->
    <script src="indexassets/js/jquery.prettyPhoto.js"></script>

    <!-- MailChimp -->
    <script src="indexassets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Custom Js Codes -->
    <script src="indexassets/js/scripts.js"></script>

    </div>
  </body>

</html>