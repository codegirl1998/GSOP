

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class vol_register_course
 */
@WebServlet("/vol_register_course")
public class vol_register_course extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public vol_register_course() {
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
		String title=request.getParameter("title");
		String company_id=request.getParameter("company_id");
		String course_id=request.getParameter("course_id");
		String company_name=request.getParameter("company_name");
		String course_name=request.getParameter("course_name");
		String email=(String) request.getSession(false).getAttribute("param");
		//String email=request.getParameter("email");
		//System.out.println(value);
		System.out.println(email);

		//String email1=Session.getAttribute("param").toString();
		new dataquery();
		int i=dataquery.vol_include(title,company_id,course_id,company_name,course_name,email);
		request.getRequestDispatcher("/vol_register_course.jsp").forward(request,response);
		
	}

}
