package com.pplus.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.PMemberDTO;
import com.pplus.model.ScheduleDAO;
import com.pplus.model.ScheduleDTO;


@WebServlet("/ScheduleCon")
public class ScheduleCon implements iPCommand {
	

	
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		
		String title = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String day = request.getParameter("day");
		
		//book�ȿ� �����͵��� session���·� �ޱ�
		PMemberDTO member = (PMemberDTO) session.getAttribute("member");
		ScheduleDAO dao = new ScheduleDAO();
		
		int cnt = dao.scheduleSet(new ScheduleDTO(0, title, start, day, end,0,null, member.getMember_nick(),));
		
		if(cnt > 0) {
			System.out.println("������ ����" + title);
			System.out.println("å ����");
			
			response.sendRedirect("pmain.jsp");
			// �켱 ���� �������� ���� �س��ҽ��ϴ�. ������������ �ƴ϶� �ٸ������� ���� �ҰŸ� �ٲ�� �մϴ�
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('������ ����� �����ϼ̽��ϴ�.');");
			out.print("location.href='pmain.jsp';");
			out.print("</script>");
		}
		
	}

}
