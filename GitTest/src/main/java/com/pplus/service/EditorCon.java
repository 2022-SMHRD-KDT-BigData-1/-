package com.pplus.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.EditorDAO;
import com.pplus.model.EditorDTO;
import com.pplus.model.PMemberDTO;
import com.pplus.model.ScheduleDTO;

@WebServlet("/EditorCon")
public class EditorCon implements iPCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();

		String title = request.getParameter("title");
		String content = request.getParameter("content");

		PMemberDTO member = (PMemberDTO) session.getAttribute("member");
		ScheduleDTO schedule = (ScheduleDTO) session.getAttribute("schedule");

		EditorDAO dao = new EditorDAO();

		int cnt = dao.editorSet(
				new EditorDTO(0, title, content, null, schedule.getSchedule_num(), 0, member.getMember_nick()));

		if (cnt > 0) {
			System.out.println("������ ����" + title);
			System.out.println("������ ����" + content);

			ArrayList<EditorDTO> editorlist = dao.editorSelectAll(member.getMember_nick(), schedule.getSchedule_num());

			session.setAttribute("editorlist", editorlist);
			response.sendRedirect("schedule.jsp");
			// �켱 ���� �������� ���� �ް� ��쿡 ���� �ٸ� �������� ���� �ϸ� ���� �����ϴ�
		} else {
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('������ ����� �����ϼ̽��ϴ�.');");
			out.print("location.href='pmain.jsp';");
			out.print("</script>");
		}
	}

}
