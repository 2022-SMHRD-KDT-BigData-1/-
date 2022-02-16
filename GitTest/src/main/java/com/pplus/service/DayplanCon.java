package com.pplus.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.DayplanDAO;
import com.pplus.model.PMemberDTO;

@WebServlet("/DayplanCon")
public class DayplanCon implements iPCommand{
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		
		PMemberDTO member = (PMemberDTO) session.getAttribute("member");
		DayplanDAO dayplanDao = new DayplanDAO();
		String nick = member.getMember_nick();
		String title =request.getParameter("title");
		
		int cnt =dayplanDao.dayplanTodaySet(nick, title);
		int dayplan_num =dayplanDao.dayplanTodayselect(nick, title);
		
		if (cnt > 0) {
			request.setAttribute("dayplan_num",dayplan_num);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(".jsp");
			dispatcher.forward(request, response);
		} else {
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('일정 등록을 실패하셨습니다.');");
			out.print("location.href='dayplantodayset.jsp';");
			out.print("</script>");
		}
		
	}

}
