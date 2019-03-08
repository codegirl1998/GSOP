<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : Angled Theme 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20131104

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Volunteer Education Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<style>
table{
border-spacing:1em;}
</style>
<script language="JavaScript" type="text/javascript">
<!--
function checkform ( form )
{
  // see https://www.thesitewizard.com/archive/validation.shtml
  // for an explanation of this script and how to use it on your
  // own website

  // ** START **
  if (form.title.value==""||form.namecom.value==""||form.descp.value==""||form.noofcol.value==""||form.noofstd=="") {
    alert( "Please fill all the fields" );
    form.courseid.focus();
    form.title.focus();
    form.namecom.focus();
    form.idcom.focus();
    form.descp.focus();
    form.noofstd.focus();
    form.skills.focus();
    form.noofvol.focus();
    return false ;
  }
  // ** END **
  return true ;
}
</script>
<body>
<%@include file="header1.jsp"%>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
					<h2 style="font-family:carlito;font-style:italic;font-weight:bold; color:#006666">ADD</h2>
					
					<form action="eventserv" method="post" onsubmit='return checkform(this)'>
				<center>
					
<table style="margin-top:-20%; margin-right:-35%;">
<div>
<img src="images/register4.jpg" style="float=:left; margin-left:-65%; margin-right:-10%; margin-bottom:-5%;"></img>
</div>

<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">course_id:</td><td><input type="text" name="course_id" id="course_id">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">title:</td><td><input type="text" name="title" id="title">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Company Name:</td><td><input type="text" name="company_name" id="company_name">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Company ID:</td><td><input type="text" name="company_id" id="company_id">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold;  font-style:italic;">Description:</td><td> <TEXTAREA NAME="description" id="description" ROWS="5"></TEXTAREA>
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">No of students</td><td> <input type="text" name="no_of_student" id="no_of_student">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Skills</td><td> <input type="text" name="skills" id="skills">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">No of volunteers</td><td> <input type="text" name="no_of_vol" id="no_of_vol">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Email</td><td> <input type="email" name="email" id="email">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">Start date(yyyy-mm-dd)</td><td> <input type="date" name="start_date" id="start_date">
</td></tr>
<tr><td>
<font color="black" style="font-family:carlito;font-size:160%; font-weight:bold; font-style:italic;">End date(yyyy-mm-dd)</td><td> <input type="date" name="end_date" id="end_date">
</td></tr>
</table>
<br><br>

		<input type="submit" style="font-family: 'carlito';font-size:medium;color: white; background-color: blue; margin-right:-40%;height:30px;width:75px;border-radius:10px;" value="Register"></input>

 

</center>
  

  </form>
 


 </body>
 
 </div>
			</div>
		</div>
	</div>
	</div>
	
	
	
</div>
<%@include file="footer.jsp"%>
</html>
	






