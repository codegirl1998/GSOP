
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>

<%@ page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="javax.servlet.*"%>
<%@page import="java.util.Enumeration" %>



<%@page import="java.text.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
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


    <style>
    		table { 
    color: #333;
    font-family: Helvetica, Arial, sans-serif;
    width: 1000px;
    border-collapse:
    collapse; border-spacing: 0;
}

td, th { 
    border: 1px solid transparent; /* No more visible border */
    height: 30px;
    transition: all 0.3s;
     /* Simple transition for hover effect */
}

th { 
    background: #DFDFDF;  /* Darken header a bit */
    font-weight: bold;
    font-size:150%;
}

td { 
    background: #FAFAFA;
    text-align: center;
    font-size:120%;
    width:15%;
}

/* Cells in even rows (2,4,6...) are one color */       
tr:nth-child(even) td { background: #F1F1F1; }  

/* Cells in odd rows (1,3,5...) are another (excludes header cells)  */       
tr:nth-child(odd) td { background: #FEFEFE; } 

tr td:hover { background: #666; color: #FFF; } 
/* Hover cell effect! */
</style>

    <body>
    <%@include file="header1.jsp"%>
        <form  action="view_certificate_file.jsp" enctype="multipart/form-data" style="height:1000px">
            <center>
                <table border="1" width="25%" cellpadding="5">
                    <thead> 
                        <center><th colspan="3">Download File</th></center>       
                    </thead>
                    <tbody>
                    	 <tr>    
                            <td>Comapny Id: </td>
                            <td><input type="text" name="comid" size="30"></td>
                        </tr>
                       
                         <tr>    
                            <td>Year:</td>
                            <td><input type="text" name="year" size="30"></td>
                        </tr>
                            <td colspan="3"><center><input type="submit" value="Download"></center></td>
                        </tr>
                    </tbody>             
                </table>
            </center>
        </form>
        <%@include file="footer.jsp"%>
            </body>
</html>
