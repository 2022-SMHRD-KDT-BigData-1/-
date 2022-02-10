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

import com.pplus.model.PMemberDAO;
import com.pplus.model.PMemberDTO;
import com.pplus.model.RecBookDAO;
import com.pplus.model.RecBookDTO;



@WebServlet("/PLoginCon")
public class PLoginCon implements iPCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String id =request.getParameter("id");
		String pw = request.getParameter("pw");
		
		PMemberDAO dao =new PMemberDAO();
		RecBookDAO recbookDAO =new RecBookDAO();
		
		PMemberDTO member =dao.pmemberLogin(id, pw);
		
		member=dao.pmemberTypeCheck(member);
		
		ArrayList<RecBookDTO> recbooklist=recbookDAO.recBookSelectAll(member.getMember_nick());
		
		
		
		if(member != null) {
			System.out.println(id+"가 로그인");
			
			session.setAttribute("recbooklist", recbooklist);
			session.setAttribute("member", member);
			response.sendRedirect("pmain.jsp");
			
		} else {
			out.print("<script>");
			out.print("alert('로그인 실패..!');");
			out.print("location.href='pmain.jsp';");
			out.print("</script>");
		}
	}
}