/*@author Praveen Kumar Jhanwar
 * roll no - 2014078 
 * @author Siddharth Singh
 * roll no - 2014105*/
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;
/**
 * Servlet implementation class upload
 */
@WebServlet("/ok")
public class ok extends HttpServlet {
        private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ok() {
        super();
        // TODO Auto-generated constructor stub
    }


    private boolean isMultipart;
    private String filePath = "/Users/siddharthsingh/Desktop/";
    private int maxFileSize = 5000 * 1024;
    private int maxMemSize = 400 * 1024;
    private File file ;
        /**
         * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
         */
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                // TODO Auto-generated method stub
                System.out.println(request.getParameter("cv"));
                System.out.println(request.getParameter("sop"));
                HttpSession ses= request.getSession();
                String alldata=(String) ses.getAttribute("alldata");
                String rollno=(String) ses.getAttribute("rollno");
                isMultipart = ServletFileUpload.isMultipartContent(request);
                System.out.println(isMultipart);
              response.setContentType("text/html");
              java.io.PrintWriter out = response.getWriter( );
              if( !isMultipart ){
                 out.println("<html>");
                 out.println("<head>");
                 out.println("<title>Servlet upload</title>");
                 out.println("</head>");
                 out.println("<body>");
                 out.println("<p>No file uploaded</p>");
                 out.println("</body>");
                 out.println("</html>");
                 return;
              }
              DiskFileItemFactory factory = new DiskFileItemFactory();
              // maximum size that will be stored in memory
              factory.setSizeThreshold(maxMemSize);
              // Location to save data that is larger than maxMemSize.
              factory.setRepository(new File("/Users/siddharthsingh/Desktop"));

              // Create a new file upload handler
              ServletFileUpload upload = new ServletFileUpload(factory);
              // maximum file size to be uploaded.
              upload.setSizeMax( maxFileSize );

              try{
              // Parse the request to get file items.
              List fileItems = upload.parseRequest(request);

              // Process the uploaded file items
              Iterator i = fileItems.iterator();

              out.println("<html>");
              out.println("<head>");
              out.println("<title>Servlet upload</title>");
              out.println("</head>");
              out.println("<body>");
              while ( i.hasNext () )
              {
                 FileItem fi = (FileItem)i.next();
                 if ( !fi.isFormField () )
                 {
                    // Get the uploaded file parameters
                    String fieldName = fi.getFieldName();
                    String fileName = fi.getName();
                    String contentType = fi.getContentType();
                    boolean isInMemory = fi.isInMemory();
                    long sizeInBytes = fi.getSize();
                    // Write the file
                    alldata+=(rollno+"_"+fileName+',');
                    System.out.println(fileName);
                    if( fileName.lastIndexOf("\\") >= 0 ){
                       file = new File( filePath +
                       fileName.substring( fileName.lastIndexOf("\\"))) ;
                    }else{
                       file = new File( filePath +
                       fileName.substring(fileName.lastIndexOf("\\")+1)) ;
                    }
                    fi.write( file ) ;
                    out.println("Uploaded Filename: " + fileName + "<br>");
                 }
              }
              out.println("</body>");
              out.println("</html>");
              String userid=null;
      		userid = UUID.randomUUID().toString();
      		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
      		Date date = new Date();
      		System.out.println(dateFormat.format(date));
      		String curDate=dateFormat.format(date);
      		alldata+=(userid+','+curDate+',');
              System.out.println(alldata);
      		try(PrintWriter out1 = new PrintWriter(new BufferedWriter(new FileWriter("/Users/siddharthsingh/Desktop/userdata.txt", true)))) {
      		    out1.println(alldata);
      		}catch (IOException e) {
      		    //exception handling left as an exercise for the reader
      		}
           }catch(Exception ex) {
               System.out.println(ex);
           }
        }

}