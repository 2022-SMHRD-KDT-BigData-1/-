package com.pplus.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.PMemberDTO;


@WebServlet("/ScheduleDeleteCon")
public class ScheduleDeleteCon implements iPCommand {


	
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8"); 
		HttpSession session = request.getSession();
		
		PMemberDTO member = (PMemberDTO)session.getAttribute("member");
		
		String[] list = request.getParameterValues("list");
		
		System.out.println(list[0]);
		
	}

}
