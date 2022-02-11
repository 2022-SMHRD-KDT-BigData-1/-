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
<form action="editorIndexCon.do" method="post">
		<table border="1">
			<tr>
				<td>
					NO
				</td>
				<td>
					에디터 이름
				</td>
				<td>
					선택
				</td>
			</tr>
			<tr>
				<c:forEach var="i" items="${sessionScope.editorlist }">
				<td>
					<input value="${i.editor_num }" style="display: none;" name="num">
					<input value="${i.member_nick }" style="display: none;" name="nick">
					${i.editor_num }
				</td>
				<td>
					${i.editor_title }
				</td>
				<td>
					<input type="submit" value="확인">
				</td>
				</c:forEach>
			</tr>
		</table>
	</form>
</body>
</html>