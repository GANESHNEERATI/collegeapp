package com.college.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.Id;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.college.web.model.Faculty;
import com.college.web.service.FacultyService;

/**
 * Servlet implementation class FacultyController
 */
public class FacultyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String url=request.getParameter("pattern");
	//	System.out.println(url);
		
		
		switch(url)
		{
		case "addFaculty":
			 String firstname=request.getParameter("F_NAME");
			 String lastname=request.getParameter("L_NAME");
			 String dob=request.getParameter("dob");
		
		     int fid=Integer.parseInt(request.getParameter("f_id"));
			 String email=request.getParameter("Email-id");
			 String mobile=request.getParameter("Mobile_num");
			 String Gender=request.getParameter("gender");
			 String Username=request.getParameter("u_name");
			 String password=request.getParameter("p_word");
			 String Address=request.getParameter("Address");
			 String city=request.getParameter("City");
			 String pin=request.getParameter("Pin_Code");
			 String state=request.getParameter("states_ut");
			 String country=request.getParameter("Country");
			 String high_qual=request.getParameter("Qualification");
			 String experience=request.getParameter("num");
			 String department=request.getParameter("degree");
			 String stream=request.getParameter("cvalue");
			 
			 
			 Faculty f=new Faculty(firstname,lastname,dob,fid,email,mobile,Gender,Username,password,Address,city,pin,state,country,high_qual,experience,department,stream);
			FacultyService fs=new FacultyService();
			
			boolean result=fs.addFaculty(f);
			if(result)
			{
				out.println("<font color='red'><h2 align='center'>FACULTY REGISTRED SUCESSFULLY</h1></font>");
			
				request.getRequestDispatcher("Facultyreg.jsp").include(request, response);
				
			}
			else
			{
				out.println("<font color='red'><h2 align='center'>FACULTY ALREADY EXIST</h1></font>");
				request.getRequestDispatcher("Facultyreg.jsp").include(request, response);
				
				
				
				
			}
			break;
		case "FacultyLogin":
			
			int fid1=Integer.parseInt(request.getParameter("f_id"));
			String uname=request.getParameter("u_name");
			String password1=request.getParameter("p_word");
			
			FacultyService fs1=new FacultyService();
			boolean result1=fs1.authenticatefaculty(fid1,uname,password1);
			if(result1)
			{
				System.out.println("in");
			HttpSession session=request.getSession();
			session.setAttribute("fname",uname);
	        request.getRequestDispatcher("FacultyHome.jsp").forward(request, response);;
			
			
			}
			else
			{
				response.sendRedirect("Faculty.jsp");
				
			}
			
			
	
			break;
		
			
			
			
			
			
			
			
			
		
		
		}
		
		
		
		
		
	}

}
