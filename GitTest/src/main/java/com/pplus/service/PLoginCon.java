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



@WebServlet("/PLoginCon")
public class PLoginCon implements iPCommand {

	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id =request.getParameter("id");
		String pw = request.getParameter("pw");
		
		PMemberDAO dao =new PMemberDAO();
		
		PMemberDTO member =dao.pmemberLogin(id, pw);
		
		

		if(member != null) {
			System.out.println(id+"가 로그인");
			
			HttpSession session = request.getSession();
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