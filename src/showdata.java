

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

		String phdStream=null;
		String gradDegree=null;
		String postGradDegree=null;
		String board10=null;
		String board12=null;
		String gradDept=null;
		String postGradDept=null;
		String gradUniversity=null;
		String postGradUniversity=null;
		String gradState=null;
		String postGradState=null;

		phdStream=request.getParameter("phdStream").toString();
		gradDegree=request.getParameter("gradDegree").toString();	
		postGradDegree=request.getParameter("postGradDegree").toString();	
		board10=request.getParameter("board10").toString();	
		board12=request.getParameter("board12").toString();	
		gradDept=request.getParameter("gradDept").toString();	
		postGradDept=request.getParameter("postGradDept").toString();	
		gradUniversity=request.getParameter("gradUniversity").toString();	
		postGradUniversity=request.getParameter("postGradUniversity").toString();	
		gradState=request.getParameter("gradState").toString();	
		postGradState=request.getParameter("postGradState").toString();	
	
		String tenRange=null;
		String percentTen=null;
		String twelveRange=null;
		String percentTwelve=null;
		String gradMarksRange=null;
		String percentGrad=null;
		String postGradMarksRange=null;
		String percentPostGrad=null;
		String gateRange=null;
		String gateScore=null;

		try
		{
			tenRange=request.getParameter("tenRange").toString();
		}
		catch(Exception e)
		{
			
		}
		percentTen=request.getParameter("percentTen").toString();	
		try
		{
			twelveRange=request.getParameter("twelveRange").toString();
		}
		catch(Exception e)
		{
			
		}
		percentTwelve=request.getParameter("percentTwelve").toString();	
		try
		{
			gradMarksRange=request.getParameter("gradMarksRange").toString();
		}
		catch(Exception e)
		{
			
		}
		percentGrad=request.getParameter("percentGrad").toString();	
		try
		{
			postGradMarksRange=request.getParameter("postGradMarksRange").toString();
		}
		catch(Exception e)
		{
			
		}
		percentPostGrad=request.getParameter("percentPostGrad").toString();	
		try
		{
			gateRange=request.getParameter("gateRange").toString();
		}
		catch(Exception e)
		{
			
		}
		gateScore=request.getParameter("gateScore").toString();	


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
				if(phdStream!="" && flag==0) //4
				{
					//System.out.println(phdStream+data[5]);
					if(phdStream.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(phdStream.equals(data[5]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(gradDegree!="" && flag==0) //4
				{
					// System.out.println(gradDegree);
					if(gradDegree.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(gradDegree.equals(data[24]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(postGradDegree!="" && flag==0) //4
				{
					// System.out.println(postGradDegree);
					if(postGradDegree.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(postGradDegree.equals(data[45]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(board10!="" && flag==0) //4
				{
					// System.out.println(board10);
					if(board10.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(board10.equals(data[18]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(board12!="" && flag==0) //4
				{
					// System.out.println(board12);
					if(board12.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(board12.equals(data[21]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(gradDept!="" && flag==0) //4
				{
					// System.out.println(gradDept);
					if(gradDept.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(gradDept.equals(data[25]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(postGradDept!="" && flag==0) //4
				{
					// System.out.println(postGradDept);
					if(postGradDept.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(postGradDept.equals(data[44]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(gradUniversity!="" && flag==0) //1
				{
					// System.out.println(data[0]+" "+gradUniversity);
					if(gradUniversity.equals(data[27]))
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(postGradUniversity!="" && flag==0) //1
				{
					// System.out.println(data[0]+" "+postGradUniversity);
					if(postGradUniversity.equals(data[41]))
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(gradState!="" && flag==0) //4
				{
					// System.out.println(gradState);
					if(gradState.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(gradState.equals(data[29]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				if(postGradState!="" && flag==0) //4
				{
					// System.out.println(postGradState);
					if(postGradState.equals("All"))
					{
						flag=0;
					}
					else
						{
							if(postGradState.equals(data[43]))
								flag=0;
							else
								{
							flag=1;
							
						}
						}
				}
				//System.out.println(tenRange+" "+data[19]+percentTen);
				if(tenRange!=null && flag==0) //5
				{
					
					//System.out.println(tenRange+" "+data[19]+percentTen);
					if(tenRange.equals("Greater than") && Double.parseDouble(data[19])>Double.parseDouble(percentTen))
						flag=0;
					else if(tenRange.equals("Equals") && Double.parseDouble(data[19])==Double.parseDouble(percentTen))
						flag=0;
					else if(tenRange.equals("Lesser than") && Double.parseDouble(data[19])<Double.parseDouble(percentTen))
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(twelveRange!=null && flag==0) //5
				{
					
					//System.out.println(twelveRange+" "+data[19]+percentTwelve);
					if(twelveRange.equals("Greater than") && Double.parseDouble(data[22])>Double.parseDouble(percentTwelve))
						flag=0;
					else if(twelveRange.equals("Equals") && Double.parseDouble(data[22])==Double.parseDouble(percentTwelve))
						flag=0;
					else if(twelveRange.equals("Lesser than") && Double.parseDouble(data[22])<Double.parseDouble(percentTwelve))
						flag=0;
					else
						{
							flag=1;
							
						}
				}	
				if(gradMarksRange!=null && flag==0) //5
				{
					
					//System.out.println(gradMarksRange+" "+data[19]+percentGrad);
					if(gradMarksRange.equals("Greater than") && Double.parseDouble(data[34])>Double.parseDouble(percentGrad))
						flag=0;
					else if(gradMarksRange.equals("Equals") && Double.parseDouble(data[34])==Double.parseDouble(percentGrad))
						flag=0;
					else if(gradMarksRange.equals("Lesser than") && Double.parseDouble(data[34])<Double.parseDouble(percentGrad))
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(postGradMarksRange!=null && flag==0) //5
				{
					
					//System.out.println(postGradMarksRange+" "+data[19]+percentPostGrad);
					if(postGradMarksRange.equals("Greater than") && Double.parseDouble(data[51])>Double.parseDouble(percentPostGrad))
						flag=0;
					else if(postGradMarksRange.equals("Equals") && Double.parseDouble(data[51])==Double.parseDouble(percentPostGrad))
						flag=0;
					else if(postGradMarksRange.equals("Lesser than") && Double.parseDouble(data[51])<Double.parseDouble(percentPostGrad))
						flag=0;
					else
						{
							flag=1;
							
						}
				}
				if(gateRange!=null && flag==0) //5
				{
					
					//System.out.println(gateRange+" "+data[19]+percentTen);
					if(gateRange.equals("Greater than") && Double.parseDouble(data[62])>Double.parseDouble(gateScore))
						flag=0;
					else if(gateRange.equals("Equals") && Double.parseDouble(data[62])==Double.parseDouble(gateScore))
						flag=0;
					else if(gateRange.equals("Lesser than") && Double.parseDouble(data[62])<Double.parseDouble(gateScore))
						flag=0;
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
