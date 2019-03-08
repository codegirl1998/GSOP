
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public registration() {
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
		
		String clgid=request.getParameter("coid");
		String clgname=request.getParameter("coname");
		String clgmail=request.getParameter("coemail");
		String clginfo=request.getParameter("coinfo");
		String clgpass=request.getParameter("pass");
		
		String i=new dataquery().register_clg(clgid,clgname,clgmail,clginfo,clgpass);
		request.setAttribute("i", i);
		if(i=="y")
		{
			System.out.println("yes yes");
			try{
				new dataquery();
				dataquery.sendmail1(clgmail);
				System.out.println("mail sent");
				RequestDispatcher rd = request.getRequestDispatcher("middle.jsp");
				rd.forward(request, response);
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
			}
		else
			request.getRequestDispatcher("/selectsignup.jsp").forward(request,response);
			

}
}
