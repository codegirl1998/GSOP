<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="javax.servlet.*"%>
<%@page import="java.util.Enumeration" %>



<%@page import="java.text.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
#makeMeScrollable
		{
			width:100%;
			height: 330px;
			position: relative;
		}
		.button1 {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 50%;
}
//popup
.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
/* The actual popup */
.popup .popuptext {
    visibility: hidden;
    width: 160px;
    height:100px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 2;
    margin:5px;
    position: bottom;
    //z-index: 1;
    bottom: 125%;
    left: 50%;
    //margin-left: -80px;
}


/* Popup arrow */
.popup .popuptext::after {
    content: "";
    position: absolute;
    bottom: 100%;
    right: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}


/* Toggle this class - hide and show the popup */
.popup .show {
    visibility: visible;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
}
/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
.right {
    position: absolute;
    right: 0px;
    width: 300px;
    //border: 3px solid #73AD21;
    padding: 10px;
}

    .div2 {
            width: 300px;
            height:400px;    
            padding: 10px;
            }
		li {
    float: left;
}




.marquee{
   overflow:hidden;
   
}
 .st{
  display: flex;
   flex-direction: row;
   justify-content: flex-start; 
   list-style: none;
   padding: 0;
   white-space: nowrap;

   }
   .btn-primary{
   background-color:blue;
   }
   .btn-l{width:50%;}
   .btn-xl {
    
    width:80%; 
}
 
	</style>
	<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Voluntary Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link rel="Stylesheet" type="text/css" href="css/smoothDivScroll.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>

<body >
 <%@include file="header.jsp"%>
<!-- 
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#"><font color="white" style="font-family:carlito;font-size:100%;font-weight:bold;text-transform: capitalize;">VOLUNTEER MANAGEMENT</font></a></h1>
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="homepage.jsp" accesskey="1" title="">Home</a></li>
				<li><a href="selectsignup.jsp" accesskey="2" title="">Sign up</a></li>
				<li><a href="login1.jsp" accesskey="3" title="">Login</a></li>
				<li><a href="frontevent.jsp" accesskey="4" title="">Courses</a></li>
				<li><a href="aboutus.jsp" accesskey="5" title="">About Us</a></li>
			</ul>
		</div>
	</div>
</div> -->

<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
					
				<center><h1><b><font color="blue" style="font-family:carlito;font-size:200%;"><marquee direction="right">DREAM BIG</marquee></font></b></h1></center>
					
<br>
<br>
<div id="makeMeScrollable">
		<img src="images/img66.jpg" alt="Demo image" id="leaf" width="400" height="400" />
		
		
		
		<img src="images/img55.jpg" alt="Demo image" id="leaf" width="400" height="400" />
		
		<img src="images/img22.jpg" alt="Demo image" id="gnome" width="400" height="400"  />
		<img src="images/img66.jpg" alt="Demo image" id="river" width="400" height="400" />
		<img src="images/img33.jpg" alt="Demo image" id="gnome" width="400" height="400"  />
		<img src="images/img22.jpg" alt="Demo image" id="gnome" width="400" height="400"  />	
		
		<img src="images/img55.jpg" alt="Demo image" id="leaf" width="400" height="400" />
		
		
		
		
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>

	<!-- jQuery UI (Custom Download containing only Widget and Effects Core)
	     You can make your own at: http://jqueryui.com/download -->
	<script src="js/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
	
	<!-- Latest version (3.1.4) of jQuery Mouse Wheel by Brandon Aaron
	     You will find it here: https://github.com/brandonaaron/jquery-mousewheel -->
	<script src="js/jquery.mousewheel.min.js" type="text/javascript"></script>

	<!-- jQuery Kinectic (1.8.2) used for touch scrolling -->
	<!-- https://github.com/davetayls/jquery.kinetic/ -->
	<script src="js/jquery.kinetic.min.js" type="text/javascript"></script>

	<!-- Smooth Div Scroll 1.3 minified-->
	<script src="js/jquery.smoothdivscroll-1.3-min.js" type="text/javascript"></script>

	<!-- If you want to look at the uncompressed version you find it at
	     js/jquery.smoothDivScroll-1.3.js -->

	<!-- Plugin initialization -->
	<script type="text/javascript">
		// Initialize the plugin with no custom options
		$(document).ready(function () {
			// None of the options are set
			$("div#makeMeScrollable").smoothDivScroll({
				autoScrollingMode: "onStart"
			});
		});
	</script><br />
		<p class="button-style"><a href="selectsignup"><marquee direction="right">Join us...We help to overcome the gap between college and industry by helping the students to meet the industrial experts.</marquee></a></p>
				</div>
			</div>
		</div>
	</div>
</div>
<br />
<br />
	<div class="container-fluid" >
  <div class="row">
    <h1></h1> 
   <div class="col-sm-3" style="background-color:white;left:100px;">
			<button type="button" class="btn btn-primary btn-xl" style="background-color:blue;margin-bottom:30px;width:100%">Oncoming Events</button><br/><br />
			<% boolean ischecked=false;
	String x1;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/dell", "root", "root");
				Statement st = con.createStatement();
				/*Object idcom=session.getAttribute("comid");
				String id=(String)idcom;
				System.out.println("comid"+id);*/%>
			
			<ul class="style3">
			<%int j=0; %>
			
			<% ResultSet rs = st.executeQuery("SELECT * FROM events ORDER BY RAND()");
				while (rs.next()) {
		%>
				
					<%Date d=new Date();
						DateFormat df=new SimpleDateFormat("E MMM dd hh:mm:ss Z yyyy");
						Date date1=df.parse(d.toString());
						System.out.println(date1);
						System.out.println(rs.getDate(10));
					    Date d1=rs.getDate(10);
					    int i;
						i=d1.compareTo(date1);
						System.out.println(i);
						%>
						<li class="first">
						<%if(i>0){ %>
					<p class="date"><%=rs.getDate(10)%> </p>
				   <p><a href="login.jsp "><%=rs.getString(2)%></a></p>
				   <%
				   j++;} %>
					
				</li>
				<%if(j==3)break; %>
				<%
			}
	%>
	
			
			</ul>
		</div>
<%
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

   
     

     <div class="col-sm-6" ></div>
 <div class="col-sm-3" style="background-color:white;right:100px">
    <div class="div2"><button type="button" class="btn btn-primary btn-xl" style="background-color:blue;text-align: center;width:300px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OBJECTIVE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
      <h1></h1><marquee direction = "up">
    <ol><li>"Great culturework life balance is superb" (in 1649 reviews)</li> 

        <li>"Allow you to work from home or the office" (in 629 reviews)</li>
        <li>"Work/life balance can be a challenge" (in 376 reviews)</li>

        <li>"Upper management was standard dysfunctional" (in 136 reviews)</li></ol>
        </marquee></div>
     </div>
    </div>
     </div>
<script>
// When the user clicks on div, open the popup
function myFunction1() {
    var popup = document.getElementById("myPopup1");
    popup.classList.toggle("show");
}
function myFunction2() {
    var popup = document.getElementById("myPopup2");
    popup.classList.toggle("show");
}
function myFunction3() {
    var popup = document.getElementById("myPopup3");
    popup.classList.toggle("show");
}
</script> 
		
			<center><div class="container" style="right:100px;left:100px;top:100px">
		<div>
		<button type="button" class="btn btn-primary btn-xl" style="background-color:blue;text-align: center;width:1125px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;What Others Tell?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
	<center>	<ul class="st" style="padding-left:200px;">
					
	
  <li><div class="popup" onclick="myFunction2()"><b>College   </b><img style ="margin-left: 100px;margin-top:20px "src="images/college.png" alt="college" width="50" height="50" />
  <span class="popuptext" id="myPopup2">College!</span></div></li>
  <li><div class="popup" onclick="myFunction3()"><b>Company</b><img style ="margin-left: 100px;margin-top:20px" src="images/comp.jpg" alt="company" width="50" height="50" /> 
  <span class="popuptext" id="myPopup3">company!</span></div></li>
  <li><div class="popup" onclick="myFunction1()"><b>Students</b><img style ="margin-left: 100px;margin-top:20px;left:20px"src="images/stud.jpg" alt="student" width="50" height="50" />
  <span class="popuptext" id="myPopup1">Student!</span></div></li>
  </ul></center>
  </div>
  </div></center>
  <br /><br/><br/>
  <%@include file="footer.jsp"%>
  <!-- <div id="footer" class="container">
	<p>Volunteer management system.</p>
</div> -->

</body>
</html>