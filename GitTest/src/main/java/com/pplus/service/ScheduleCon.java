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

import com.pplus.model.AchieveDAO;
import com.pplus.model.AchieveDTO;
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
		
		String bookTitle = request.getParameter("book_title");
		String title = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String day = request.getParameter("day");
		int book_num = Integer.parseInt(request.getParameter("book_num"));
		int book_page = Integer.parseInt(request.getParameter("book_page"));
		int page = book_page / Integer.parseInt(day);
		System.out.println(bookTitle);
		System.out.println(book_page);
		System.out.println(book_num);
		
		
		//book안에 데이터들을 session형태로 받기
		PMemberDTO member = (PMemberDTO) session.getAttribute("member");
		ScheduleDAO dao = new ScheduleDAO();
		System.out.println(member.getMember_nick());
		
		
		
		int cnt = dao.scheduleSet(new ScheduleDTO(0, title, start, day, end, page, null, member.getMember_nick(), book_num,
				bookTitle, book_page));
	
		
		if(cnt > 0) {
			System.out.println("스케줄 제목" + title);
			System.out.println("책 제목");
			
		 	ArrayList<ScheduleDTO> schedulelist = dao.scheduleSelectAll(member.getMember_nick());
			session.setAttribute("schedulelist", schedulelist);
			response.sendRedirect("pmain.jsp");
			// 우선 메인 페이지로 가게 해놓았습니다. 메인페이지가 아니라 다른곳으로 가게 할거면 바꿔냐 합니다
		}else {
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('스케줄 등록을 실패하셨습니다.');");
			out.print("location.href='pmain.jsp';");
			out.print("</script>");
		}
		
	}

}
