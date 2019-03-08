

import java.io.IOException;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class eventserv
 */
@WebServlet("/eventserv")
public class eventserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public eventserv() {
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
		// TODO Auto-generated method stub
		String course_id=request.getParameter("course_id");
		String title=request.getParameter("title");
		String company_name=request.getParameter("company_name");
		String company_id=request.getParameter("company_id");
		String description=request.getParameter("description");
		String no_of_student=request.getParameter("no_of_student");
		String skills=request.getParameter("skills");
		String no_of_vol=request.getParameter("no_of_vol");
		String email=request.getParameter("email");
		String start_date=request.getParameter("start_date");
		String end_date=request.getParameter("end_date");
		//int noofstud=Integer.parseInt(noofstud1);
		//int noofvol=Integer.parseInt(noofvol1);
		
	
		
		new dataquery();
		String i= dataquery.events_m(course_id,title,company_name,company_id,description,no_of_student,skills,no_of_vol,email,start_date,end_date);
		request.setAttribute("i", i);
		System.out.println(i);
		if(i=="y"|i=="n")
		{
			request.getRequestDispatcher("/company_forward1.jsp").forward(request,response);
		}
		
		
		
		
		
		
		
	}

}
