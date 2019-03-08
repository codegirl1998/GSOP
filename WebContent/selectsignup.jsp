<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Voluntary Management System</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel|Satisfy' rel='stylesheet' type='text/css' />
<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
<link rel="Stylesheet" type="text/css" href="css/smoothDivScroll.css" />
</head>
<body>
<%@include file="header1.jsp"%>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 65%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: blue;
    color: white;
    padding: 10px 30px;
    margin: 10px 10px;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 30px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
       
    
    }
    
}

</style>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
				<!--<img src="images/joinus1.jpg" style="float:left; margin-top:-1px;" ></img>-->
<script language="JavaScript" type="text/javascript">
<!--
function checkform ( form )
{
	var phoneno=/^\d{10}$/;
  // see https://www.thesitewizard.com/archive/validation.shtml
  // for an explanation of this script and how to use it on your
  // own website

  // ** START **
  if (form.cname.value == ""||form.cid.value==""||form.cmail.value==""||form.ccontact.value==""||!form.cconatct.value.match(phoneno)||form.cpass.value=="") {
	  if(!form.ccontact.value.match(phoneno) && !form.ccontact.value=="")
			alert("Invalid contact information");
	  else
    alert( "Please fill all the fields" );
   
    return false ;
  }
  // ** END **
  else alert("Password has been sent to your mail.Please login and change the password.");
	return true;
}

function checkform1 ( form )
{
	var phoneno=/^\d{10}$/;
  // see https://www.thesitewizard.com/archive/validation.shtml
  // for an explanation of this script and how to use it on your
  // own website

  // ** START **
  if (form.cname.value == ""||form.cid.value==""||form.cmail.value==""||form.ccontact.value==""||!form.cconatct.value.match(phoneno)||form.cpass.value=="") {
	  if(!form.ccontact.value.match(phoneno) && !form.ccontact.value=="")
			alert("Invalid contact information");
	  else
    alert( "Please fill all the fields" );
   
    return false ;
  }
  // ** END **
  else alert("Password has been sent to your mail.Please login and change the password.");
	return true;
}

function checkform2 ( form )
{
	var phoneno=/^\d{10}$/;
  // see https://www.thesitewizard.com/archive/validation.shtml
  // for an explanation of this script and how to use it on your
  // own website

  // ** START **
  if (form.cname.value == ""||form.cid.value==""||form.cmail.value==""||form.ccontact.value==""||!form.cconatct.value.match(phoneno)||form.cpass.value=="") {
	  if(!form.ccontact.value.match(phoneno) && !form.ccontact.value=="")
			alert("Invalid contact information");
	  else
    alert( "Please fill all the fields" );
   
    return false ;
  }
  // ** END **
  else alert("Password has been sent to your mail.Please login and change the password.");
	return true;
}

<script type="text/javascript">

// polyfill for RegExp.escape
if(!RegExp.escape) {
  RegExp.escape = function(s) {
    return String(s).replace(/[\\^$*+?.()|[\]{}]/g, '\\$&');
  };
}

</script>
</script>
<center>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div>
				<img src="images/joinus.jpg" style="float:left; margin-top:-10px;" ></img>

<button onclick="document.getElementById('id01').style.display='block'" style="width:20%;">College</button>
</br>
</br>

<button onclick="document.getElementById('id02').style.display='block'" style="width:20%;">Company</button>
</br>
</br>
<button onclick="document.getElementById('id03').style.display='block'" style="width:20%;">General</button>
</center>
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="registration" method="post" onsubmit="return checkform1(this)";>
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      
      
      College id:</font></td><td></br><input type="text" name="coid"required></td></tr>
	  <br>
	  <br>
	  College name:</font></td><td></br><input type="text" name="coname"required></td></tr>
      <br>
      <br>
	  Email:</font></td><td></br><input type="text" name="coemail"required></td></tr>
	  <br>
	  <br>
	  Contact:</font></td><td></br><input type="text" name="coinfo"required></td></tr>
	  <br>
	  <br>
	  <p>Password:</font></td><td></br><input type="password" name="pass"required onchange="form.pwd2.pattern = RegExp.escape(this.value);"></p></td></tr>
	  <br>
	  <br>
	  <p>Confirm Password:</font></td><td></br><input type="password" name="pwd2"required name="pwd2" onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"></p>
	  <br><br><input type="submit" style="font-family: 'carlito';font-size:medium;color: white; background-color: blue; margin-right:-55%;height:30px;width:75px;border-radius:10px;" value="Register"></input>
	  
      
      

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      
    </div>
  </form>
</div>

<div id="id02" class="modal">
  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="companyregister" method="post" onsubmit="return checkform(this)";>
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      Name:</td><td></br><input type="text" name="cname" id="cname"required>
      <br>
      Company ID:</td><td></br><input type="text" name="cid" id="cid"required>
      <br>
      Email:</td><td></br><input type="text" name="cmail" id="cmail"required>
      <br>
      <br>
      <br>
      Address:</td><td></br> <input type="text" NAME="textarea1" required >
      <br>
      <br>
      <br>
      Contact:</td><td></br><input type="text" name="ccontact" id="ccontact"required>
      <br>
      <br>
	  Password:</td><td></br><input type="password" name="cpassword" id="cpassword"required>
      <br>
      <br>
	      
      <input type="submit" style="font-family: 'carlito';font-size:medium;color: white; background-color: blue; margin-right:-40%;height:30px;width:75px;border-radius:10px;" value="Register"></input>
      
    </div>
  </form>
</div>


<div id="id03" class="modal">
  <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="genvol" method="post" onsubmit="checkform2(this)">
      <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
     First name:</td><td></br><input type="text" name="firstname" id="firstname"required></input>
     <br>
     <br>
     Last name:</td><td></br><input type="text" name="lastname" id="lastname"required></input>
     <br>
     <br>
     contact:</td><td></br><input type="text" name="phno" id="phno"required></input>
     <br>
     <br>
     Address:</td><td></br><input type="text" name="addr" id="addr"required></input>
     <br>
     <br>
     email id:</td><td></br><input type="text" name="email" id="email"required></input>
     <br>
     <br>
     Type:</td><td></br><input type="text" name="type" id="type"required></input>
     <br>
     <br>
     Skill set:</td><td></br><input type="text" name="skillset" id="skillset"required></input>
     <br>
     <br>
     Username:</td><td></br><input type="text" name="username" id="username"required></input></td></tr>
     <br>
     <br>
	 Password:</td><td></br><input type="password" name="password" id="password"required></input></td></tr>
     <br>
     <br>
      <input type="submit" style="font-family: 'carlito';font-size:medium;color: white; background-color: blue; margin-right:-50%;height:30px;width:75px;border-radius:10px;" value="Register"></input>
</input></a>
    </div>
  </form>
</div>





<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var modal = document.getElementById('id03');

//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}
</script>
<%@include file="footer.jsp"%>
</body>
</html>

