/*@author Praveen Kumar Jhanwar
 * roll no - 2014078 
 * @author Siddharth Singh
 * roll no - 2014105*/

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class alldata
 */
@WebServlet("/filterdata")
public class filterdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public filterdata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req,resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		if(session.getAttribute("adminActive") == null){
			if(verify_admin(req)){
				RequestDispatcher rd = req.getRequestDispatcher("filterdata.jsp");
				//resp.sendRedirect("currentOrders.jsp");
				session.setAttribute("adminActive", "true");
				rd.forward(req, resp);
				return;
			}
			
			else{
				RequestDispatcher rd = req.getRequestDispatcher("admin.jsp");
				req.setAttribute("wrong", true);
				session.setAttribute("adminActive", "false");
				rd.forward(req, resp);
			}
		}
		else{
			RequestDispatcher rd = req.getRequestDispatcher("filterdata.jsp");
			session.setAttribute("adminActive", "true");
			rd.forward(req, resp);	
		}
	}
	public boolean verify_admin(HttpServletRequest request){
		if(request.getParameter("userName").equals("admin") && request.getParameter("password").equals("pass"))
			return true;
		else 
			return false;
	}

}
