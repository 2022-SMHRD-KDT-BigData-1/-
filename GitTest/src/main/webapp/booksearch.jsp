<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<table width="800px">
		<form action="/SearchedBook.do">
			<select name="f">
				<option value="title">제목</option>
				<option value="author">저자</option>
			</select>
			<input type="text" name="booksearch">
			<input type="submit" value="검색">
		</form>
	</table>
</body>
</html>