


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
@WebServlet("/genvol")
public class genvol extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public genvol() {
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
		
		String Firstname=request.getParameter("firstname");
		String Lastname=request.getParameter("lastname");
		String Phno=request.getParameter("phno");
		String Adrress=request.getParameter("addr");
		String Email=request.getParameter("email");
		String Type=request.getParameter("type");
		String Skillset=request.getParameter("skillset");
		String Username=request.getParameter("username");
		String password=request.getParameter("password");
		
		String i=new dataquery().register_general(Firstname,Lastname,Phno,Adrress,Email,Type,Skillset,Username,password);
		request.setAttribute("i", i);
		if(i=="y")
		{
			System.out.println("yes yes");
			try{
				new dataquery();
				dataquery.sendmail1(Email);
				System.out.println("mail sent");
				RequestDispatcher rd = request.getRequestDispatcher("event1.jsp");
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
