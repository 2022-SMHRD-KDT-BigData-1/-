<%@page import="javax.websocket.Session"%>
<%@page import="com.pplus.model.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<img src="${book.book_img }">
	<p>${book.book_title }</p>
	<p>${book.book_price }</p>
	<p>${book.book_author }</p>
	<p>${book.book_publisher }</p>
	<p>${book.book_description }</p>
	<p>${book.book_page }</p>
	<p>${book.book_pubdate }</p>
	<p>${book.book_isbn }</p>
	<button onclick="goBack()">앞쪽 페이지로</button>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>
</body>
</html>