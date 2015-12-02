/*@author Praveen Kumar Jhanwar
 * roll no - 2014078 
 * @author Siddharth Singh
 * roll no - 2014105*/
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.scribe.builder.ServiceBuilder;
import org.scribe.oauth.OAuthService;

/**
 * Servlet implementation class googleplus
 */
@WebServlet("/googleplus")
public class GooglPlusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CLIENT_ID = "426591556444-uhe9gadaos07bebgd5hjasmspbesuocm.apps.googleusercontent.com";
	private static final String CLIENT_SECRET = "JiCsjYVpexped2L9M2Oi97QA";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GooglPlusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	System.out.println("eff");
		ServiceBuilder builder= new ServiceBuilder(); 
	//	System.out.print("f");
		  OAuthService service = builder.provider(	Google2Api.class).apiKey(CLIENT_ID) 
	         .apiSecret(CLIENT_SECRET) 
	         .callback("http://localhost:8080/project_admin/oauth2callback")
	         .scope("openid profile email " + 
                "https://www.googleapis.com/auth/plus.login " + 
                "https://www.googleapis.com/auth/plus.me")  
	         .debug() 
	         .build(); //Now build the call
	      HttpSession sess = request.getSession(); 
	      sess.setAttribute("oauth2Service", service);
	      response.sendRedirect(service.getAuthorizationUrl(null));
	      
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
