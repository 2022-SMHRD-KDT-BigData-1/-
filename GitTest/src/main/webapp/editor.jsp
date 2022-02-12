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
	<form action="" method="post">
		<table border="1">
		
			<tr>
				<td>
					제목
				</td>
				<td>
					${sessionScope.editor.editor_title } 
				</td>
				
			</tr>
				<tr>
					<td>
						내용
					</td>
					<td>
						${sessionScope.editor.editor_content }
					</td>
				</tr>
		
		</table>
	</form>
</body>
</html>