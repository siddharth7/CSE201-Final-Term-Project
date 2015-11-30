

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class finaluser
 */
@WebServlet("/finaluser")
public class finaluser extends HttpServlet {
	private static final String UPLOAD_DIRECTORY = "upload";
 
    // upload settings
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB	private static final long serialVersionUID = 1L;
       
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
		if(request.getParameter("stream").toString().equals("CGPA"))
		{
			System.out.println(request.getParameter("gradCGPAScale"));
			System.out.println(request.getParameter("gradCGPA"));
		}
		System.out.println(request.getParameter("achievements"));



		String inputEmail = request.getParameter("inputEmail").toString();
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
		String gradMarksInput=null;
		if(request.getParameter("stream").toString().equals("CGPA"))
		{
			gradCGPAScale=request.getParameter("gradCGPAScale").toString();
			gradCGPA=request.getParameter("gradCGPA").toString();
		}
		else
		{
			gradMarksInput= request.getParameter("gradMarksInput").toString();
		}
		String achievements=request.getParameter("achievements").toString();
		
		String alldatastring=inputEmail+','+name+','+enrollmentNumber+','+addressOfCorrespondence+','+mobile+','+phdStream+','+PhDAreaPreference1+
							','+PhDAreaPreference2+','+PhDAreaPreference3+','+gender+','+category+','+disabled+','+DateofBirth+
							','+children+','+fatherName+','+nationality+','+permanentAddress+','+pincode+
							','+board10+','+board10p+','+pass10+','+board12+','+board12p+','+pass12+','+gradDegree+','+gradDept+
							','+gradCollege+','+gradUniversity+','+gradCity+','+gradState+','+gradYear+','+stream+','+gradCGPA+
							','+gradCGPAScale+','+gradMarksInput+','+achievements;

		System.out.println(alldatastring);
		BufferedWriter log=null;
		try {
			log = new BufferedWriter(new FileWriter("/Users/siddharthsingh/Desktop/userdata.txt", true));
			log.write(alldatastring);
			log.write("\n");
			log.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (!ServletFileUpload.isMultipartContent(request)) {
	    PrintWriter writer = response.getWriter();
	    writer.println("Request does not contain upload data");
	    writer.flush();
	    return;

		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(THRESHOLD_SIZE);
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		 
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setFileSizeMax(MAX_FILE_SIZE);
		upload.setSizeMax(MAX_REQUEST_SIZE);
		String uploadPath = getServletContext().getRealPath("")
		    + File.separator + UPLOAD_DIRECTORY;
		// creates the directory if it does not exist
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
		    uploadDir.mkdir();
		}
		List formItems = upload.parseRequest(request);
		Iterator iter = formItems.iterator();
 
		while (iter.hasNext()) {
    	
    	FileItem item = (FileItem) iter.next();
    	
    	if (!item.isFormField()) {
        	String fileName = new File(item.getName()).getName();
        	String filePath = uploadPath + File.separator + fileName;
        	File storeFile = new File(filePath);
 
        // saves the file on disk
        item.write(storeFile);
    	}
}
		
	}

}
