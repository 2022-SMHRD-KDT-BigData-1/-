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
import javax.websocket.Session;

import com.pplus.model.PMemberDAO;
import com.pplus.model.PMemberDTO;

@WebServlet("/PTypeCon")
public class PTypeCon implements iPCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();

		String type1 = request.getParameter("type1");
		String type2 = request.getParameter("type2");
		String type3 = request.getParameter("type3");

		PMemberDTO member = (PMemberDTO) session.getAttribute("member");

		PMemberDAO dao = new PMemberDAO();
		
		member =new PMemberDTO(member.getMember_id(), null, member.getMember_nick(), null, type1, type2, type3);
		int cnt = dao
				.pmemberTypeSet(member);

		if (cnt > 0) {
			System.out.println(member.getMember_nick() + "님의 프로그래밍 유형은 다음과 같습니다.");
			System.out.println(type1+", "+type2+", "+type3);
			session.setAttribute("member", member);
			response.sendRedirect("pmain_jstl.jsp");
			
		} else {
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('회원가입을 실패하셨습니다.');");
			out.print("location.href='pmain.jsp';");
			out.print("</script>");
		}
	}
}
