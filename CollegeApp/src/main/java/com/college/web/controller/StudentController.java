package com.college.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.college.web.model.ApplicationStatus;
import com.college.web.model.StudentDetails;
import com.college.web.service.ApplicantServices;
import com.college.web.service.StudentServices;

/**
 * Servlet implementation class StudentController
 */
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String url=request.getParameter("pattern");

		switch(url)
		{
		
		case "addStudent":
			
			String First_name=request.getParameter("First_Name");
			String Last_name=request.getParameter("Last_Name");
			 String dob=request.getParameter("Dob");
			 int  application_id=Integer.parseInt(request.getParameter("a_id"));
		
			
			 String email=request.getParameter("Email_Id");
			 long Mobile_no=Long.parseLong(request.getParameter("Mobile_Num"));
			String gender=request.getParameter("Gender");
			String Username=request.getParameter("u_name");
			 String passsword=request.getParameter("p_word");
			 String Address=request.getParameter("Address");
			 String City=request.getParameter("City");
			 long pincode=Long.parseLong(request.getParameter("Pin_Code"));
			 String State=request.getParameter("states_ut");
			 String country=request.getParameter("Country");
			String Highest_qualification=request.getParameter("degree_courses");
			 String percentage=request.getParameter("percent");
			 String course=request.getParameter("degree");
			 String Stream=request.getParameter("cvalue");
			 
			 
			 ApplicantServices services=new ApplicantServices();
			 ApplicationStatus status=services.getStatus(application_id);
			 
			 if(status!=null&&status.getStatus().equals("approve"))
			 {
				 System.out.println("in status if");
				 
				 
				 StudentDetails sd=new StudentDetails(First_name, Last_name, dob, application_id, email, Mobile_no, gender, Username, passsword, Address, City, pincode, State, country, Highest_qualification, percentage, course, Stream);
				 StudentServices ss=new StudentServices();
				 boolean result=ss.registerStudent(sd);
				 if(result)
				 {
					 out.println("<font color='red'><h1 align='center'>Stuent Registred Sucessfully</h1></font>");
					 RequestDispatcher rd=request.getRequestDispatcher("studentreg.jsp");
					 rd.include(request, response);
					 
					 
					 
				 }
				 else
				 {
					 
					 out.println("<font color='red'><h3 align='center'>Student Alredy exist</h3></font>");
					 RequestDispatcher rd=request.getRequestDispatcher("studentreg.jsp");
					 rd.include(request, response);
					 
				 }
				 
				 
				 
			 }
			 else
			 {
				 out.println("<font color='red'><h3 align='center'>Your Appliction rejected so cannot register</h3></font>");
				 RequestDispatcher rd=request.getRequestDispatcher("studentreg.jsp");
				 rd.include(request, response);
				 
				 
			 }
			 
			 
			 
			
			
			
			
		
		
		
		
	
		
		
		
	}

}
}
