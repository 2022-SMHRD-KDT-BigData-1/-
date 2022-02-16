<%@page import="com.pplus.model.PMemberDTO"%>
<%@page import="javax.websocket.Session"%>
<%@page import="com.pplus.model.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
BookDTO book = (BookDTO) session.getAttribute("book");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<c:choose>
		<c:when test="${empty member }">
			<img src="${book.book_img }">
				<p>${book.book_title }</p>
				<p>${book.book_price }</p>
				<p>${book.book_author }</p>
				<p>${book.book_publisher }</p>
				<p>${book.book_description }</p>
				<p>${book.book_page }</p>
				<p>${book.book_pubdate }</p>
				<p>${book.book_isbn }</p>
		</c:when>
		<c:otherwise>
			<c:choose>
				<c:when test="${empty member.getUser_type1()} ">
					<img src="${book.book_img }">
					<p>${book.book_title }</p>
					<p>${book.book_price }</p>
					<p>${book.book_author }</p>
					<p>${book.book_publisher }</p>
					<p>${book.book_description }</p>
					<p>${book.book_page }</p>
					<p>${book.book_pubdate }</p>
					<p>${book.book_isbn }</p>
				</c:when>
				<c:otherwise>
				<img src="${book.book_img }">
					<c:choose>
						<c:when test="${recbook.contents_cnt == 1 }">
							<a href="WishCon2.do?num=${book.book_num}&recbooknum=1">
							<button type="button"><img src="heart1.png" width="20"></button>
							</a>
						</c:when>
						<c:otherwise>
							<a href="WishCon2.do?num=${book.book_num}&recbooknum=0">
							<button type="button"><img src="heart0.png" width="20"></button>
							</a>
						</c:otherwise>
					</c:choose>
					
					<p>${book.book_title }</p>
					<p>${book.book_price }</p>
					<p>${book.book_author }</p>
					<p>${book.book_publisher }</p>
					<p>${book.book_description }</p>
					<p>${book.book_page }</p>
					<p>${book.book_pubdate }</p>
					<p>${book.book_isbn }</p>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
		
	</c:choose>
		

	<button onclick="goBack()">앞쪽 페이지로</button>
	<script>
		function goBack() {
			location.href='pmain.jsp';
		}
	</script>
</body>
</html>