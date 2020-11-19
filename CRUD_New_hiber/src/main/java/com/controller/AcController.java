package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.StudentDAO;
import com.bean.Student;

/**
 * Servlet implementation class AcController
 */
public class AcController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String ac= request.getParameter("action");
		 
		 if(ac.equalsIgnoreCase("Register")) {
			 Student s = new Student();
			 s.setName(request.getParameter("Sname"));
			 s.setContact(Integer.parseInt(request.getParameter("Scontact")));
			 s.setEmail(request.getParameter("Semail"));
			 s.setCity(request.getParameter("Scity"));
			 s.setPassword(request.getParameter("Spassword"));
			 
			 StudentDAO.insetData(s);
		}
		 else if(ac.equalsIgnoreCase("delete")) {
			 
			 int id= Integer.parseInt(request.getParameter("id"));
			 StudentDAO.DeleteData(id);
			 response.sendRedirect("Show.jsp");
		 }
		 
		 else if(ac.equalsIgnoreCase("Update")) { 
			 
			 int id= Integer.parseInt(request.getParameter("id"));
			 Student stu=   StudentDAO.getdataByid(id);
			 request.setAttribute("s",stu );
			 request.getRequestDispatcher("Update.jsp").forward(request, response);
		 }
		 
		 else if(ac.equalsIgnoreCase("edit")) {
			 
			 Student s = new Student();
			 s.setId( Integer.parseInt(request.getParameter("id")));
			 s.setName(request.getParameter("Sname"));
			 s.setContact(Integer.parseInt(request.getParameter("Scontact")));
			 s.setEmail(request.getParameter("Semail"));
			 s.setCity(request.getParameter("Scity"));
			 s.setPassword(request.getParameter("Spassword"));
			 
			StudentDAO.updateData(s);
			response.sendRedirect("Show.jsp");
		 }
		 
	}

}
