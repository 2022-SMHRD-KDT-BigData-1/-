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
	
	<c:set value="0" var="j" />
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
			<c:forEach var="i" items="${sessionScope.editorlist }">
				<tr>
					<td>
						<input value="${i.editor_num }" style="display: none;" name="num">
						<input value="${i.member_nick }" style="display: none;" name="nick">
						${j = j + 1}
					</td>
					<td>
						${i.editor_title }
					</td>
					<td>
						<a href="EditorIndexCon.do?num=${i.editor_num}&nick=${i.member_nick}"><input type="submit" value="확인"></a>
					</td>
				</tr>
			</c:forEach>
		</table>

</body>
</html>