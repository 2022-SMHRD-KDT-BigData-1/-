<%@page import="com.pplus.model.BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	
		<form action="SearchedBook.do" method="post">
			<select name="keyWord">
				<option value="book_title">제목</option>
				<option value="book_author">저자</option>
			</select>
			<input type="text" name="searchWord">
			<input type="submit" value="검색">
		</form>
		<table border="1">
			<tr>
				<td>
					제목
				</td>
				<td>
					저자
				</td>
			</tr>
			
				<c:forEach var="i" items="${requestScope.books }">
				<tr>
					<td>
						<a href="javascript:sendBookValues('${i.book_title}, ${i.book_num}, ${i.book_page }')">
						${i.book_title }
						</a>
					</td>
					<td>
						${i.book_author }
					</td>
				</tr>
				</c:forEach>
		</table>
		<script type="text/javascript">
			function sendBookValues(name,num,page) {
				opener.setBookValues(name,num,page);
				window.close();
			}		
		</script>
	
</body>
</html>