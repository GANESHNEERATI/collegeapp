package com.college.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.Id;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			 String email=request.getParameter("Emai_id");
			 String mobile=request.getParameter("");
			 String Gender=request.getParameter("");
			 String Username=request.getParameter("");
			 String password=request.getParameter("");
			 String Address=request.getParameter("");
			 String city=request.getParameter("");
			 String pin=request.getParameter("");
			 String state=request.getParameter("");
			 String country=request.getParameter("");
			 String high_qual=request.getParameter("");
			 String experience=request.getParameter("");
			 String department=request.getParameter("");
			 String stream=request.getParameter("");
		
		
		}
		
		
		
		
		
	}

}
