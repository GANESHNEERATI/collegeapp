package com.college.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.print.attribute.standard.PrinterInfo;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.college.web.model.AluminiDetails;
import com.college.web.model.ApplicationStatus;
import com.college.web.service.AluminiServices;
import com.college.web.service.ApplicantServices;

/**
 * Servlet implementation class AluminiController
 */
public class AluminiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AluminiController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	PrintWriter out=response.getWriter();
	String url=request.getParameter("pattern");
	
	if(url!=null)
	{
	
	switch(url)
	{
	case "addAlumini":
		String fname=request.getParameter("firstname");
		String lname=request.getParameter("lastname");
		int sid=Integer.parseInt(request.getParameter("studentid"));
		String gender=request.getParameter("gender");
		String dob=request.getParameter("bday");
		String address=request.getParameter("address");
		String email=request.getParameter("emailid");
		String contactno=request.getParameter("contactno");
		String yop=request.getParameter("yop");
		String course=request.getParameter("course");
		String stream=request.getParameter("stream");
		String password=request.getParameter("password");
		
		AluminiDetails ad=new AluminiDetails(fname,lname,sid,gender,dob,address,email,contactno,yop,course,stream,password);
		AluminiServices ser=new AluminiServices();
		 ApplicantServices services=new ApplicantServices();
		 ApplicationStatus status=services.getStatus(sid);
		
		boolean result=ser.addAlumini(ad);
		if(result&&status.getStatus().equals("approve"))
		{
			out.println("<font color='red'><h3 align='center'>REGISTRED SUCCESSFULLY TO LOGIN <a href='AlumniLogin.jsp'>Click here</a></h3></font>");
			RequestDispatcher rd=request.getRequestDispatcher("AluminiRegistration.jsp");
			rd.include(request, response);
			
			
			
		}
		else
		{
			out.println("<font color='red'><h3 align='center'>Alumini already exxist</h3></font>");
			RequestDispatcher rd=request.getRequestDispatcher("AluminiRegistration.jsp");
			rd.include(request, response);
		}
		
		break;
	case "alumniLogin":
		System.out.println("in al");
		
		int sid1=Integer.parseInt(request.getParameter("sid"));
		//System.out.println(sid1);
		String pass=request.getParameter("ps");
		//System.out.println(pass);
		String uname=request.getParameter("uname");
		System.out.println(uname);
		
		AluminiServices service=new AluminiServices();
		boolean result1=service.authenticateAlumni(sid1,pass);
		if(result1)
		{
			System.out.println("yes");
			request.getSession().setAttribute("user", uname);
			request.getRequestDispatcher("AluminiHome.jsp").forward(request, response);
			
			
			
			
		}
		else
		{
			out.println("<font color='red'><h1 align='center'>invalid username and password</h1></font>");
			request.getRequestDispatcher("AluminiLogin.jsp").include(request, response);
			
			
			
		}
		break;
	case "getaluminibyname":
		
		String alumininame=request.getParameter("name");
		AluminiServices service1=new AluminiServices();
		List<AluminiDetails>ad1=service1.getAluminiByName(alumininame);
		if(ad1!=null)
		{
			request.getSession().setAttribute("al", ad1);
			request.getRequestDispatcher("ViewAluminiwithName.jsp").forward(request, response);;
			
		}
		
			
			
			
			
		
		
		break;
		
		
			
			
		
		
		
		  
		
	
	
	
	}
	}
	else
	{
		request.getSession().getAttribute("user");
		
		
	}
	
	
	
	
	}

}
