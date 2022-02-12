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

		<table border="1">
		<c:set value="0" var="j" />
			<tr>
				<td>
					NO
				</td>
				<td>
					스케줄 이름
				</td>
				<td>
					시작 날 ~ 끝나는 날
				</td>
				<td>
					책 이름
				</td>
				<td>
					하루 학습 분량
				</td>
				<td>
					달성룰
				</td>
				<td>
					선택
				</td>
			</tr>
			<c:forEach var="i" items="${sessionScope.schedulelist }">
				<tr>
					<td>
						<input value="${i.schedule_num }" style="display: none;" name="num">
						<input value="${i.member_nick }" style="display: none;" name="nick">
						${j = j + 1 }
					</td>
					<td>
						${i.schedule_name }
					</td>
					<td>
						${i.schedule_start } ~  ${i.schedule_end }
					</td>
					<td>
						${i.book_title }
					</td>
					<td>
						${i.schedule_day_page }
					</td>
					<td>
						
					</td>
					<td>
						<a href="ScheduleIndexCon.do?num=${i.schedule_num}&nick=${i.member_nick}"><input type="submit" value="확인"></a>
						<a href="ScheduleDelete.do?num=${i.schedule_num}&nick=${i.member_nick}"><input type="submit" value="수정/삭제"></a>
					</td>
				</tr>
			</c:forEach>
		</table>
	
</body>
</html>