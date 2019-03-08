

import java.io.IOException;
import java.io.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class myservlet1
 */
@WebServlet("/collegerequest")
public class collegerequest extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public collegerequest() {
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
		// TODO Auto-generated method stub
		String colid=request.getParameter("colid");
		String colname=request.getParameter("colname");
		String cname=request.getParameter("cname");
		String comid=request.getParameter("comid");
		String comname=request.getParameter("comname");
		
		
		
	
		      /*HttpSession session = request.getSession(true);	    
	          session.setAttribute(comidkey,comid); */
	          
		System.out.println("hii");
		
		new dataquery();
		String i= dataquery.request(colid,colname,cname,comid,comname);
		//System.out.println("i"+i);
		request.setAttribute("i", i);
		//System.out.println("i1"+i);
		if(i=="y")
		{
			try{
			new dataquery();
			
			
			RequestDispatcher rd = request.getRequestDispatcher("collegerequest.jsp");
			rd.forward(request, response);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			

		}
		else
			request.getRequestDispatcher("/collegerequest.jsp").forward(request, response);
		

	}
}
