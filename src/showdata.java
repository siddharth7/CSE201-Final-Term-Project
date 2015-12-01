

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class showdata
 */
@WebServlet("/showdata")
public class showdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showdata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(request.getParameter("inputEmail"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("enrollmentNumber"));
		System.out.println(request.getParameter("gender"));
		System.out.println(request.getParameter("category"));
		System.out.println(request.getParameter("disabled"));
		System.out.println(request.getParameter("dobTime"));
		System.out.println(request.getParameter("DateofBirth"));
		
		String inputEmail=null;
		String name=null;
		String enrollmentNumber=null;
		String gender=null;
		String category=null;
		String disabled=null;
		String DateofBirth=null;
		String dobTime=null;
		inputEmail =request.getParameter("inputEmail").toString();
		name = request.getParameter("name").toString();
		enrollmentNumber = request.getParameter("enrollmentNumber").toString();
		try
		{
			gender=request.getParameter("gender").toString();
		}
		catch(Exception e)
		{

		}
		category=request.getParameter("category").toString();
		try
		{
			disabled=request.getParameter("disabled").toString();
		}
		catch(Exception e)
		{
			
		}
		DateofBirth= request.getParameter("DateofBirth").toString();
		try
		{
			dobTime=request.getParameter("dobTime");
		}
		catch(Exception e)
		{
			
		}	
		BufferedReader buffr = null;
		int flag=0;
		String line;
		try
		{

			buffr = new BufferedReader(new FileReader("/Users/siddharthsingh/Desktop/userdata.txt"));
			while ((line = buffr.readLine()) != null) 
			{
				flag=0;
				String[] data = line.split(",");
				if(inputEmail!="" && flag==0) //1
				{
					// System.out.println(data[0]+" "+inputEmail);
					if(inputEmail.equals(data[0]))
						flag=0;
					else
						{
							flag=1;
							
						}
				}	
				if(name!="" && flag==0) //2
				{
					if(name.equals(data[1]))
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(enrollmentNumber!="" && flag==0) //3
				{
					if(enrollmentNumber.equals(data[2])) 
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(category!="" && flag==0) //4
				{
					// System.out.println(category);
					if(category.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(category.equals(data[10]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(gender!=null && flag==0) //5
				{
					
					if(gender.equals(data[9]))
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(disabled!=null && flag==0) 
				{
					if(disabled.equals(data[11]))
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(dobTime!=null && flag==0)
				{
					Date date1, date2;
		        	SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyy");
		        	date1 = sdf.parse(data[12]);
	        		date2 = sdf.parse(DateofBirth);
	        		// System.out.println(date1.compareTo(date2)+ "date compareTo");
					if(dobTime.equals("Before") && date1.compareTo(date2)<0)
					{
						flag=0;
					}
					else if(dobTime.equals("After") && date1.compareTo(date2)>0)
					{
						flag=0;
					}
					else if(dobTime.equals("On") && date1.compareTo(date2)==0)
					{
						flag=0;
					}
					else
					{
						flag=1;

					}
				}
			 	if(flag==1)
			 		System.out.println("na ho paya");
			 	else
			 		System.out.println(data[2]);
			 }
		}
		catch(Exception e)
		{
			System.out.println("kat gaya");
		}	
	}

}
