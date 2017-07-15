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
	
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap-clockpicker.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/github.min.css">
	

<style type="text/css">
.row.vdivide [class*='col-']:not(:last-child):after {
  background: #e0e0e0;
  width: 1px;
  content: "";
  display:block;
  position: absolute;
  top:0;
  bottom: 0;
  right: 0;
  min-height: 70px;
}
</style>
<script>
function loadXMLDoc()
{
var xmlhttp;
var keys=document.offer.dep_state.value

if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 
xmlhttp.onreadystatechange=function()
  {
 
removeall();
 
  if (xmlhttp.readyState==4)
    {
            z=0;
            var roott=xmlhttp.responseXML.documentElement;
            var ress=roott.getElementsByTagName("empname")[z].childNodes[0].nodeValue;
 
            while(ress!=null)
            {
                    addoptions(ress)
                    z++
             var ress=roott.getElementsByTagName("empname")[z].childNodes[0].nodeValue;
            }
    }
 
    function removeall()
    {
 
        var ct=document.offer.dep_city.length;
        for(i=ct; i>=0; i--)    {    
            document.offer.dep_city.options[i]=null;
             }
    }
 
    function addoptions(reslt)
    {
 
        var ct1=document.createElement("OPTION");
        ct1.text=reslt;
        ct1.value=reslt;
        document.offer.dep_city.options.add(ct1);
 
    }
}    
 
xmlhttp.open("GET","db_fetch.jsp?ok="+keys,true);
xmlhttp.send();
}


function loadXMLDoc1()
{
var xmlhttp;
var keys=document.offer.des_state.value

if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 
xmlhttp.onreadystatechange=function()
  {
 
removeall();
 
  if (xmlhttp.readyState==4)
    {
            z=0;
            var roott=xmlhttp.responseXML.documentElement;
            var ress=roott.getElementsByTagName("empname")[z].childNodes[0].nodeValue;
 
            while(ress!=null)
            {
                    addoptions(ress)
                    z++
             var ress=roott.getElementsByTagName("empname")[z].childNodes[0].nodeValue;
            }
    }
 
    function removeall()
    {
 
        var ct=document.offer.des_city.length;
        for(i=ct; i>=0; i--)    {    
            document.offer.des_city.options[i]=null;
             }
    }
 
    function addoptions(reslt)
    {
 
        var ct1=document.createElement("OPTION");
        ct1.text=reslt;
        ct1.value=reslt;
        document.offer.des_city.options.add(ct1);
 
    }
}    
 
xmlhttp.open("GET","db_fetch.jsp?ok="+keys,true);
xmlhttp.send();
}


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
	<div class="jumbotron">
	<div class="row vdivide">
	<fieldset>
		<legend>Departure</legend>
			<form name="offer" role="form">
			<div class="col-xs-4">
    			<div class="form-group">
     				<label for="dep_state">Departure:</label>
    		    </div>
      			<div class="form-group">
       				<label class="control-label" for="dep_state">State:</label>
        			<select required class="form-control" name="dep_state" onchange="loadXMLDoc()">
         				<option>select</option>
	      				<%
		    				Connection con1=DBInfo.getConnection();
		    				PreparedStatement ps1=con1.prepareStatement("select distinct city_state from cities");
		   					ResultSet rs1=ps1.executeQuery();
		    				while(rs1.next())
		    				{
		  				%>
		  					<option value="<%=rs1.getString("city_state") %>"><%=rs1.getString("city_state") %></option>
	      					<%
	       					} 
				             %>
        			</select>
      			</div>
	     		<div class="form-group">
	      			<label for="dep_city">City:</label>
				    <select required class="form-control" name="dep_city">
		    			<option></option>
		   			 </select>
	      		</div>    
           	</div>
		    <div class="col-xs-4">
		    	<div class="form-group">
		     		<label for="dep_state">Destination:</label>
		      	</div>
		      	<div class="form-group">
			        <label class="control-label" for="des_state">State:</label>
		         	<select required class="form-control" name="des_state" onchange="loadXMLDoc1()">
		          		<option>select</option>
			      		<%
				    		Connection con2=DBInfo.getConnection();
				    		PreparedStatement ps2=con2.prepareStatement("select distinct city_state from cities");
				   			ResultSet rs2=ps2.executeQuery();
				    		while(rs2.next())
				    		{
				  		%>
				  		<option value="<%=rs2.getString("city_state") %>"><%=rs2.getString("city_state") %></option>
			      		<%
			       			} 
		          		%>
		        	</select>
		      	</div>
		     	<div class="form-group">
		      		<label for="des_city">City:</label>
		         	<select required class="form-control" name="des_city">
			    		<option></option>
			   		</select>
		      	</div>      
		    </div>
		    <div class="form-group">
		    	<label for="date">Departure Date:</label>      
		    	<%@include file="assets/datetime/date.html" %>      
		    </div> 
		    <div class="form-group">
		    	<div class="col-sm-1">  
		      		<label for="date">Departure Time:</label> 
		    	   	<input type="number" required="required" class="form-control span1" id="name" min="00" max="12" placeholder="HH">
		    		<input type="number" required="required" class="form-control span1" id="name" min="00" max="59" placeholder="Min">
		        	<select class="form-control span1" id="sel1">
				    	<option>AM</option>
				    	<option>PM</option>
			 		</select>
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
</div>
</body>
</html> 