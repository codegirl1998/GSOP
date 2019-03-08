<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload File</title>
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
    
        <form method="post" action="uploadServlet" enctype="multipart/form-data">
            <center>
                <table border="1" width="25%" cellpadding="5">
                    <thead> 
                            <th colspan="3">Upload File</th>        
                    </thead>
                    <tbody>
                    	 <tr>    
                            <td>Course_id : </td>
                            <td><input type="text" name="course_id" size="30"></td>
                        </tr>
                       
                         <tr>    
                            <td>usn: </td>
                            <td><input type="text" name="usn" size="30"></td>
                        </tr>
                        
                        <tr>
                            <td>year : </td>
                            <td><input type="text" name="year" size="30"></td>
                        </tr>
                      	 <tr>    
                            <td>company_id: </td>
                            <td><input type="text" name="company_id" size="30"></td>
                        </tr>
                        
                         <tr>    
                            <td>Title : </td>
                            <td><input type="text" name="title" size="30"></td>
                        </tr>
                        
                         <tr>    
                            <td>Choose file : </td>
                            <td><input type="file" name="fileuploaded" /></td>
                            
                        </tr>
                            <td colspan="3"><center><input type="submit" value="Upload"></center></td>
                        </tr>
                    </tbody>             
                </table>
            </center>
        </form>
        
        <br><br>
        <center>
        <table border="1" width="25%" cellpadding="5">
            <thead> 
               <th colspan="6">Uploaded Files</th>        
            </thead>
                <tbody>
                    <tr>
                        <td><center><b>course_id</b></center><td><center><b>usn</b></center></td><td><center><b>year</b></center></td>
                        <td><center><b>company_id</b></center> <td><center><b>title</b></center> <td><center><b>file</b></center>
                    </tr>
                    
                    <%
                        try
                        {
                                /*cert_db dbconn=new cert_db();
                                Connection myconnection= dbconn.connection();*/
                                Connection myConnection=null;
                               
                                    Class.forName("com.mysql.jdbc.Driver");
                                    String str = "jdbc:mysql://localhost:3306/dell";
                                    myConnection = DriverManager.getConnection(str,"root","root");
                               
                                
                                String sqlString = "SELECT * FROM certificate";
                                Statement myStatement = myConnection.createStatement();
                                ResultSet rs=myStatement.executeQuery(sqlString);
                                
                                if(!rs.isBeforeFirst())
                                {
                                    %>
                                        <tr>
                                        <td colspan="3"><center><%out.print("No Files!"); %></center></td>
                                        </tr>
                                    <%
                                }    
                                
                                while(rs.next())
                                {   
                            %>
                                    <tr>
                                        <td><center><%out.print(rs.getString("course_id")); %></center></td>
                                         <td><center><%out.print(rs.getString("usn")); %></center></td>
                                         <td><center><%out.print(rs.getString("year")); %></center></td>
                                           <td><center><%out.print(rs.getString("company_id")); %></center></td>
                                        <td><center><%out.print(rs.getString("title")); %></center></td>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        <td><center><a href="view_file.jsp?course_id=<%out.print(rs.getString("course_id"));%>">View</a></center></td>
                                    </tr>
                            <%
                                }
                            %>
                            
                </tbody> 
                
        </table>
        </center>>
                           
                            <%
                                rs.close();
                                myStatement.close();
                                myConnection.close();
                        }catch(Exception e){e.printStackTrace();}    
                   // catch (ClassNotFoundException | SQLException ex) {Logger.getLogger(cert_db.class.getName()).log(Level.SEVERE, null, ex);}
                    %>
        
        <div style="position: relative">
            <div style="position: fixed ; bottom: 0 ; width:100% ; text-align:center ">
               
            </div>
        </div>  
  
    </body>
</html>
