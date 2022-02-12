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
	<form action="DiaryIndexCon.do" method="post">
	<c:set value="0" var="j" />
		<table border="1">
			<tr>
				<td>
					NO
				</td>
				<td>
					일기 제목
				</td>
				<td>
					선택
				</td>
			</tr>
			<c:forEach var="i" items="${sessionScope.diarylist }">
				<tr>
					<td>
						<input value="${i.diary_num }" style="display: none;" name="num">
						<input value="${i.member_nick }" style="display: none;" name="nick">
						${j += 1}
					</td>
					<td>
						${i.diary_title }
					</td>
					<td>
						<input type="submit" value="확인">
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>