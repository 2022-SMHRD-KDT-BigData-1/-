package com.pplus.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("*.do")
public class PFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, iPCommand> map;
	
	@Override
	public void init() throws ServletException {

		map = new HashMap<String, iPCommand>();
		map.put("/PLoginCon.do", new PLoginCon());
		map.put("/PJoinCon.do", new PJoinCon()); 
		map.put("/PTypeCon.do", new PTypeCon());
		map.put("/PUpdateCon.do", new PUpdateCon());
		map.put("/PDeleteCon.do", new PDeleteCon());
		map.put("/ScheduleCon.do", new ScheduleCon());
		map.put("/SearchedBook.do", new SearchedBook());
		map.put("/IdCheck.do", new IdCheck());
		map.put("/NickCheck.do", new NickCheck()); 
		map.put("/WishCon.do",new WishCon());
		map.put("/WishCon2.do",new WishCon2());
		map.put("/EditorCon.do", new EditorCon());
		map.put("/ScheduleIndexCon.do", new ScheduleIndexCon());
		map.put("/EditorIndexCon.do", new EditorIndexCon());
		map.put("/DiaryCon.do", new DiaryCon());
		map.put("/TodoCon.do", new TodoCon());
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		System.out.println(command);
		
		iPCommand com = map.get(command);
		System.out.println(com);
		com.execute(request, response);
	}
}
