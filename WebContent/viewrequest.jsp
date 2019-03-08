<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Statement"%>
<%@page import=" java.io.*"%>
<%@page import=" java.util.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>



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

<%String com="";
String id=session.getAttribute("param").toString();
//System.out.println(id);%>
<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/dell", "root", "root");
				Statement st = con.createStatement();
				Statement se = con.createStatement();
				Statement as=con.createStatement();
				/*Object idcom=session.getAttribute("comid");
				String id=(String)idcom;
				System.out.println("comid"+id);*/
				ResultSet rs = st.executeQuery("select name from company where email='"+id+"'");
				if(rs.next()){
					 com=rs.getString(1);
%>
					
				 
			
	
	
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
						<h2 style="font-family:carlito;color:white; font-style:italic; text-transform: uppercase;">  Volunteer Management </h2>
			
		</div>
		<div id="menu">
			<ul>
				<li><a href="homepage.jsp" accesskey="2" title="">Logout</a></li>
				<li><a href="vol_register.jsp">Volunteer register</a>
				<li><a href="event2.jsp">My Events</a>
				
 				
				
		</div>
	</div>
</div>
<div id="wrapper">
	<div id="page-wrapper">
		<div id="page">
			<div id="wide-content">
				<div class="container">  
				       
  <table class="table table-bordered table-striped" border="1 px solid black">
    <thead>
     <tr>
     		<th>Request Number</th>
			<th>College name</th>
			<th>College id</th>
			<th>Email</th>
			<th>Course</th>
			<th>Confirmation</th>
		</tr>
    </thead>
						
				<%	
				
				 ResultSet re=se.executeQuery("select * from college_request where companyname='"+com+"'");
				 ResultSet rp;
				while(re.next())
				{
					rp=as.executeQuery("select clg_email from reg_clg1 where clg_id='"+re.getString(2)+"'");
					rp.next();
				%>
					<tr>
						<td><%=re.getString(1) %></td>
						<td><%=re.getString(4).toUpperCase()%></td>
		
			<td><%=re.getString(2)%></td>
			
			<td><%=rp.getString(1) %></td>
			<td><%=re.getString(5)%></td>
			
			
			<td colspan=7><a href="sendconfirmation.jsp?comp=<%=re.getString(2) %>">Send Confirmation</a></td>
					</tr>
				<%		
				}
				} %>
						
					</table>
				

	<%
			}catch (Exception e) {
			e.printStackTrace();
		}
	%>				</div>
					
					

  


  
 


 </body>
 
 </div>
			</div>
		</div>
	</div>
	</div>
	
	<div id="footer" class="container">
	
</div>
</html>