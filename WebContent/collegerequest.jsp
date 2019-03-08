<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Voluntary Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<style>
table{
border-spacing:1em;}</style>
<body>

<%@include file="header1.jsp"%>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
				

<center>
<script>
function reqfunc()
{
var txt;
var r =confirm("Are u sure?");
if(r==true)
	{
	txt = "request sent";
	 return true;
	}
else
	{
	txt="request not sent";
	 return false;
	}
	document.getElementById("collegerequest").innerHTML = txt;
}
</script>

<form action="collegerequest" method="post" onsubmit='return reqfunc()'>
<center>	
<table >
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;"> College Id:</td><td><input type="text" name="colid" id="colid">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">College Name:</td><td><input type="text" name="colname" id="colname">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Course Name:</td><td><input type="text" name="cname" id="cname">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Company Id:</td><td><input type="text" name="comid" id="comid">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Company Name:</td><td><input type="text" name="comname" id="comname">
</td></tr>
<tr><td>
</table>
<br>
<br>
<input type="submit"style="font-family: 'carlito';font-size:160%;color: white; background-color: blue; margin-right:-12%;height:30px;width:100px;border-radius:10px;align:center" value="REQUEST"></button>
</center>
</div>
</div>
</div>
</div>
</div>
</body>
<%@include file="footer.jsp"%>
</html>