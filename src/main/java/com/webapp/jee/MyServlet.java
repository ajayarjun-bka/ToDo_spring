package com.webapp.jee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.login.LoginService;
@WebServlet(urlPatterns="/mypage")
public class MyServlet extends HttpServlet{
	private LoginService service = new LoginService();
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
	 //request.setAttribute("name",request.getParameter("name"));
	 request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);
	 //System.out.println(request.getParameter("name"));
	 
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		System.out.println("In POST");
		String name = request.getParameter("name");
		//request.setAttribute("name",name);
		String password = request.getParameter("password");
		//request.setAttribute("password",password);
		boolean isUser = service.authenticate(name, password);
		if(isUser)
			request.getRequestDispatcher("/WEB-INF/views/landing.jsp").forward(request, response);
		else
		{
			request.setAttribute("error","Invalid Credentials");
			request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);
			request.setAttribute("error",null);
		}
	}	
	
	

}