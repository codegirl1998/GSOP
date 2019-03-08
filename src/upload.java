
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 26177215)

public class upload extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
        
                InputStream inputStream = null;

                
                String course_id1=(request.getParameter("course_id"));
                String usn1=(request.getParameter("usn"));
                String year1=(request.getParameter("year"));
                String company_id1=(request.getParameter("company_id"));
                String title1=(request.getParameter("title"));
                Part filePart = request.getPart("fileuploaded");
                System.out.println("he");
                if (filePart != null) 
                {
                    System.out.println(filePart.getName());
                    System.out.println(filePart.getSize());
                    System.out.println(filePart.getContentType());

                    inputStream = filePart.getInputStream();
                }
        
                try 
                {
                    cert_db dbconn=new cert_db();
                    Connection conn= dbconn.connection();
                  // PreparedStatement ps=conn.prepareStatement("select * from certificate where course_id='"+course_id1+"'");
                   //ResultSet rs=ps.executeQuery();
            		//String i= dataquery.certcheck(course_id,usn,year,company_id);
            		//request.setAttribute("i", i);
            		//System.out.println(i);
                   //while(rs.next())
                   //{
                	  
                	   String sql = "update certificate set title=?, file=?" + "where course_id=? and usn=? and company_id=?";
                	  // System.out.println(sql);
                	   PreparedStatement statement = conn.prepareStatement(sql);
           
                	   statement.setString(1, title1);
                	   System.out.println(title1);
                       statement.setString(3, course_id1);
                       statement.setString(4, usn1);
                       statement.setString(5, company_id1);
                   
            		
             
                    if (inputStream != null) 
                    {
                        statement.setBinaryStream(2, inputStream, (int) filePart.getSize());
                    }
                    
                    int row = statement.executeUpdate();
            		
                    if (row > 0) 
                    {
                        out.println("File uploaded!!!");
                        
                        conn.close();
                        
                        RequestDispatcher rs1 = request.getRequestDispatcher("upload_form.jsp");
                        rs1.include(request, response);
                    }
                    else
                    {
                        out.println("Couldn't upload your file!!!");
                        
                        conn.close();
                        
                        RequestDispatcher rs1 = request.getRequestDispatcher("upload_form.jsp");
                        rs1.include(request, response);
                    } 
            		//}
            		
            			
            		

                }catch(Exception e){e.printStackTrace();}     
    }   
}