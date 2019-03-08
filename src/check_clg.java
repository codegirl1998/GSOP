

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class check_clg
 */
public class check_clg extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check_clg() {
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
		String course_id=request.getParameter("courseid");
		String no_of_stu=request.getParameter("no");
		String usn=request.getParameter("usn");
		String year=request.getParameter("year");
		String company_id=request.getParameter("company_id");
	
		int no=Integer.parseInt(no_of_stu);
		System.out.println(no);
		//int i=new dataquery().fetch_clg_strength(company_id, course_id);
	
		
		int stu=new dataquery().fetch_stu_strength(course_id);
		System.out.println(stu);
		
		
		
			
			/*request.setAttribute("company_id", company_id);
			
			request.setAttribute("course_id",course_id );
			RequestDispatcher rd=request.getRequestDispatcher("company_forward1.jsp");
			rd.forward(request,response);*/
			if(no>stu)
			{
				System.out.println("no of studebts exceeds");
				request.getRequestDispatcher("/success.jsp").forward(request,response);
				}
			else
			{
				//int i=new dataquery().fetch_clg_strength(company_id, course_id);
				//if(i==1)
				//{
				
				new dataquery().insert_usn(course_id,usn,year,company_id);
				new dataquery().update_no_of_students(course_id,no,stu);
				//response.getWriter().println("U have ");
				
				request.getRequestDispatcher("/event1.jsp").forward(request,response);
				System.out.println("Thanku");
				
				}
			
		
	}
	
}
