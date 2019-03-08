<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.PreparedStatement"%>

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
	<div id="wrapper">
<div id="page-wrapper">
	
	<div id="wide-content">	
			
				<div>
<body>
<center>
<form action="event_sel" method="post">
<center><marquee><h2 style="font-family:Times New Roman;font-style:italic;font-size: 40px;font-weight:bold;" class="alert-warning">Events</h2></marquee></center>


<div class="container">         
  <table class="table table-bordered table-striped" border="1 px solid black">
    <thead>
     <tr>
			<th>Title</th>
			<th>Company name</th>
			
			<th>Course ID</th>
			<th>Description</th>
			<th>No of students</th>
			<th>Skills</th>
			<th>Select</th>
		</tr>
    </thead>
	
		<% boolean ischecked=false;
		
		String x1;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn= DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/dell", "root", "root");
				
	                Statement st=conn.createStatement();
               
				//Statement st = con.createStatement();
				//String sql = "INSERT INTO  events(title,namecom,idcom,descp,noofstd,skills,noofvol,email,start,end) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                
				/*Object idcom=session.getAttribute("comid");
				String id=(String)idcom;
				System.out.println("comid"+id);*/
				
				/*Object idcom=session.getAttribute("comid");
				String id=(String)idcom;
				System.out.println("comid"+id);*/
				ResultSet rs = st.executeQuery("select * from events");
				
				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(2)%></td>
		
			<td><%=rs.getString(3)%></td>
			
			<td><%=rs.getString(1)%></td>
		
			<td><%=rs.getString(5)%></td>
		
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
		
			
					<td><input type="radio" value=<%=rs.getString(1)%> name="course_id" id="c1" ></td>
			
			
		</tr>
		
	<%
			}
	%>
	</table>
	<%
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	
	
	
<br><br>
		<input type="submit" style="font-family: 'carlito';font-size:medium;color: white; background-color: blue; height:30px;width:75px;border-radius:10px;" value="Register" >

</div>

</form>

</center>
</body>


				</div>
			</div>
		</div>
	</div>
<%@include file="footer.jsp"%>
</body>
</html>