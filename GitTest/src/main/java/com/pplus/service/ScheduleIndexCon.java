package com.pplus.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.DiaryDAO;
import com.pplus.model.DiaryDTO;
import com.pplus.model.EditorDAO;
import com.pplus.model.EditorDTO;
import com.pplus.model.ScheduleDAO;
import com.pplus.model.ScheduleDTO;


@WebServlet("/ScheduleIndexCon")
public class ScheduleIndexCon implements iPCommand {
	

	
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		
		ScheduleDAO dao = new ScheduleDAO();
		EditorDAO editorDAO = new EditorDAO();
		DiaryDAO diaryDAO = new DiaryDAO();
		
		int num = Integer.parseInt(request.getParameter("num"));
		String nick = request.getParameter("nick");
		
		ScheduleDTO schedule = dao.scheduleSelect(nick, num);
		ArrayList<EditorDTO> editorlist = editorDAO.editorSelectAll(nick, num);
		ArrayList<DiaryDTO> diarylist = diaryDAO.diarySelectAll(nick, num);
		
		
		
		if (schedule == null) {
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('�������� �ҷ����µ� �����ϼ̽��ϴ�.');");
			out.print("location.href='pmain.jsp';");
			out.print("</script>");
		}else {
			System.out.println("������ ��ȣ" + num);
			session.setAttribute("schedule", schedule);
			session.setAttribute("editorlist", editorlist);
			session.setAttribute("diarylist", diarylist);
			response.sendRedirect("schedule.jsp");
		}
		
	}

}