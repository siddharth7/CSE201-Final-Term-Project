

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class finaluser
 */
@WebServlet("/finaluser")
public class finaluser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public finaluser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = request.getRequestDispatcher("finaluser.jsp");
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println(request.getParameter("inputEmail"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("enrollmentNumber"));
		System.out.println(request.getParameter("addressOfCorrespondence"));
		System.out.println(request.getParameter("mobile"));
		System.out.println(request.getParameter("stream"));
		System.out.println(request.getParameter("PhDAreaPreference1"));
		System.out.println(request.getParameter("PhDAreaPreference2"));
		System.out.println(request.getParameter("PhDAreaPreference3"));
		System.out.println(request.getParameter("gender"));
		System.out.println(request.getParameter("category"));
		System.out.println(request.getParameter("permanentAddress"));
		System.out.println(request.getParameter("disabled"));
		System.out.println(request.getParameter("DateofBirth"));
		System.out.println(request.getParameter("children"));
		System.out.println(request.getParameter("fatherName"));
		System.out.println(request.getParameter("nationality"));
		System.out.println(request.getParameter("permanentAddress"));
		System.out.println(request.getParameter("pincode"));
		System.out.println("fsdasas");
	}

}
