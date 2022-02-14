package com.pplus.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.RecVideoDAO;
import com.pplus.model.RecVideoDTO;
import com.pplus.model.VideoDAO;
import com.pplus.model.VideoDTO;

@WebServlet("/VideointCon")
public class VideointCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String num = request.getParameter("num");
		
		int video_num = Integer.parseInt(num);
		
		VideoDAO videoDao =new VideoDAO();
		RecVideoDAO recvideoDao = new RecVideoDAO();
		
		VideoDTO video=videoDao.videoSelect(video_num);
		RecVideoDTO recvideo = recvideoDao.recVideoSelect(video_num);
		
		HttpSession session =request.getSession();
		session.setAttribute("video", video);
		session.setAttribute("recvideo", recvideo);
		response.sendRedirect("videoint.jsp");
	
	} 

}
