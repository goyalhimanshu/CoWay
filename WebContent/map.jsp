<html>
<head>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true&libraries=places"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/navbar.css">
<script type="text/javascript">
function initialize() {

var input = document.getElementById('searchTextField');
var autocomplete = new google.maps.places.Autocomplete(input);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
<style type="text/css">
    .fieldset-auto-width {
         display: inline-block;
    }
</style>
</head>
<body>
<div class="container">
<div class="jumbotron">
<input id="searchTextField" type="text" size="50"><br>

<fieldset class="fieldset-auto-width">
<legend>Date and time</legend>
</fieldset>
</div>
</div>
</body>
</html>