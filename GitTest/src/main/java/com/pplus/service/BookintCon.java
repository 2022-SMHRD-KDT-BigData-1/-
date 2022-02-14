package com.pplus.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.BookDAO;
import com.pplus.model.BookDTO;
import com.pplus.model.RecBookDAO;
import com.pplus.model.RecBookDTO;

@WebServlet("/BookintCon")
public class BookintCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String num = request.getParameter("num"); 
	
		int book_num = Integer.parseInt(num);
		
		BookDAO bookDao =new BookDAO();
		RecBookDAO recbookDAO = new RecBookDAO();
		
		BookDTO book=bookDao.bookSelect(book_num);
		RecBookDTO recbook = recbookDAO.recBookSelect(book_num);
		
		HttpSession session =request.getSession();
		session.setAttribute("book", book);
		session.setAttribute("recbook", recbook);
		response.sendRedirect("bookint.jsp");
	}
}
