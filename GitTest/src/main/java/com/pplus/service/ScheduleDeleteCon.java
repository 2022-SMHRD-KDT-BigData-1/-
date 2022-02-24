package com.pplus.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.PMemberDTO;
import com.pplus.model.ScheduleDAO;


@WebServlet("/ScheduleDeleteCon")
public class ScheduleDeleteCon implements iPCommand {


	
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8"); 
		HttpSession session = request.getSession();
		
		PMemberDTO member = (PMemberDTO)session.getAttribute("member");
		int cnt=0;
		String nick = member.getMember_nick();
		ScheduleDAO scheduleDAO =new ScheduleDAO();
		
		String[] scheduleNumList = request.getParameterValues("scheduleNumList");
		int size = scheduleNumList.length;
		for(int i=0; i<size;i++) {
			cnt += scheduleDAO.scheduleDelete(nick, Integer.parseInt(scheduleNumList[i]));
		}
		
		if(cnt>0) {
			System.out.println("삭제성공");
			response.sendRedirect("scheduleindex.jsp");
		} else {
			System.out.println("삭제실패");
			response.sendRedirect("scheduleindex.jsp");
		}
		
	}

}
