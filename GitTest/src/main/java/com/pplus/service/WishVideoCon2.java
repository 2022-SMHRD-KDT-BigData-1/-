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

import com.pplus.model.PMemberDTO;
import com.pplus.model.RecBookDAO;
import com.pplus.model.RecBookDTO;
import com.pplus.model.RecVideoDAO;
import com.pplus.model.RecVideoDTO;

/**
 * Servlet implementation class WishVideoCon2
 */
@WebServlet("/WishVideoCon2")
public class WishVideoCon2 implements iPCommand {
	

	
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		  request.setCharacterEncoding("utf-8");
	      response.setContentType("text/html; charset=utf-8");
	      HttpSession session = request.getSession();
	      PrintWriter out =response.getWriter();
		
			int num = Integer.parseInt(request.getParameter("num"));
			int recvideonum=Integer.parseInt(request.getParameter("recvideonum"));
			
			if(recvideonum == 0) {
				recvideonum = 1;
			}else {
				recvideonum = 0;
			}
			
			PMemberDTO member =(PMemberDTO) session.getAttribute("member");
			RecVideoDAO recvideoDao = new RecVideoDAO();	
			int cnt = recvideoDao.recVideoWish(member.getMember_nick(),recvideonum, num);
			
			 
			if(cnt > 0) {
				
				ArrayList<RecVideoDTO> recvideolist = recvideoDao.recVideoSelectAll(member);
				RecVideoDTO recvideo = recvideoDao.recVideoSelect(num,member);
				
				session.setAttribute("recvideolist", recvideolist);
				session.setAttribute("recvideo", recvideo);
				
				response.sendRedirect("videoint.jsp");
				
			}else {
				out.print("<script>");
				out.print("alert('wishlist ����� �����ϼ̽��ϴ�.');");
				out.print("location.href='videoint.jsp';");
				out.print("</script>");
			}
		
	}

}
