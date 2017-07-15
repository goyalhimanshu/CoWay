
<!DOCTYPE html>
<html lang="en">

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.coway.DBInfo"%>

<%@page import="java.sql.Connection"%>
<head>
<title>Search House</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var keys=document.search.state.value

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
 
        var ct=document.search.city.length;
        for(i=ct; i>=0; i--)    {    
            document.search.city.options[i]=null;
             }
    }
 
    function addoptions(reslt)
    {
 
        var ct1=document.createElement("OPTION");
        ct1.text=reslt;
        ct1.value=reslt;
        document.search.city.options.add(ct1);
 
    }
}    
 
xmlhttp.open("GET","db_fetch.jsp?ok="+keys,true);
xmlhttp.send();
}
</script>
</head>
<body>

<div id="container">   
 
<form name="search" action="ShowAllPost.jsp">
			<div class="form-group">

			<label class="control-label col-sm-2" for="state">State:</label>
			<div class="col-sm-4">
 			<select required class="form-control" name="state" onchange="loadXMLDoc()">
            <option>select</option>
            <%
	            Connection con1=DBInfo.getConnection();
	            //String select="";
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
    		</div> 	
			<div class="form-group">
			<label class="control-label col-sm-2" for="city">City:</label>
			<div class="col-sm-4">
				<select required class="form-control" name="city">
	            <option>----</option>
	    		</select>
    		</div>
  	      </div>
	
</form>
</div>
   </body>

</html>

