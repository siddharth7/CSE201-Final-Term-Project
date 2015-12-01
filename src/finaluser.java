import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class finaluser
 */
@WebServlet("/finaluser")
public class finaluser extends HttpServlet {

    public finaluser() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = request.getRequestDispatcher("finaluser.jsp");
        rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println(request.getParameter("inputEmail"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("enrollmentNumber"));
		System.out.println(request.getParameter("addressOfCorrespondence"));
		System.out.println(request.getParameter("mobile"));
		System.out.println(request.getParameter("phdStream"));
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
		
		System.out.println(request.getParameter("board10"));
		System.out.println(request.getParameter("board10p"));
		System.out.println(request.getParameter("pass10"));
		System.out.println(request.getParameter("board12"));
		System.out.println(request.getParameter("board12p"));
		System.out.println(request.getParameter("pass12"));
		System.out.println(request.getParameter("gradDegree"));
		System.out.println(request.getParameter("gradDept"));
		System.out.println(request.getParameter("gradCollege"));
		System.out.println(request.getParameter("gradUniversity"));
		System.out.println(request.getParameter("gradCity"));
		System.out.println(request.getParameter("gradState"));
		System.out.println(request.getParameter("gradYear"));
		System.out.println(request.getParameter("stream"));
		if(request.getParameterValues("stream")[0].toString().equals("CGPA"))
		{
			System.out.println(request.getParameter("gradCGPAScale"));
			System.out.println(request.getParameter("gradCGPA"));
		}
		else
		{
			System.out.println(request.getParameter("gradMarks"));

		}
		System.out.println(request.getParameter("achievements"));

        HttpSession ses = request.getSession(); 
		String inputEmail = ses.getAttribute("email").toString();
//		String inputEmail = request.getParameterValues("inputEmail").toString();
		String name = request.getParameter("name").toString();
		String enrollmentNumber = request.getParameter("enrollmentNumber").toString();
		String addressOfCorrespondence= request.getParameter("addressOfCorrespondence").toString();
		String mobile=request.getParameter("mobile").toString();
		String phdStream= request.getParameter("phdStream").toString();
		String PhDAreaPreference1= request.getParameter("PhDAreaPreference1").toString();
		String PhDAreaPreference2= request.getParameter("PhDAreaPreference2").toString();
		String PhDAreaPreference3= request.getParameter("PhDAreaPreference3").toString();
		String gender=request.getParameter("gender").toString();
		String category=request.getParameter("category").toString();
		String disabled=request.getParameter("disabled").toString();
		String DateofBirth= request.getParameter("DateofBirth").toString();
		String children = request.getParameter("children").toString();
		String fatherName=request.getParameter("fatherName").toString();
		String nationality= request.getParameter("nationality").toString();
		String permanentAddress= request.getParameter("permanentAddress").toString();
		String pincode = request.getParameter("pincode").toString();
		
		String board10=request.getParameter("board10").toString();
		String board10p=request.getParameter("board10p").toString();
		String pass10=request.getParameter("pass10").toString();
		String board12=request.getParameter("board12").toString();
		String board12p=request.getParameter("board12p").toString();
		String pass12=request.getParameter("pass12").toString();
		String gradDegree=request.getParameter("gradDegree").toString();
		String gradDept=request.getParameter("gradDept").toString();
		String gradCollege=request.getParameter("gradCollege").toString();
		String gradUniversity=request.getParameter("gradUniversity").toString();
		String gradCity=request.getParameter("gradCity").toString();
		String gradState=request.getParameter("gradState").toString();
		String gradYear=request.getParameter("gradYear").toString();
		String stream=request.getParameter("stream").toString();
		String gradCGPAScale=null;
		String gradCGPA= null;
		String gradMarks=null;
		//System.out.println(request.getParameterValues("stream")[0]+"dadaa");
		if(request.getParameterValues("stream")[0].toString().equals("CGPA"))
		{
			gradCGPAScale=request.getParameter("gradCGPAScale").toString();
			gradCGPA=request.getParameter("gradCGPA").toString();
		}
		else if(request.getParameterValues("stream")[0].toString().equals("MARKS"))
		{
			gradMarks= request.getParameter("gradMarks").toString();
		}
		else
		{
			
		}
		System.out.println("grDS MARKS AAYE" + gradMarks);

		String eceShow=null;
		String pref1=null;
		String pref2=null;
		String pref3=null;
		String pref4=null;
		try
		{
			
			//System.out.println("bhai data aaya"+request.getParameterValues("eceShow")[0]);
			if(request.getParameterValues("eceShow")[0].equals("eceShow"))
			{
			eceShow="YES";
			pref1=request.getParameter("ecePref1").toString();
			pref2=request.getParameter("ecePref2").toString();
			pref3=request.getParameter("ecePref3").toString();
			pref4=request.getParameter("ecePref4").toString();
			}
		}
		catch(Exception e)
		{
			
				System.out.println("kat gaya");
				eceShow="NO";
			
		}
		 String postGradShow=null;
		 String postCollege=null;
		 String postCity=null;
		 String postState=null;
		 String postDept=null;
		 String postDegree=null;
		 String postThesis=null;
		 String postYear=null;
		 String postCGMARKS=null;
		 String postCGPA=null;
		 String postCGPAScale=null;
		 String postMarks=null;
		try
		{
			if(request.getParameterValues("postGradShow")[0].equals("postGradShow"))
			{
			postGradShow="YES";
			postCollege=request.getParameter("postCollege").toString();
			postCity=request.getParameter("postCity").toString();
			postState=request.getParameter("postState").toString();
			postDept=request.getParameter("postDept").toString();
			postDegree=request.getParameter("postDegree").toString();
			postThesis=request.getParameter("postThesis").toString();
			postYear=request.getParameter("postYear").toString();
			}
		}
		catch(Exception e)
		{
				System.out.println("kat gaya");
				postGradShow="NO";
		}
		postCGMARKS=request.getParameterValues("postCGMARKS")[0].toString();
		if(postGradShow.equals("YES"))
		{
			if(postCGMARKS.equals("CGPA"))
			{
				postCGPAScale=request.getParameter("postCGPAScale").toString();
				postCGPA=request.getParameter("postCGPA").toString();
			}
			else
			{
				postMarks= request.getParameter("postMarks").toString();
			}
		}

		String otherShow=null;
		String examName=null;
		String examSubject=null;
		String examYear=null;
		String examScore=null;
		String examRank=null;
		// System.out.println(request.getParameterValues("otherShow")[0]);
		try
		{
			if(request.getParameterValues("otherShow")[0].equals("otherShow"))
			{
				otherShow="YES";
				examName=request.getParameter("examName").toString();
				examSubject=request.getParameter("examSubject").toString();
				examYear=request.getParameter("examYear").toString();
				examScore=request.getParameter("examScore").toString();
				examRank=request.getParameter("examRank").toString();

			}
		}
		catch(Exception e)
		{
				otherShow="NO";
		}

		String gateShow=null;
		String gateArea=null;
		String gateYear=null;
		String gateMarks=null;
		String gateScore=null;
		String gateRank=null;
		try
		{
			if(request.getParameterValues("gateShow")[0].equals("gateShow"))
			{
				gateShow="YES";
				gateArea=request.getParameter("gateArea").toString();
				gateYear=request.getParameter("gateYear").toString();
				gateMarks=request.getParameter("gateMarks").toString();
				gateScore=request.getParameter("gateScore").toString();
				gateRank=request.getParameter("gateRank").toString();

			}
		}
		catch(Exception e)
		{
				gateShow="NO";
		}

		String achievements=null;
		achievements=request.getParameter("achievements").toString();
		String csv=null;
		String sop=null;
		String userid=null;
		userid = UUID.randomUUID().toString();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		System.out.println(dateFormat.format(date));
		String curDate=dateFormat.format(date);
		String alldatastring=inputEmail+','+name+','+enrollmentNumber+','+addressOfCorrespondence+','+mobile+','+phdStream+','+PhDAreaPreference1+
							','+PhDAreaPreference2+','+PhDAreaPreference3+','+gender+','+category+','+disabled+','+DateofBirth+
							','+children+','+fatherName+','+nationality+','+permanentAddress+','+pincode+
							','+board10+','+board10p+','+pass10+','+board12+','+board12p+','+pass12+','+gradDegree+','+gradDept+
							','+gradCollege+','+gradUniversity+','+gradCity+','+gradState+','+gradYear+','+stream+','+gradCGPA+
							','+gradCGPAScale+','+gradMarks+','+eceShow+','+pref1+','+pref2+','+pref3+','+pref4+','+
							postGradShow+','+postCollege+','+postCity+','+postState+','+postDept+','+postDegree+','+postThesis+','+
							postYear+','+postCGMARKS+','+postCGPA+','+postCGPAScale+','+postMarks+','
							+otherShow+','+examName+','+examSubject+','+examYear+','+examScore+','+examRank+','
							+gateShow+','+gateArea+','+gateYear+','+gateMarks+','+gateScore+','+gateRank+','+achievements+','
							+csv+','+sop+','+userid+','+curDate+',';

		System.out.println(alldatastring);
		try(PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("/Users/siddharthsingh/Desktop/userdata.txt", true)))) {
		    out.println(alldatastring);
		}catch (IOException e) {
		    //exception handling left as an exercise for the reader
		}
		
	}
}
