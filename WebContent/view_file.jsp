<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View File</title>
    </head>
    <body>
        
        <%  
            String id=(request.getParameter("course_id"));
        	String year=(request.getParameter("year"));
            
            Blob file = null;
            byte[ ] fileData = null ;

            try
            {    
            	 Connection myConnection=null;
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 String str = "jdbc:mysql://localhost:3306/dell";
                 myConnection = DriverManager.getConnection(str,"root","root");
                 
                
            
                String sqlString = "SELECT file FROM certificate WHERE course_id = '"+id+"'";
                Statement myStatement = myConnection.createStatement();
                
                ResultSet rs=myStatement.executeQuery(sqlString);
                
                if (rs.next()) 
                {
                    file = rs.getBlob("file");
                    fileData = file.getBytes(1,(int)file.length());
                } else 
                {
                    out.println("file not found!");
                    return;
                }
                
                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "inline");
                System.out.println("hello rach");
                response.setContentLength(fileData.length);
                
                OutputStream output = response.getOutputStream();
                output.write(fileData);
                
                output.flush();
                
            }
            catch(Exception e)
            {
            	e.printStackTrace();
            }
            // catch (SQLException ex) {Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);} 
        %>
        
        <br><br>
       <%-- <a href="main_page.jsp">Go to Main Page...</a>    --%>     
                
        <div style="position: relative">
            <div style="position: fixed ; bottom: 0 ; width:100% ; text-align:center ">
                
            </div>
        </div>
        
    </body>
</html>