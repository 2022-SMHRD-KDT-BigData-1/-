<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.RecBookDTO"%>
<%@page import="com.pplus.model.RecBookDAO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");
RecBookDAO recBookDao = new RecBookDAO();
ArrayList<RecBookDTO> wishlist = (ArrayList<RecBookDTO>) recBookDao.recBookWishSelectAll(member.getMember_nick());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><h3>도서위시리스트 목록</h3>
<ol>
	<c:forEach var="wish" items="${wishlist }">
		<td>
			<li>
			<a href="BookintCon?num=${wish.book_num }"> 
				<img src="${wish.book_img}" width="80">
			</a>
			<button onclick="location.href='scheduleset.jsp?num=${wish.book_num}&title=${wish.book_title }&page=${wish.book_page }'">스케줄 등록</button>
			
			</li>
		</td>
	</c:forEach>
</ol>
</body>
</html>