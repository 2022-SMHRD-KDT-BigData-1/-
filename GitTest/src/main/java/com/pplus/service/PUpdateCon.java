package com.pplus.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.PMemberDAO;
import com.pplus.model.PMemberDTO;


@WebServlet("/PUpdateCon")
public class PUpdateCon implements iPCommand {
	

	
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		
		PMemberDTO member = (PMemberDTO)session.getAttribute("member");
		
		PMemberDAO dao = new PMemberDAO();
		
		member = new PMemberDTO(member.getMember_id(),pw,nick,member.getMember_name(),
				member.getUser_type1(),member.getUser_type2(),member.getUser_type3());
		
		int cnt = dao.pmemberUpdate(member);
		
		if(cnt > 0) {
			System.out.println(member.getMember_id() + "ȸ������ ������ ��й�ȣ��" + pw);
			System.out.println(member.getMember_id() + "ȸ������ ������ �г�����" + nick);
			
			session.setAttribute("member", member);
			response.sendRedirect("pmain.jsp");
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('ȸ�� ���� ������ �����ϼ̽��ϴ�.');");
			out.print("location.href='pmain.jsp';");
			out.print("</script>");
		}
		
	}

}
