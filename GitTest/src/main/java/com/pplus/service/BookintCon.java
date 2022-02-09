package com.pplus.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookintCon")
public class BookintCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String requestURI = request.getRequestURI();
	    String contextPath = request.getContextPath();
	    String command = requestURI.substring(contextPath.length());
	    System.out.println(requestURI);
	    System.out.println(contextPath);
	    System.out.println(command);
	
	}

}
