

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logincheck1
 */
public class logincheck1 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logincheck1() {
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
		HttpSession session=request.getSession();
		String username=request.getParameter("loemail");
		String password=request.getParameter("lopass");
		
		System.out.println("loop  not enter");
		//HttpSession session=request.getSession();
		System.out.println(username);
		System.out.println(password);
		//session.setAttribute("param",username);
		
		session.setAttribute("param",username);
		session.setAttribute("pass", password);
		String res=new dataquery().logincheck_college(username, password);
		if(res=="y")
		{
			request.getRequestDispatcher("/middle.jsp").forward(request,response);
		}
		else
		{			
			new dataquery();
			String res1=dataquery.logincheck_company(username, password);
			if(res1=="y")
			{
				request.getRequestDispatcher("/companyui.jsp").forward(request,response);
			}
			else
			{		
			    String res2=new dataquery().logincheck_general(username, password);
			    System.out.println(res);
			    if(res2=="y")
				request.getRequestDispatcher("/vol_register_course.jsp").forward(request,response);
				else
					request.getRequestDispatcher("/event1.jsp").forward(request,response);
			}
		}	
}
}