<%@page import="com.pplus.model.TodoDTO"%>
<%@page import="com.pplus.model.DiaryDTO"%>
<%@page import="com.pplus.model.TodoDAO"%>
<%@page import="com.pplus.model.DiaryDAO"%>
<%@page import="com.pplus.model.EditorDAO"%>
<%@page import="com.pplus.model.EditorDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pplus.model.DayplanDAO"%>
<%@page import="com.pplus.model.DayplanDTO"%>
<%@page import="com.pplus.model.PMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
PMemberDTO member = (PMemberDTO) session.getAttribute("member");
String nick = member.getMember_nick();
int num = (Integer) request.getAttribute("dayplan_num");
DayplanDTO dayplan = new DayplanDTO();
DayplanDAO dayplanDao = new DayplanDAO();
dayplan = dayplanDao.dayplanSelect(nick, num);

EditorDAO editorDao = new EditorDAO();
DiaryDAO diaryDao = new DiaryDAO();
TodoDAO todoDao = new TodoDAO(); 
ArrayList<EditorDTO> editorlist = editorDao.editorDayplanSelectAll(nick, num);
ArrayList<DiaryDTO> diarylist = diaryDao.diaryDayplanSelectAll(nick, num);
ArrayList<TodoDTO> todolist = todoDao.todoDayplanSelectAll(nick, num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>일정제목 : ${dayplan.dayplan_title }</p>
	<p>일정날짜 : ${dayplan.dayplan_date }</p>
	<p>닉네임 : ${dayplan.member_nick }</p>
	<c:choose>
		<c:when test="${!empty editorlist }">
				<table>
					<tr>
						<c:forEach var="editor" items="${editorlist }">
							<td>
							<p>${editor.editor_title }</p>
							<p>${editor.editor_content }</p>
							<p>${editor.editor_date }</p>
							</td>
						</c:forEach>
					</tr>
				</table>
		</c:when>
	</c:choose>
	<a href="editor.jsp">에디터 등록</a>
	<br>
	<c:choose>
		<c:when test="${!empty todolist }">
				<table>
					<tr>
						<c:forEach var="todo" items="${todolist }">
							<td>
							<p>${todo.todo_title }</p>
							<p>${todo.todo_content }</p>
							<p>${todo.todo_date }</p>
							</td>
						</c:forEach>
					</tr>
				</table>
		</c:when>
	</c:choose>
	<a href="todo.jsp">할 일 등록</a>
	<br>
	<c:choose>
		<c:when test="${!empty diarylist }">
				<table>
					<tr>
						<c:forEach var="diary" items="${diarylist }">
							<td>
							<p>${diary.diary_title }</p>
							<p>${diary.diary_content }</p>
							<p>${diary.diary_date }</p>
							</td>
						</c:forEach>
					</tr>
				</table>
		</c:when>
	</c:choose>
	<a href="diary.jsp">일기 등록</a>
	<br>


</body>
</html>