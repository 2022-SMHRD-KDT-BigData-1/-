<%@page import="com.pplus.model.BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("UTF-8");

//페이지 번호
int pageNum = 0;
if(request.getParameter("page") == null){
	pageNum = 1;
}else{
	pageNum = Integer.parseInt(request.getParameter("page"));
}
//한 페이지에 나타낼 리스트 변수 선언
int pageList = 4;

//검색어
String keyWord = request.getParameter("keyWord");
String searchWord = request.getParameter("searchWord");

//글 목록 전체 가져오기
BookDAO dao = BookDAO.getInstance(); // Dao 정보 가져오기
ArrayList<BookDTO> boards = dao.getBoardSearch(pageNum, pageList, keyWord, searchWord);

//검색 전체  list count
int count = dao.getCount(keyWord, searchWord);

//page count
int pageCount = (int)Math.ceil((double)count / pageList); //ceil은 올림함수
%>
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