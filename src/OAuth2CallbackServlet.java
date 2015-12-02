/*@author Praveen Kumar Jhanwar
 * roll no - 2014078 
 * @author Siddharth Singh
 * roll no - 2014105*/

import java.io.ByteArrayInputStream;
import java.io.IOException;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.scribe.model.OAuthRequest;
import org.scribe.model.Response;
import org.scribe.model.Token;
import org.scribe.oauth.OAuthService;
@WebServlet(urlPatterns={"/oauth2callback"}, asyncSupported=true) 
public class OAuth2CallbackServlet extends HttpServlet { /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override 
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
      throws IOException, ServletException {
      //Check if the user have rejected 
      String error = req.getParameter("error"); 
      if ((null != error) && ("access_denied".equals(error.trim()))) { 
         HttpSession sess = req.getSession(); 
         sess.invalidate(); 
         resp.sendRedirect(req.getContextPath()); 
         return; 
      }
      //OK the user have consented so lets find out about the user 
      AsyncContext ctx = req.startAsync(); 
      ctx.start(new GetUserInfo(req, resp, ctx)); 
   } 
}
