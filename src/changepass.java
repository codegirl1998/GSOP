

import java.io.IOException;
import java.sql.DriverManager;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class changepass
 */
@WebServlet("/changepass")
public class changepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String type=request.getParameter("type");
		String email = request.getParameter("email");    
		String cpassword = request.getParameter("cpassword");    
		String npassword = request.getParameter("npassword");  
		String n1password = request.getParameter("n1password");  
System.out.println(cpassword);
System.out.println(npassword);
System.out.println(n1password);
System.out.println(type);
System.out.println(type.equals("college"));
new dataquery();
int i=0,j=0,k=0;
		//Statement st = (Statement) con.createStatement();
		if(type.equals("college"))
		{
			System.out.println("college");
		
			j=dataquery.change_pass_clg(cpassword,npassword,n1password,email);
		}
		else if(type.equals("company"))
		{
			System.out.println("college");
		
			k=dataquery.change_pass_com(cpassword,npassword,n1password,email);
		}
		else
			i=dataquery.change_pass(cpassword,npassword,n1password,email);
		System.out.println("j="+j);
        if(i==1)
        {
        	request.setAttribute("alertMsg", "Password changed successfully");
        	RequestDispatcher rd=request.getRequestDispatcher("/vol_register_course.jsp");
        	rd.include(request, response);
        }
        else if(j==1)
        {
        	request.setAttribute("alertMsg", "Password changed successfully");
        	RequestDispatcher rd=request.getRequestDispatcher("/event1.jsp");
        	rd.include(request, response);
        }
        else if(k==1)
        {
        	request.setAttribute("alertMsg", "Password changed successfully");
        	RequestDispatcher rd=request.getRequestDispatcher("/companyui.jsp");
        	rd.include(request, response);
        }
        else
        {
        	PrintWriter out = response.getWriter();
        	 out.println("<html>");
             out.println( "<body>Password cannot be updated</body>" );
             out.println("</html>");
        }
		// TODO Auto-generated method stub
	}

}
