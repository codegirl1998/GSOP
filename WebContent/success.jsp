<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Voluntary Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<script language="JavaScript" type="text/javascript">
<!--
function checkform(form){
	
	int no1=Integer.parseInt(form.no.value);
		
if(form.usn.value.count(',')!=(no-1))
	{
		alert("Number of usn doesnot match with number of students");
	return false;
	}

	return true;
}

</script>
<script>function check(){alert("Registration is successfull");}</script>
<body>
<%@include file="header1.jsp"%>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
<body>
<form action=check_clg method=post onsubmit="return checkform(this)";>
<center>
<table style="margin-top:-20%; margin-right:-35%;">
<div>
<img src="images/register.jpg" style="float=:left; margin-left:-65%; margin-right:-10%;"></img>
</div>

<tr><td><font color="black" style="font-family:carlito;font-size:160%; font-style:italic;font-weight:bold;">Your selected course id is:</font></td><td><input type="text" name="courseid" value=<%=session.getAttribute("course_id").toString()%> readonly="readonly"></input></td></tr>
<tr><td><font color="black" style="font-family:carlito;font-size:160%;font-style:italic;font-weight:bold;">usn:</font></td><td><input type="text" name="usn"></td></tr>
<tr><td><font color="black" style="font-family:carlito;font-size:160%;font-style:italic;font-weight:bold;">year:</font></td><td><input type="text" name="year"></td></tr>
<tr><td><font color="black" style="font-family:carlito;font-size:160%;font-style:italic;font-weight:bold;">compnay_id:</font></td><td><input type="text" name="company_id"></td></tr>
<tr><td><font color="black" style="font-family:carlito;font-size:160%;font-style:italic;font-weight:bold;">No of students:</font></td><td><input type="text" name="no"></td></tr>
</table>
<br>
<br>
<a>		<input type="submit" style="font-family: 'carlito';font-size:medium; margin-right:-50%;color: white; background-color: blue; height:30px;width:75px;border-radius:10px;" value="Submit">
</a>
</center>
</form>


</body>

				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>